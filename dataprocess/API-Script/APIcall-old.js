
import * as fs from 'fs';

const cols = '"component","startLine","endLine","message"\n';
const csvFile = "./out-2.csv";
try {
  fs.appendFileSync(csvFile, cols);
} catch (err) {
  console.error(err);
}
 function saveAsCSV(component, startLine, endLine, message) {
    const csv = `${component},${startLine},${endLine},${message}\n`;
    try {
      fs.appendFileSync(csvFile, csv);
    } catch (err) {
      console.error(err);
    }
  };
fs.readFile('data-new.json', (err, data) => {
    if (err) throw err;
    let res = JSON.parse(data);
    res["issues"].forEach(element => {
        let lines = element["textRange"];
        console.log(element["component"],"Lines:",lines["startLine"],"<->",lines["endLine"],"Message:",element["message"]);
        saveAsCSV(element["component"],lines["startLine"],lines["endLine"],element["message"]);
      });
});
console.log('This is after the read call');
