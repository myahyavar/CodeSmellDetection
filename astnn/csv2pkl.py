import pandas as pd

df = pd.read_csv('textfiles/programs.csv')

print(df.to_string())

df.to_pickle('textfiles/df.pkl')    #to save the dataframe, df to 123.pkl
df1 = pd.read_pickle('/textfiles/df.pkl') #to load 123.pkl back to the dataframe df