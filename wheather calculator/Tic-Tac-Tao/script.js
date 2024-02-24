let currentPlayer = 'X';
let gameBoard = ['', '', '', '', '', '', '', '', ''];
const winConditions = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
];

function makeMove(index) {
    if (gameBoard[index] === '') {
        gameBoard[index] = currentPlayer;
        render();
        if (checkWin(currentPlayer)) {
            document.getElementById('message').innerText = `${currentPlayer} wins!`;
            return;
        }
        if (checkDraw()) {
            document.getElementById('message').innerText = 'It\'s a draw!';
            return;
        }
        currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
    }
}

function checkWin(player) {
    return winConditions.some(condition => {
        return condition.every(index => {
            return gameBoard[index] === player;
        });
    });
}

function checkDraw() {
    return gameBoard.every(cell => {
        return cell !== '';
    });
}

function resetGame() {
    currentPlayer = 'X';
    gameBoard = ['', '', '', '', '', '', '', '', ''];
    document.getElementById('message').innerText = '';
    render();
}

function render() {
    const cells = document.querySelectorAll('.cell');
    cells.forEach((cell, index) => {
        cell.innerText = gameBoard[index];
    });
}
