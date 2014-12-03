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

window.onload = function(){
	var cnt = document.getElementById('theValue');
	for(i=0; i < cnt; i++) {
		addElement("${name}");
	}
}

function addElement(name) {

	  var ni = document.getElementById('enquete');
	  var numi = document.getElementById('theValue');
	  var num = (document.getElementById('theValue').value -1)+ 2;

	  // Save the increase number.
	  numi.value = num;

	  // Create a table
	  var table = document.getElementById("t01");

	  // Create a row
	  console.log(">>>>" + numi.value);
	  var row = table.insertRow(numi.value);
	  var trNum = num;
	  row.setAttribute('id', trNum);

	  // Create cells
	  var cell1 = row.insertCell(0);
	  var cell2 = row.insertCell(1); 
	  var cell3 = row.insertCell(2);

	  var inputHtml = '<input type="text" name="name" value="'+ name +'">';
	  var selectHtml = '<select name="state"><option value="1">A</option><option value="2">B</option><option value="3">C</option></select>';
	  var buttonHtml = '<button type="button" onclick=\'removeElement("'+trNum+'")\'>Remove</button>';

	  cell1.setAttribute('width', '30%');

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
		  table.rows[i+1].cells[2].innerHTML = '<button type="button" onclick=\'removeElement("'+(i+1)+'")\'>Delete</button>';
	  }
	}
</script>

// You have to same the increase number

<br/><br/>
<button type="button" onclick="addElement('');">Add Some Elements</button>

<div id="enquete"></div>

<form name="myForm" action="/sample/comfirm" method="post">
<input type="hidden" name="cnt" value="${cnt?if_exists}" id="theValue" autocomplete="off" />
	<table id="t01">
	<tr>
	  <th>First Name</th>
	  <th>State</th>
	  <th>Button</th>
	</tr>
	<tr id="1">
		<td width="30%"><input type="text" name="name" value=""></td>
		<td><select name="state"><option value="1">A</option><option value="2">B</option><option value="3">C</option></select></td>
		<td><button type="button" onclick="removeElement(1)">Remove</button></td>
	</tr>
	</table>
	<input type="submit" value="Submit">
</form>

<script>
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    if (x==null || x=="") {
        alert("First name must be filled out");
        return false;
    }

}
</script>

</@layout.myLayout>