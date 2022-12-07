> functions to be parsed/extracted are in CSharpExtractor/Extractor/data/ 
> functions to be parsed/extracted can be in different classes 
  or same class or on multiple directories under data/
> extractor ignores non-function stuff so no need to clear the code files
> IMPORTANT: you should give the path of the functions to be parsed/extracted (data path) MANUALLY.
  you can change the data path in Program.cs at line 29

> extracted ASTS are in bin\Debug\netcoreappX.x\results.txt
> result file has a title, you can change it at Program.cs at line 49
> result can me hashed or not hashed, opotionally 
  you can change it in Extractor.cs at line 38

> extractor.py is opotional file for python scripting