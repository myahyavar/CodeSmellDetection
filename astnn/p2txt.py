import pickle as pickle
f = open('data/programs.pkl', 'rb')   # 'r' for reading; can be omitted
mydict = pickle.load(f)         # load file content as mydict
f.close()
print(mydict)
mydict.to_csv(r'textfiles/programs.txt', header=None, index=None, sep=' ', mode='a')
