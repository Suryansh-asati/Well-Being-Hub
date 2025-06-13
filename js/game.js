// script.js
const mazeContainer = document.getElementById("maze-container");
const feedback = document.getElementById("feedback");
let score = 0;
let isGameOver = false;
let mazeLayout = [];
const rows = 10;
const cols = 10;

function generateMaze() {
  mazeLayout = createMaze(rows, cols);
  mazeContainer.innerHTML = ""; // Clear the container
  for (let i = 0; i < rows; i++) {
      const row = document.createElement('tr'); // Correctly creating a row
  for (let j = 0; j < cols; j++) {
     const cell = document.createElement('td');
 cell.classList.add('cell');


  if (mazeLayout[i][j] === "start") cell.classList.add('start');
 else if (mazeLayout[i][j] === "finish") cell.classList.add('finish');
 else if (mazeLayout[i][j] === "obstacle") cell.classList.add('obstacle');
  else if (mazeLayout[i][j] === "positive-thought") cell.classList.add('positive-thought');
      row.appendChild(cell);

  }
      mazeContainer.appendChild(row);
 }

 const cells = document.querySelectorAll(".cell");
    cells.forEach(cell => {

        cell.addEventListener("click", handleCellClick)


});


}


function createMaze(rows, cols) {

    const maze = [];
 for (let i = 0; i < rows; i++) {
   maze.push([]);
 }
 for (let i = 0; i < rows; i++) {
   for (let j = 0; j < cols; j++) {

     if (Math.random() < 0.2) maze[i][j] = "obstacle";

     else if (Math.random()<0.1) maze[i][j]="positive-thought"

       else maze[i][j]="cell"



   }
 }

 maze[0][0] = "start";
 maze[rows - 1][cols - 1] = "finish";
 return maze;

}

function handleCellClick(event) {
    if (isGameOver) return;

const clickedCell = event.target;



  if (clickedCell.classList.contains("obstacle")) {
    feedback.textContent = "Oops, you hit an obstacle. Try again!";
   score -= 5; //update score (make sure this makes sense)



 } else if (clickedCell.classList.contains("positive-thought")) {
    feedback.textContent = "Good job, you found a positive emotion!";
   score += 5; //update score (make sure this makes sense)
   } else if (clickedCell.classList.contains("finish")) {
     feedback.textContent = "Congratulations! You've completed the maze.";
    score += 10; // update score


   isGameOver = true;
   document.getElementById("restart").style.visibility = "visible";

  }
  updateScore(clickedCell)


};


function updateScore(cell) {

document.getElementById("score").textContent = `Score: ${score}`;




}
function restartGame() {
  isGameOver = false;
  score = 0;
  feedback.textContent = "";
  generateMaze();
  document.getElementById("restart").style.visibility = "hidden";

}
generateMaze();

const restartButton = document.getElementById("restart");
restartButton.addEventListener("click", restartGame);