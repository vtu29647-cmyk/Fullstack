let questions = [];
let current = 0;
let score = 0;
let timer;
let timeLeft = 30;
let selectedAnswer = null;

/* ================= LOGIN ================= */

function login() {
  const name = document.getElementById("name").value;
  const email = document.getElementById("email").value;

  if (!name || !email) {
    alert("Please enter all fields");
    return;
  }

  fetch("/login", {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({ name, email })
  })
    .then(res => res.json())
    .then(() => {
      localStorage.setItem("name", name);
      window.location.href = "subjects.html";
    })
    .catch(err => {
      console.log(err);
      alert("Server error during login");
    });
}

/* ================= LOGOUT ================= */

function logout() {
  localStorage.clear();
  window.location.href = "login.html";
}

/* ================= START SUBJECT ================= */

function startSubject(id, name) {
  localStorage.setItem("subjectId", id);
  localStorage.setItem("subject", name);
  window.location.href = "quiz.html";
}

/* ================= LOAD QUESTIONS ================= */

if (document.getElementById("question")) {
  const subjectId = localStorage.getItem("subjectId");

  fetch("/questions/" + subjectId)
    .then(res => res.json())
    .then(data => {
      questions = data;
      console.log("Questions Loaded:", questions);
      showQuestion();
    })
    .catch(err => {
      console.log(err);
      alert("Error loading questions");
    });
}

/* ================= TIMER ================= */

function startTimer() {
  timeLeft = 30;

  document.getElementById("timer").innerText =
    "Time Left: " + timeLeft + "s";

  timer = setInterval(() => {
    timeLeft--;

    document.getElementById("timer").innerText =
      "Time Left: " + timeLeft + "s";

    if (timeLeft <= 0) {
      clearInterval(timer);
      nextQuestion();
    }
  }, 1000);
}

/* ================= SHOW QUESTION ================= */

function showQuestion() {
  clearInterval(timer);
  startTimer();

  selectedAnswer = null;

  const q = questions[current];

  document.getElementById("questionNumber").innerText =
    "Question " + (current + 1) + " / " + questions.length;

  document.getElementById("question").innerText = q.question;

  const optionsDiv = document.getElementById("options");
  optionsDiv.innerHTML = "";

  for (let i = 1; i <= 4; i++) {
    const btn = document.createElement("button");
    btn.innerText = q["option" + i];

    btn.onclick = () => selectOption(i);

    optionsDiv.appendChild(btn);
  }

  document.getElementById("nextBtn").classList.add("hidden");
}

/* ================= SELECT OPTION ================= */

function selectOption(ans) {
  selectedAnswer = ans;

  const buttons = document.querySelectorAll("#options button");

  buttons.forEach(btn => btn.classList.remove("selected"));

  buttons[ans - 1].classList.add("selected");

  document.getElementById("nextBtn").classList.remove("hidden");
}

/* ================= NEXT QUESTION ================= */

function nextQuestion() {
  clearInterval(timer);

  if (selectedAnswer !== null) {
    const q = questions[current];

    const selectedText = q["option" + selectedAnswer];

    if (selectedText === q.answer) {
      score++;
    }
  }

  current++;

  if (current < questions.length) {
    showQuestion();
  } else {
    finishQuiz();
  }
}

/* ================= FINISH QUIZ ================= */

function finishQuiz() {
  clearInterval(timer);

  let percent = (score / questions.length) * 100;
  percent = percent.toFixed(2);

  const container = document.querySelector(".quiz-card");

  container.innerHTML = `
    <h2>Quiz Completed 🎉</h2>
    <h3>Your Score: ${percent}%</h3>
  `;

  if (percent >= 75) {
    container.innerHTML += `
      <button onclick="generateCertificate('${percent}')">
        Download Certificate
      </button>
      <br><br>
      <button onclick="goHome()">Back to Subjects</button>
    `;
  } else {
    container.innerHTML += `
      <p style="color:red;">You did not qualify (Minimum 75%)</p>
      <button onclick="goHome()">Back to Subjects</button>
    `;
  }
}

function goHome() {
  window.location.href = "subjects.html";
}

/* ================= CERTIFICATE ================= */

function generateCertificate(scorePercent) {
  const { jsPDF } = window.jspdf;

  const doc = new jsPDF("p", "mm", "a4");

  const name = localStorage.getItem("name");
  const subject = localStorage.getItem("subject");
  const date = new Date().toLocaleDateString();

  const pageWidth = doc.internal.pageSize.getWidth();

  doc.setLineWidth(2);
  doc.rect(10, 10, pageWidth - 20, 277);

  doc.setFontSize(26);
  doc.text("CERTIFICATE OF ACHIEVEMENT", pageWidth / 2, 40, null, null, "center");

  doc.setFontSize(16);
  doc.text("This is to certify that", pageWidth / 2, 70, null, null, "center");

  doc.setFontSize(24);
  doc.text(name, pageWidth / 2, 95, null, null, "center");

  doc.line(60, 100, pageWidth - 60, 100);

  doc.setFontSize(16);
  doc.text("has successfully completed the quiz", pageWidth / 2, 120, null, null, "center");

  doc.setFontSize(20);
  doc.text(subject, pageWidth / 2, 140, null, null, "center");

  doc.setFontSize(16);
  doc.text("Score: " + scorePercent + "%", pageWidth / 2, 165, null, null, "center");

  doc.setFontSize(14);
  doc.text("Date: " + date, 20, 250);

  doc.text("Authorized Signature", pageWidth - 70, 250);

  doc.line(pageWidth - 80, 245, pageWidth - 20, 245);

  doc.save("VTU_QUIZ_Certificate.pdf");
}