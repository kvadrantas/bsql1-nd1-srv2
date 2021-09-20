// IMPORTS 
import {readdir} from "fs/promises";

// *****************************************************************************
// EXPRESS WEBSERVER IMPORT
// MAIN/DEFAULT WEB SERVER PARAMETERS
import express from "express";
const app = express();
const PORT = 2000;    // Sets default website port
app.listen(PORT, () => {
  console.log(`Example app listening at http://localhost:${PORT}`);
});
app.use(express.static('./', {    // Like "Default Document" on ISS
  index: ["index.html"]
}));

// GET FILE LIST IN FOLDER 
const files = await readdir('./sql-nd');


// READ FILE CONTENT FROM FILE
let fileContent;

import fs from 'fs/promises';
async function calll(id) {
  try {
    return await fs.readFile(`./sql-nd/${id}`, {encoding: "UTF-8"});
  }
  catch(error) {
    console.log('KLAIDA: ', error);
  }
}



// FILE CONTENT EXPORT IN JSON
app.get('/json/fileContent:id', async (req, res) => {
    fileContent = await calll(req.params.id.slice(1));
    console.log(req.params.id);
    res.set('Content-Type', 'application/json'); 
    res.send(JSON.stringify(fileContent));
});

// FILE LIST EXPORT IN JSON 
app.get('/json/files', (req, res) => {
  res.set('Content-Type', 'application/json');
  res.send(JSON.stringify(files))
  res.status(204).end();
});