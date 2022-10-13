import pickle as pickle
f = open('data/ast.pkl', 'rb')   # 'r' for reading; can be omitted
mydict = pickle.load(f)         # load file content as mydict
f.close()
print(mydict)
mydict.to_csv(r'textfiles/ast.txt', header=None, index=None, sep=' ', mode='a')