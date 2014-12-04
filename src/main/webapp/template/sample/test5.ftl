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

	  var ni = document.getElementById('enquete');
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

	  var inputHtml = '<input type="text" name="aname" value=""/>';
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
		  table.rows[i+1].cells[2].innerHTML = '<button type="button" onclick=\'removeElement("'+(i+1)+'")\'>Remove</button>';
	  }
}

function getCellDataFromTable(tableName) {

	  var table = document.getElementById(tableName);
	  var cells = table.getElementsByTagName('td');

	  for (var i=0,len=cells.length; i<len; i++) {
		  console.log(cells[i].innerHTML);
		  /*
		  cells[i].onclick = function(){
		        console.log(this.innerHTML);
		        // if you know it's going to be numeric:
		        //console.log(parseInt(this.innerHTML),10);
		  }
		  */
	  }

}



function confirmData() {

	  if(!validateForm()) {
		  console.log(">>1>>");
		  return;
	  }
	  console.log(">>2>>");

	  // Call the modal
	  $(window).ready(function(){
	  	$('#myModal').modal('show')
	  });

      var cntElements = document.getElementById('theValue');
      var cnt = cntElements.value;

      var table1 = document.getElementById("t01");
      console.log(" firstChild 1 >>> " + table1.rows[1].cells[0].firstChild.value);
      console.log(" firstChild 2 >>> " + table1.rows[1].cells[1].firstChild.value);
	  // Create a table
	  var table2 = document.getElementById("t02");

	  var inputHtml;
	  var selectHtml;
	  var buttonHtml;
	  for(i=0; i < cnt; i++) {
		  console.log(">>" + i);

		  var row1 = table1.rows[i+1];
		  var row2 = table2.insertRow(i+1);

		  inputHtml = row1.cells[0].firstChild.value;
		  var selected = row1.cells[1].firstChild.value;
		  if(selected == 1) {
			  selected = "A";
		  } else if(selected == 2) {
			  selected = "B";
		  } else if(selected == 3) {
			  selected = "C";
		  }
		  selectHtml = selected;

		  // Create cells
		  var cell21 = row2.insertCell(0);
		  var cell22 = row2.insertCell(1); 

		  cell21.innerHTML = inputHtml;
		  cell22.innerHTML = selectHtml;
	  }

}

</script>

// You have to same the increase number

<button onclick="confirmData()">Try it</button>
<br/><br/>
<button type="button" onclick="addElement();">Add Some Elements</button>

<div id="enquete"></div>

<form name="myForm" action="/sample/comfirm" onsubmit="return validateForm()" method="post">
<input type="hidden" name="cnt" value="1" id="theValue" autocomplete="off" />
	<table id="t01">
	<tr>
	  <th>First Name</th>
	  <th>State</th>
	  <th>Button</th>
	</tr>
	<tr id="1">
		<td width="30%"><input type="text" name="aname" value=""></td>
		<td><select name="state"><option value="1">A</option><option value="2">B</option><option value="3">C</option></select></td>
		<td><button type="button" onclick="removeElement(1)">Remove</button></td>
	</tr>
	</table>
	<input type="submit" value="Submit">
</form>

<script>
function validateForm() {

	var inputs = document.getElementsByName("aname");
	console.log("-->" + inputs.length);

	// var cntInput = document.forms["myForm"]["aname"].length;
	var cntInput = inputs.length;

	
	for (i=0; i < cntInput; i++) {
	    var x = inputs[i].value;
	    console.log(">>3>>" + x.length);
	    if (x==null || x=="" || x.length > 10) {
	    	
	    	
	        inputs[i].focus();
	        inputs[i].scrollIntoView();

	        inputs[i].style.border = "1px solid red";
	        
	        return false;
	    }
	}
	
	return true;

}
</script>

<script>
function deleteTr() {

	var table = document.getElementById("t02");
	var tableRows = table.getElementsByTagName('tr');

	console.log(" >>> " + tableRows.length);
	for(var i = 1; i < tableRows.length; i++){
		tableRows[i].parentNode.removeChild(tableRows[i]);
		i--;
	}

}
</script>

<!-- Button trigger modal -->
<button type="button" onclick="return confirmData();" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Modal Demo
</button>
  <button type="button" onclick="return confirmData();" class="btn btn-primary btn-lg" data-toggle="modal">
  Modal Demo2
</button>

<a class="btn" data-toggle="modal" onclick="return confirmData();">Launch Modal</a>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      
      <div class="modal-body">
	  	<table id="t02">
	  		<tr>
			  <th>First Name</th>
			  <th>State</th>
			</tr>
		</table>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="deleteTr();">Close</button>
        <button type="button" class="btn btn-primary" onclick="getCellDataFromTable('t02');">Save changes</button>
      </div>
    </div>
  </div>
</div>


</@layout.myLayout>