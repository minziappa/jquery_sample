<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Reflow Table</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Reflow Tables lay the table data horizontally until it reaches a minimum size, then all rows are grouped together in a vertical stack with the corresponding labels.</p>
    <p>In this example we have used the well-known Northwind sample database. Below is a selection from the "Customers" table.</p>
    <p>Try to resize the width of your browser window, to see the effect.</p>
    <table data-role="table" class="ui-responsive">
      <thead>
        <tr>
          <th>CustomerID</th>
          <th>CustomerName</th>
          <th>ContactName</th>
          <th>Address</th>
          <th>City</th>
          <th>PostalCode</th>
          <th>Country</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Alfreds Futterkiste</td>
          <td>Maria Anders</td>
          <td>Obere Str. 57</td>
          <td>Berlin</td>
          <td>12209</td>
          <td>Germany</td>
        </tr>
        <tr>
          <td>2</td>
          <td>Antonio Moreno Taquería</td>
          <td>Antonio Moreno</td>
          <td>Mataderos 2312</td>
          <td>México D.F.</td>
          <td>05023</td>
          <td>Mexico</td>
        </tr>
        <tr>
          <td>3</td>
          <td>Around the Horn</td>
          <td>Thomas Hardy</td>
          <td>120 Hanover Sq.</td>
          <td>London</td>
          <td>WA1 1DP</td>
          <td>UK</td>
        </tr>
        <tr>
          <td>4</td>
          <td>Berglunds snabbköp</td>
          <td>Christina Berglund</td>
          <td>Berguvsvägen 8</td>
          <td>Luleå</td>
          <td>S-958 22</td>
          <td>Sweden</td>
        </tr>
      </tbody>
    </table>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>