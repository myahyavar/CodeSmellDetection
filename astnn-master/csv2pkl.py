import pickle
import pandas as pd
df = pd.read_csv('data/codes.csv')
df.to_pickle('data/ast.pkl')