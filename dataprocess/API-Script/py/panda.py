import json
jsonFile = open('results.json')
data = json.load(jsonFile)
print("count:"+str(len(data['results'])))
for obj in data['results']:
    print(obj['parsed_code'])
    print("Block With smell **begin**")
    print(obj['parsed_smell'])
    print("Block With smell **end**")
    print(obj['smell'])
    print("----------")

# Closing file
jsonFile.close()