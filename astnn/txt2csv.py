import pandas as pd

read_file = pd.read_csv (r'textfiles/er.txt')
read_file.to_csv (r'data/Rast.csv', index=None,sep="\t")