import pickle as pkl
import pandas as pd

with open("data/programs.pkl", "rb") as f:
    object = pkl.load(f)

df = pd.DataFrame(object)
df.to_csv(r'textfiles/programs.csv')
