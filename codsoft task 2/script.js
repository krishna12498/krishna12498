function clearScreen() {
    document.getElementById("result").value = "";
}

function display(value) {
    document.getElementById("result").value += value;
}

function calculate() {
    var expression = document.getElementById("result").value;
    var result = eval(expression); // Avoid using eval() in production
    document.getElementById("result").value = result;
}
