<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous" />

    <title>Banclan | The Declan Bank</title>
  </head>
  <body>
    <div class="jumbotron text-center">
      <h1>Banclan</h1>
      <p>The Declan Company's Bank</p>
    </div>

    <div class="container">
      <h3>Register for a bank account</h3>
      <h5>Limited time offer - put in as much money as you want!</h5>
      <form action="./newaccount.jsp" method="GET">
        <table>
          <tr>
            <td>Initial Balance (dollars)</td>
            <td><input type="text" name="startBalance" /></td>
          </tr>
          <tr>
            <td>Interest Rate (percent)</td>
            <td><input type="text" name="interestRate" /></td>
          </tr>
          <tr>
            <td>Interest Period (days)</td>
            <td><input type="text" name="interestPeriod" /></td>
          </tr>
          <tr>
            <td><input type="submit" value="Submit" /></td>
          </tr>
        </table>
      </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js" integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em" crossorigin="anonymous"></script>
  </body>
</html>
