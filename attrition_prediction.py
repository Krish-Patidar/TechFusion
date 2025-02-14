import sys
import joblib
import mysql.connector
import pandas as pd
from mysql.connector import Error

def preprocess_data(employee_data):
    try:
        # Calculate YearsSinceJoining based on DOJ
        employee_data['years_at_company'] = (pd.Timestamp.now() - pd.to_datetime(employee_data['doj'])).days // 365

        # Map MaritalStatus to numerical values
        marital_status_map = {'Married': 1, 'Single': 0, 'Divorced': 2}
        employee_data['marital_status'] = marital_status_map.get(employee_data['marital_status'], -1)

        # Remove 'doj' as it's no longer needed
        employee_data.pop('doj')
        
        # Prepare the data for prediction
        prediction_data = pd.DataFrame([[
            employee_data['age'],
            employee_data['experience'],
            employee_data['years_at_company'],
            employee_data['job_satisfaction'],
            employee_data['marital_status']
        ]], columns=['age', 'experience', 'years_at_company', 'job_satisfaction', 'marital_status'])

        return prediction_data
    except KeyError as e:
        print(f"Error in preprocessing: Missing column {e}")
        sys.exit(1)
    except Exception as e:
        print(f"Error during preprocessing: {e}")
        sys.exit(1)

try:
    # Parse employee ID from command line argument
    employee_id = sys.argv[1]
    print(f"Received Employee ID: {employee_id}", flush=True)

    # Load the model
    model = joblib.load('models/attrition_model.pkl')
    print("Model loaded successfully.", flush=True)

    # Database connection setup
    connection = mysql.connector.connect(
        host='localhost',         # Replace with your MySQL host
        user='root',              # Replace with your MySQL username
        password='krrish@001#400', # Replace with your MySQL password
        database='manager'        # Replace with your database name
    )
    
    if connection.is_connected():
        print("Connected to MySQL database successfully.")
    
    # Query employee data for the given employee ID
    query = f"SELECT age, experience, doj, years_at_company, job_satisfaction, marital_status, attrition FROM employees WHERE id = {employee_id}"
    cursor = connection.cursor(dictionary=True)
    cursor.execute(query)
    employee_data = cursor.fetchone()

    if employee_data:
        print("Employee data fetched successfully.", flush=True)
        
        # Preprocess the data
        prediction_data = preprocess_data(employee_data)

        # Perform prediction
        prediction = model.predict(prediction_data)
        prediction_result = "Attrition" if prediction[0] == 1 else "No Attrition"
        
        print(f"Prediction for Employee ID {employee_id}: {prediction_result}")
    else:
        print(f"Employee ID {employee_id} not found in the database.", flush=True)
    
except mysql.connector.Error as err:
    print(f"Error connecting to MySQL: {err}", flush=True)
except Exception as e:
    print(f"Error: {str(e)}", flush=True)
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection closed.")
