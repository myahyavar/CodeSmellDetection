with open("textfiles/programs.txt", "rt") as f:
    data_lines = f.readlines()
import pickle as pkl
with open("textfiles/programs.pkl", "wb") as fd:
    pkl.dump(data_lines, fd)
