const form = document.getElementById('age-calculator');
const birthdayInput = document.getElementById('birthday');
const resultDiv = document.getElementById('result');

form.addEventListener('submit', (e) => {
  e.preventDefault();
  const birthdate = new Date(birthdayInput.value);
  const today = new Date();
  let age = today.getFullYear() - birthdate.getFullYear();
  const m = today.getMonth() - birthdate.getMonth();
  if (m < 0 || (m === 0 && today.getDate() < birthdate.getDate())) {
    age--;
  }
  resultDiv.textContent = `Your age is: ${age}`;
});