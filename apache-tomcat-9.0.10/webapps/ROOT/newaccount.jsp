<%@ page import="com.banclan.jsp.BankAccount" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous" />

    <title>Banclan | New Account!</title>
  </head>
  <body>
    <%
      if (request.getParameter("startBalance") != null
        && request.getParameter("interestRate") != null
        && request.getParameter("interestPeriod") != null) {
        BankAccount ba = new BankAccount(
          Double.parseDouble(request.getParameter("startBalance")),
          Double.parseDouble(request.getParameter("interestRate")) * 0.01,  // percent to regular number
          Integer.parseInt(request.getParameter("interestPeriod")) * 24*60*60,  // days to seconds
          0
        );
    %>
    <div class="container">
      <h1>Congratulations, you've made a new account with Banclan!</h1>
      <p>Your balance is <b>$<%= ba.balance %></b></p>
      <p>Your interest rate is <b><%= ba.interestRate * 100 %>%</b></p>
      <p>Your interest period is <b><%= ba.interestPeriod / (60*60*24*365) %> years</b></p>

      <hr />

      <p>The last compound was at <b>t=<%= ba.lastCompound %></b></p>
      <p>In 3 years, there will be <b><%= ba.compounds(3*365*24*60*60) %></b> compounds</p>
      <p>In 3 years, you will earn <b>$<%= ba.interest(ba.compounds(3*365*24*60*60)) %></b> in interest</p>
    </div>
    <%
      } else {
    %>
    <div class="container">
      <h1>Sorry, a new account couldn't be created</h1>
    </div>
    <% } %>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
  </body>
</html>
