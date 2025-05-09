function showPaymentDetails() {
    const paymentType = document.getElementById("paymentType").value;
    const paymentDetailsContainer = document.getElementById("paymentDetails");

    // Reset payment details container
    paymentDetailsContainer.innerHTML = "";

    // Display specific details based on the payment type
    switch (paymentType) {
        case "upi":
            paymentDetailsContainer.innerHTML = `
                <label for="upiNumber">UPI Number:</label>
                <input type="text" id="upiNumber" required>
            `;
            break;
        case "creditCard":
            paymentDetailsContainer.innerHTML = `
                <label for="creditCardNumber">Credit Card Number:</label>
                <input type="text" id="creditCardNumber" required>
            `;
            break;
        case "phonePe":
            paymentDetailsContainer.innerHTML = `
                <label for="phonePeNumber">PhonePe Number:</label>
                <input type="text" id="phonePeNumber" required>
            `;
            break;
        case "gpay":
            paymentDetailsContainer.innerHTML = `
                <label for="gpayNumber">Google Pay (GPay) Number:</label>
                <input type="text" id="gpayNumber" required>
            `;
            break;
        case "paytm":
            paymentDetailsContainer.innerHTML = `
                <label for="paytmNumber">Paytm Number:</label>
                <input type="text" id="paytmNumber" required>
            `;
            break;
        default:
            break;
    }

    // Show the payment details container
    paymentDetailsContainer.style.display = "block";
}

function submitForm() {
    // Perform form submission logic here

    // For demonstration purposes, let's log the form data
    const customerName = document.getElementById("customerName").value;
    const paymentType = document.getElementById("paymentType").value;
    let paymentDetails;

    switch (paymentType) {
        case "upi":
            paymentDetails = document.getElementById("upiNumber").value;
            break;
        case "creditCard":
            paymentDetails = document.getElementById("creditCardNumber").value;
            break;
        case "phonePe":
            paymentDetails = document.getElementById("phonePeNumber").value;
            break;
        case "gpay":
            paymentDetails = document.getElementById("gpayNumber").value;
            break;
        case "paytm":
            paymentDetails = document.getElementById("paytmNumber").value;
            break;
        default:
            break;
    }

    console.log("Customer Name:", customerName);
    console.log("Payment Type:", paymentType);
    console.log("Payment Details:", paymentDetails);

    // Prevent actual form submission for this example
    return false;
}