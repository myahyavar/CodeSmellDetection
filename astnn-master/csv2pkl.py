import pickle
import pandas as pd
df = pd.read_csv('data/results.csv')
df.to_pickle('data/ast.pkl')