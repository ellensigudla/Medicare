<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
    }
    .payment-options {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }
    .payment-option {
      border: 1px solid #ccc;
      padding: 10px;
      flex: 1;
      margin-right: 10px;
      cursor: pointer;
    }
    .payment-option:last-child {
      margin-right: 0;
    }
    .payment-option:hover {
      background-color: #f0f0f0;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Choose a Payment Option</h1>
    <p>Select a payment method to proceed with your purchase:</p>
    <div class="payment-options">
     <div class="payment-option" onclick="selectPayment('creditCard')">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMHW-75JmMgKB10AAndF9bd7w8S5_eLfyGLg&usqp=CAU" alt="Credit Card">
        <p>Credit Card</p>
      </div>
      <div class="payment-option" onclick="selectPayment('paypal')">
        <img src="https://cdn-icons-png.flaticon.com/512/2504/2504802.png" alt="PayPal">
        <p>PayPal</p>
      </div>
    </div>
    <div id="payment-details"></div>
  </div>

  <script>
    function selectPayment(paymentMethod) {
      const paymentDetails = document.getElementById('payment-details');
      paymentDetails.innerHTML = '';

      if (paymentMethod === 'creditCard') {
        paymentDetails.innerHTML = `
          <h2>Credit Card Payment</h2>
          <form id="creditCardForm">
            <!-- Credit card input fields here -->
            <button type="submit">Pay with Credit Card</button>
          </form>
        `;
      } else if (paymentMethod === 'paypal') {
        paymentDetails.innerHTML = `
          <h2>PayPal Payment</h2>
          <p>Click the button below to proceed with PayPal payment:</p>
          <button onclick="processPayPalPayment()">Pay with PayPal</button>
        `;
      }
    }

    function processPayPalPayment() {
      // Implement PayPal payment processing here
      alert('Your Payment is Succesfull!!');
    }
  </script>
</body>
</html>
