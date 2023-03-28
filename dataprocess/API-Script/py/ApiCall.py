import json
import os
import csv
import re
# Opening JSON file
jsonFile = open('data-new.json')
results = []
# returns JSON object as
# a dictionary
data = json.load(jsonFile)
# Iterating through the json
# list
sonar_output = []
for obj in data['issues']:
    input_string = obj['component']
    file_path = input_string
    # Split the file path into root and extension
    root, ext = os.path.splitext(file_path)
    # Get the file name from the root
    file_name = os.path.basename(root)
    startLine = obj['textRange']['startLine']
    endLine = obj['textRange']['endLine']
    message = obj['message']
    sonar_output_dict = {"file": file_name, "startLine": startLine, "endLine": endLine, "message": message}
    sonar_output.append(sonar_output_dict)
# Closing file
jsonFile.close()
print("Smell Count: " + str(len(sonar_output)))
for obj in sonar_output:
    print(obj)
    startLineNum = obj['startLine']
    endLineNum = obj['endLine']
    message = obj['message']
    try:
        filePath = "C:\\Users\\kaana\\Documents\\GitHub\\BAP\\wholeCodes\\" + obj['file'] + ".csv"

        with open(filePath, newline='') as csvfile:
            # Create a CSV reader object
            reader = csv.reader(csvfile)
            # Iterate over the rows in the CSV file
            for row in reader:
                # Process the row
                parsed_code = row[0]
                lines = row[0].split('\n')
                parsed_smell = ""
                for line in lines:
                    match = re.search(r"\d+", line)
                    #print(line)
                    if match:
                        number = int(match.group())
                        #print(number)  # Output: 6
                        line_number = int(number)+1
                        if startLineNum <= line_number <= endLineNum:
                            parsed_smell += "\n"+line
                    else:
                        print("No number found.")
                print(parsed_smell)
                print("---")
                # Define a dictionary to represent a JSON object
                final_obj = {"parsed_code": parsed_code, "parsed_smell": parsed_smell, "smell": message}
                if parsed_code != "" or parsed_smell != "" or message != "":
                    results.append(final_obj)
                # Open a file with write permission and write the JSON data to it

    except FileNotFoundError:
        #Handle the case where the file is not found
        print("File not found.")
final_json = {"results": results}
with open("results.json", "w") as outfile:
    json.dump(final_json, outfile)


