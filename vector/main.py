import subprocess

MAX_CONTEXTS = 200
SHOW_TOP_CONTEXTS = 10
MAX_PATH_LENGTH = 8
MAX_PATH_WIDTH = 2
JAR_PATH = 'JavaExtractor/JPredict/target/JavaExtractor-0.0.1-SNAPSHOT.jar'
input_filename = 'input.java'

command = ['java', '-cp', JAR_PATH, 'JavaExtractor.App', '--max_path_length',
           str(MAX_PATH_LENGTH), '--max_path_width', str(MAX_PATH_WIDTH), '--file', JAR_PATH, '--no_hash']
process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
out, err = process.communicate()
output = out.decode().splitlines()

if len(output) == 0:
    err = err.decode()
    raise ValueError(err)

htsd = {}
result = []

for i, line in enumerate(output):
        parts = line.rstrip().split(' ')
        method_name = parts[0]
        current_result_line_parts = [method_name]
        contexts = parts[1:]

        for context in contexts[:MAX_CONTEXTS]:
            context_parts = context.split(',')
            context_word1 = context_parts[0]
            context_path = context_parts[1]
            context_word2 = context_parts[2]

            h = 0
            for c in context_path:
                h = (31 * h + ord(c)) & 0xFFFFFFFF
            z = ((h + 0x80000000) & 0xFFFFFFFF) - 0x80000000

            hashed_path = str(z)
            htsd[hashed_path] = context_path
            current_result_line_parts += ['%s,%s,%s' % (context_word1, hashed_path, context_word2)]

        space_padding = ' ' * (MAX_CONTEXTS - len(contexts))
        result_line = ' '.join(current_result_line_parts) + space_padding
        result.append(result_line)
        print(result)
        print(htsd)

#print('Starting interactive prediction...')
#while True:
#    try:
#        predict_lines, hash_to_string_dict = result, htsd
#    except ValueError as e:
#        print(e)
#        continue
