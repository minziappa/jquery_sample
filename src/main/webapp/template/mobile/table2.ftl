<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Column Toggle Table</h1>
  </div>
  
  <div data-role="main" class="ui-content">
     <p>The "column toggle table" will hide columns when there is not enough width to display the data.</p>
    <p>In this example we have used the well-known Northwind sample database. Below is a selection from the "Customers" table.</p>
    <h4>Slowly resize the width of your browser window. The layout will adjust itself to fit the "new" width of the browser. OR, you can use the "Columns..." button to choose which column should be hidden or shown.</h4>
    <table data-role="table" data-mode="columntoggle" class="ui-responsive" id="myTable">
      <thead>
        <tr>
          <th data-priority="6">CustomerID</th>
          <th>CustomerName</th>
          <th data-priority="1">ContactName</th>
          <th data-priority="2">Address</th>
          <th data-priority="3">City</th>
          <th data-priority="4">PostalCode</th>
          <th data-priority="5">Country</th>
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