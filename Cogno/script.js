function calculateBMI() {
    const weight = parseFloat(document.getElementById("weight").value);
    const height = parseFloat(document.getElementById("height").value) / 100; // Convert cm to meters
  
    const bmi = weight / (height * height);
  
    const bmiCategory = getBMICategory(bmi);
  
    const result = document.getElementById("result");
    result.textContent = `Your BMI is ${bmi.toFixed(2)}. You are in the ${bmiCategory} category.`;
  }
  
  function getBMICategory(bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 25) {
      return "Normal weight";
    } else if (bmi < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
  