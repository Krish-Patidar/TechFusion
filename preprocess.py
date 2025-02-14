import pandas as pd

def preprocess_input(data):
  
    marital_status_mapping = {'Single': 0, 'Married': 1, 'Divorced': 2}
    data['marital_status'] = data['marital_status'].map(marital_status_mapping)

    data.fillna(0, inplace=True)

    return data
