<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th	{
    background-color: black;
    color: white;
}
</style>

<script>
function addElement() {

	  var ni = document.getElementById('myDiv');
	  var numi = document.getElementById('theValue');
	  var num = (document.getElementById('theValue').value -1)+ 2;

	  // Save the increase number.
	  numi.value = num;

	  // Create a table
	  var table = document.getElementById("t01");

	  // Create a row
	  var row = table.insertRow(numi.value);
	  var trNum = num;
	  row.setAttribute('id', trNum);

	  // Create cells
	  var cell1 = row.insertCell(0);
	  var cell2 = row.insertCell(1); 
	  var cell3 = row.insertCell(2);

	  var inputHtml = '<input type="text" name="meetingName">';
	  var selectHtml = '<select><option value="1">☀</option><option value="2">☁</option><option value="3">☂</option></select>';
	  var buttonHtml = '<button type="button" onclick=\'removeElement("'+trNum+'")\'>Click Me!</button>';

	  cell1.innerHTML = inputHtml,
	  cell2.innerHTML = selectHtml,
	  cell3.innerHTML = buttonHtml;
	}

function removeElement(trNum) {

	  var d = document.getElementById('t01');
	  d.deleteRow(trNum);

	  var numi = document.getElementById('theValue');
	  var num = numi.value - 1;
	  numi.value = num;

	  // Reset numbers of TR tag.
	  resetId("t01");
	}

function resetId(tableName) {

	  var table = document.getElementById(tableName);
	  var tr = table.getElementsByTagName("tr");
	  var rows = tr.length - 1;

	  for(i=0; i < rows; i++) {
		  tr[i+1].id = i+1;
		  table.rows[i+1].cells[2].innerHTML = '<button type="button" onclick=\'removeElement("'+(i+1)+'")\'>Click Me!</button>';
	  }
}
</script>

// You have to same the increase number
<input type="hidden" value="0" id="theValue" />

<p><a href="javascript:;" onclick="addElement();">Add Some Elements</a></p>

<div id="myDiv"></div>

<table id="t01">
<tr>
  <th>First Name</th>
  <th>Last Name</th>
  <th>Points</th>
</tr>
</table>

</@layout.myLayout>