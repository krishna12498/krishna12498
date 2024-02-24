function calculateWeather() {
    const temperatureInput = document.getElementById('temperature').value;
    const temperature = parseFloat(temperatureInput);

    if (isNaN(temperature)) {
        alert('Please enter a valid temperature.');
        return;
    }

    let result = '';

    if (temperature < 10) {
        result = 'It\'s cold outside.';
    } else if (temperature >= 10 && temperature <= 25) {
        result = 'It\'s moderate outside.';
    } else {
        result = 'It\'s hot outside.';
    }

    document.getElementById('result').innerText = result;
}
