const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.static("public"));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/public/login.html");
});

/* MYSQL CONNECTION */
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "vel_quiz"
});

db.connect(err => {
  if (err) console.log(err);
  else console.log("MySQL Connected...");
});

/* LOGIN */
app.post("/login", (req, res) => {
  const { name, email } = req.body;

  db.query(
    "INSERT INTO students(name,email) VALUES (?,?)",
    [name, email],
    (err) => {
      if (err) return res.status(500).json(err);
      res.json({ message: "Success" });
    }
  );
});

/* GET QUESTIONS */
app.get("/questions/:id", (req, res) => {
  db.query(
    "SELECT * FROM questions WHERE subject_id=? LIMIT 15",
    [req.params.id],
    (err, result) => {
      if (err) return res.status(500).json(err);
      res.json(result);
    }
  );
});

app.listen(5000, () => {
  console.log("Server running at http://localhost:5000");
});
import nltk
from nltk.stem import WordNetLemmatizer

nltk.download('punkt')
nltk.download('punkt_tab')
nltk.download('wordnet')

text = "unhappy running players"
words = nltk.word_tokenize(text)

lem = WordNetLemmatizer()

for w in words:
    print("Word:", w)
    print("Root:", lem.lemmatize(w))