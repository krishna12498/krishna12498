// Get references to the input field, button, and unordered list
const newTaskInput = document.querySelector('#new-task');
const addTaskButton = document.querySelector('#add-task');
const taskList = document.querySelector('#task-list');

// Add a task when the button is clicked
addTaskButton.addEventListener('click', () => {
  // Create a new list item
  const newTask = document.createElement('li');
  
  // Set the text content of the list item to the value of the input field
  newTask.textContent = newTaskInput.value;
  
  // Clear the input field
  newTaskInput.value = '';
  
  // Append the new task to the unordered list
  taskList.appendChild(newTask);
});