import os

import pandas as pd

class parseground:
    def __init__(self,  ratio, root):
        self.ratio = ratio
        self.root = root
        self.sources = None
        self.train_file_path = None
        self.dev_file_path = None
        self.test_file_path = None
        self.size = None


    def parse_source(self, output_file, option):
        path = self.root + output_file
        if os.path.exists(path) and option is 'existing':
            source = pd.read_pickle(path)
        else:
            from pycparser import c_parser
            parser = c_parser.CParser()
            source = pd.read_pickle(self.root + 'programs.pkl')

            source.columns = ['id', 'code', 'label']
            source['code'] = source['code'].apply(parser.parse)

            source.to_pickle(path)
        self.sources = source
        return source

    def run(self):
        print('parse source code...')
        self.parse_source(output_file='aste.pkl', option='existing')

ppl = parseground('3:1:1', 'textfiles/')
ppl.run()