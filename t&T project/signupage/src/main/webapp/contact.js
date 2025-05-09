// contact.js

function submitForm() {
    // Get form values
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const message = document.getElementById('message').value;

    // Validate email format
    if (!isValidEmail(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    // Replace this with your actual form submission logic
    // For demonstration purposes, we'll display a confirmation message
    const confirmationMessage = `Thank you, ${name}! Your message has been submitted.\nWe will get back to you soon.`;
    alert(confirmationMessage);

    // You can also add AJAX request or other logic here

    // Prevents the form from actually submitting
    return false;
}

function isValidEmail(email) {
    // Simple email validation using a regular expression
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}
