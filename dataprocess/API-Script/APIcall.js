import * as fs from "fs";
import path from "path";
import * as rle from "readline";
const cols = '"parsed","smell","message"\n';
const csvFile = "./final.csv";
try {
  fs.appendFileSync(csvFile, cols);
} catch (err) {
  console.error(err);
}
function saveAsCSV(parsed, smell, message) {
  const csv = `${parsed},${smell},${message}\n`;
  try {
    fs.appendFileSync(csvFile, csv);
  } catch (err) {
    console.error(err);
  }
}

  fs.readFile("data-new.json", (err, data) => {
    //if (err) throw err;
    let res = JSON.parse(data);
    res["issues"].forEach((element) => {
      let lines = element["textRange"];
      let temp = path.basename(element["component"]);
      let file = temp.slice(0, -3);
      let startLine = lines["startLine"];
      let endLine = lines["endLine"];
      let message = element["message"];
      //console.log(file,"Lines:",startLine,"<->",endLine,"Message:",message); 
      //saveAsCSV(element["component"],lines["startLine"],lines["endLine"],element["message"]);
      const filePath = "C:\\Users\\YAHYA\\Desktop\\Software_Stuff\\LSTM\\DeepLearningPractice\\dataprocess\\wholeCodes\\" + file + ".csv";
if (fs.existsSync(filePath)) {
  const stream = fs.createReadStream(filePath);
  const rl = rle.createInterface({ input: stream });
  let classCode = "";
  let smellCode = "";
  rl.on("line", (row, err) => {
    let str = row.split(",")+"";
    var tmp = str.split(' ');
    var line = tmp[0].toString().replace(/\s+/g, '').replace('"',''); 
    var lineNum = parseInt(line);  
    //console.log(lineNum);
    classCode += '\n'+str;
    if(lineNum >= startLine && lineNum <= endLine){
      //console.log(str)
      smellCode += '\n'+str;
    }
    //data.push();
  });
  rl.on("close", () => {
    if(classCode != "", smellCode != ""){
      saveAsCSV(classCode, smellCode, message);
    }
  });
} else {
  console.error(`File not found: ${filePath}`);
}
    });
  });


console.log("This is after the read call");
