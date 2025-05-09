// bookpage.js

document.getElementById('book-form').addEventListener('submit', function(event) {
    event.preventDefault();

    // Get form values
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const rooms = document.getElementById('rooms').value;
    const adults = document.getElementById('adults').value;
    const children = document.getElementById('children').value;

    // Display an alert with booking details
    alert(`Booking Details:\nName: ${name}\nEmail: ${email}\nRooms: ${rooms}\nAdults: ${adults}\nChildren: ${children}`);

    // Redirect to 'book2.html'
    window.location.href = 'payment.html';
});
