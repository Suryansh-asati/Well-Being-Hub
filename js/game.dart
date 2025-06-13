// script.js

const mazeContainer = document.getElementById("maze-container");
let score = 0;
let currentCell;
let isGameOver=false;

// Function to generate maze cells (improved)
function generateMaze() {
    const mazeSize = 10;
    mazeContainer.innerHTML = ''; // Clear existing maze


// More complex, randomized path
function createMaze(rows, cols) {
   const maze = [];
for (let i = 0; i < rows; i++) {
    const row = [];
for (let j = 0; j < cols; j++) {
row.push( Math.random() < 0.2 ? 'obstacle' : (Math.random()< 0.2? 'positive-thought':'cell') ); // more sophisticated conditions for cells.
}

 maze.push(row);

}
 return maze;


}

    const mazeLayout = createMaze(mazeSize, mazeSize);
    for (let i = 0; i < mazeSize; i++) {
      const row = document.createElement('div');
      for (let j = 0; j < mazeSize; j++) {

         const cellClass = mazeLayout[i][j];
        const cell = document.createElement('div');
        cell.classList.add('cell');


        if (i == 0 && j == 0) {
            cell.classList.add('start');


        }else if (i== mazeSize-1 && j == mazeSize-1) {
            cell.classList.add('finish');

        }
        if (cellClass === "obstacle") {

            cell.classList.add('obstacle');


        }else if (cellClass==="positive-thought"){
            cell.classList.add('positive-thought');

        }

            row.appendChild(cell);

      }


      mazeContainer.appendChild(row);

    }

const cells = document.querySelectorAll(".cell");

cells.forEach(cell => {
    cell.addEventListener("click", handleCellClick);

});


}


function handleCellClick(event){

    const clickedCell = event.target;


 if (clickedCell.classList.contains('finish')) {
     isGameOver=true;
        feedback.textContent = "You've completed the maze! Well done!";

 }

  else if (clickedCell.classList.contains("obstacle")) {


  feedback.textContent = "Ouch, be more mindful. Try again";



    }


 else if (clickedCell.classList.contains("positive-thought")){


  feedback.textContent = "That was a good positive thought!";


    }

 else{

feedback.textContent = "";
    }
    if(isGameOver===true){
        const restartGameButton = document.getElementById("restart");

        restartGameButton.style.visibility="visible"
    }

    updateScore(clickedCell);



}


function updateScore(cell){
    if (cell.classList.contains('positive-thought')) score+=5;


else if (cell.classList.contains('obstacle')){
    score-=5;
}
document.getElementById("score").textContent = `Score: ${score}`;
}




function restartGame(){
    isGameOver=false;
    score = 0;

    feedback.textContent='';
    generateMaze();
    const restartGameButton = document.getElementById("restart");

restartGameButton.style.visibility="hidden" // hides until the game starts or is triggered again


}

generateMaze();
const feedback = document.getElementById("feedback");


document.getElementById("restart").addEventListener("click", restartGame);