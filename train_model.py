import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import joblib
import mysql.connector
from mysql.connector import Error

# Database connection setup
try:
    connection = mysql.connector.connect(
        host='localhost',         # Replace with your MySQL host
        user='root',              # Replace with your MySQL username
        password='krrish@001#400',      # Replace with your MySQL password
        database='manager'    # Replace with your database name
    )

    if connection.is_connected():
        print("Connected to MySQL database successfully.")
except Error as e:
    print(f"Error while connecting to MySQL: {e}")
    exit()

# Query employee data
try:
    query = "SELECT age, experience, doj, years_at_company, job_satisfaction, marital_status, attrition FROM employees"
    cursor = connection.cursor(dictionary=True)
    cursor.execute(query)
    records = cursor.fetchall()

    # Convert fetched data to a DataFrame
    data = pd.DataFrame(records)
    print("Employee data fetched successfully.")
except Exception as e:
    print(f"Error while fetching data from MySQL: {e}")
    exit()

# Close the connection
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection closed.")

# Preprocess the data
try:
    # Calculate YearsSinceJoining based on DOJ
    data['years_at_company'] = (pd.Timestamp.now() - pd.to_datetime(data['doj'])).dt.days // 365

    # Map MaritalStatus to numerical values
    data['marital_status'] = data['marital_status'].map({'Married': 1, 'Single': 0, 'Divorced': 2})

    # Drop unused columns
    data = data.drop(columns=['doj'])
except KeyError as e:
    print(f"Error in preprocessing: Missing column {e}")
    exit()

# Features and target
X = data.drop(columns=['attrition'])  # Replace 'attrition' with the target column name
y = data['attrition']

# Split the dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)

# Hyperparameter tuning with GridSearchCV
param_grid = {
    'n_estimators': [100, 200],
    'max_depth': [10, 20, None],
    'min_samples_split': [2, 5, 10],
    'min_samples_leaf': [1, 2, 4],
}
rf = RandomForestClassifier(random_state=42)
grid_search = GridSearchCV(estimator=rf, param_grid=param_grid, cv=5, scoring='accuracy', verbose=2, n_jobs=-1)
grid_search.fit(X_train, y_train)

# Best parameters
print("Best parameters found by GridSearchCV:")
print(grid_search.best_params_)

# Train the best model
best_rf = grid_search.best_estimator_
best_rf.fit(X_train, y_train)

# Save the model
model_path = r"C:\TechFusion\TechFusion\src\main\python\models\attrition_model.pkl"
joblib.dump(best_rf, model_path)
print(f"Model saved as '{model_path}'")

# Evaluate the model
y_pred = best_rf.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
conf_matrix = confusion_matrix(y_test, y_pred)
class_report = classification_report(y_test, y_pred)

print(f"Model Accuracy: {accuracy:.2f}")
print("Confusion Matrix:")
print(conf_matrix)
print("Classification Report:")
print(class_report)
