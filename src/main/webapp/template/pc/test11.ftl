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

/*
 * Change the modal size.
 */
@media screen and (min-width: 768px) {
	#myModal .modal-dialog  {width:900px;}
}

</style>

<script>
/*
 * Add a input element which is inputed by user
 */
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

	  var inputHtml = '<input type="text" name="aname" value="" onkeyup="autoSearch('+ (trNum - 1) +');"/>';
	  var selectHtml = '<select name="state"><option value="1">A</option><option value="2">B</option><option value="3">C</option></select>';
	  var buttonHtml = '<button type="button" onclick=\'removeElement("'+trNum+'")\'>Remove</button>';

	  cell1.setAttribute('width', '30%');

	  cell1.innerHTML = inputHtml,
	  cell2.innerHTML = selectHtml,
	  cell3.innerHTML = buttonHtml;
}

/*
 * Delete a input element which is selected by user
 */
function removeElement(trNum) {

	  var d = document.getElementById('t01');
	  d.deleteRow(trNum);

	  var numi = document.getElementById('theValue');
	  var num = numi.value - 1;
	  numi.value = num;

	  // Reset numbers of TR tag.
	  resetId("t01");
}

/*
 * Order the number on TR of the table
 */
function resetId(tableName) {

	  var table = document.getElementById(tableName);
	  var tr = table.getElementsByTagName("tr");
	  var rows = tr.length - 1;

	  for(i=0; i < rows; i++) {
		  tr[i+1].id = i+1;
		  table.rows[i+1].cells[2].innerHTML = '<button type="button" onclick=\'removeElement("'+(i+1)+'")\'>Remove</button>';
	  }
}

/*
 * Make the table on the Modal for confirming the data.
 */
function confirmData() {

	  if(!validateForm()) {
		  console.log(">>1>>");
		  return;
	  }

	  // Call the modal
	  $(window).ready(function(){
	  	$('#myModal').modal('show')
	  });

      var cntElements = document.getElementById('theValue');
      var cnt = cntElements.value;

      var table1 = document.getElementById("t01");
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

/*
 * Check the validity of the data inputed.
 */
function validateForm() {

	var inputs = document.getElementsByName("aname");
	// the button to add a row on the table.
	var addRow = document.getElementById("addRow");
	if(inputs.length == 0) {
		  addRow.focus();
		  addRow.style.border = "1px solid red";
			return false;
	} else {
		  addRow.style.border = "";
	}

	var cntInput = inputs.length;

	var isError = true;
	for (i=0; i < cntInput; i++) {
	    var x = inputs[i].value;
	    console.log(">>3>>" + x.length);
	    if (x==null || x=="" || x.length > 10) {
	    	if(isError) {
		        inputs[i].focus();
		        inputs[i].scrollIntoView();
	    	}
	        inputs[i].style.border = "1px solid red";
	        isError = false;
	    } else {
	    	inputs[i].style.border = "";
	    }
	}
	var state = document.getElementsByName("state");
	var cntState = state.length;
	for (i=0; i < cntState; i++) {
	    var x = state[i].value;
	    console.log(">>4>>" + x.length);
	    if (x==null || x=="" || x=="0") {
	    	if(isError) {
	    		state[i].focus();
	    		state[i].scrollIntoView();
	    	}
	    	state[i].style.border = "1px solid red";
	        isError = false;
	    } else {
	    	state[i].style.border = "";
	    }
	}

	return isError;
}

function deleteTr() {

	var table = document.getElementById("t02");
	var tableRows = table.getElementsByTagName('tr');

	for(var i = 1; i < tableRows.length; i++){
		tableRows[i].parentNode.removeChild(tableRows[i]);
		i--;
	}

}

function submitform() {
  document.myForm.submit();
}

function captureReturnKey(e) {
    if(e.keyCode==13 && e.srcElement.type != 'textarea')
    return false;
} 

function autoSearch(num) {

	console.log("1");
	$(document).ready(function() {
		console.log("2");

        $.ajax({
            type: 'GET',
            url: 'http://localhost:9000/ajax/ajaxGet',
            contentType: "application/json",
            dataType: "json",
            data: 'body={ "text" : "' + $('form').find('input[name=aname]:eq(' + num + ')').val() + '"}',
            cache: false,
            success: function(data, textStatus, jqXHR) {
                $('form').find('input[name=aname]:eq(' + num + ')').val(data.aaa);
            },
            error: function(xhr, status) {
            	console.log(xhr.responseText);
            	//alert(xhr.responseText);
            }
        });

	    console.log("4");
	});
}

</script>

<script>
function repoFormatResult(repo) {
   var markup = '<div class="row-fluid">' +
      '<div class="span2"><img src="' + repo.owner.avatar_url + '" /></div>' +
      '<div class="span10">' +
         '<div class="row-fluid">' +
            '<div class="span6">' + repo.full_name + '</div>' +
            '<div class="span3"><i class="fa fa-code-fork"></i> ' + repo.forks_count + '</div>' +
            '<div class="span3"><i class="fa fa-star"></i> ' + repo.stargazers_count + '</div>' +
         '</div>';

   if (repo.description) {
      markup += '<div>' + repo.description + '</div>';
   }

   markup += '</div></div>';

   return markup;
}

function repoFormatSelection(repo) {
   return repo.full_name;
}
</script>


<script id="script_e7">
$(document).ready(function() {
$("#e7").select2({
    placeholder: "Search for a repository",
    minimumInputLength: 3,
    ajax: {
        url: "https://api.github.com/search/repositories",
        dataType: 'json',
        quietMillis: 250,
        data: function (term, page) { // page is the one-based page number tracked by Select2
            return {
                q: term, //search term
                page: page // page number
            };
        },
        results: function (data, page) {
            var more = (page * 30) < data.total_count; // whether or not there are more results available

            // notice we return the value of more so Select2 knows if more results can be loaded
            return { results: data.items, more: more };
        }
    },
    formatResult: repoFormatResult, // omitted for brevity, see the source of this page
    formatSelection: repoFormatSelection, // omitted for brevity, see the source of this page
    dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller
    escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results
});
});
</script>

<button onclick="confirmData()">Check the validation</button>
<br/><br/>
<button type="button" id="addRow" onclick="addElement();">Add Some Elements</button>

<div id="enquete"></div>
<form name="myForm" action="/pc/comfirm" method="post" onkeydown="return captureReturnKey(event)">
	<input type="hidden" name="cnt" value="1" id="theValue" autocomplete="off" />
	<table id="t01">
	<tr>
	  <th>First Name</th>
	  <th>State</th>
	  <th>Button</th>
	</tr>
	<tr id="1">
		<!-- <td width="30%"><input type="text" name="aname" value="" style="border: 1px solid gray;" onkeyup="autoSearch(0);"></td> -->
		<td width="30%"><input type="hidden" class="bigdrop" id="e7" style="width:500px"/></td>
		<td><select name="state"><option value="0"> </option><option value="1">A</option><option value="2">B</option><option value="3">C</option></select></td>
		<td><button type="button" onclick="removeElement(1)">Remove</button></td>
	</tr>
	</table>
</form>

<!-- Button trigger modal -->
<button type="button" onclick="return confirmData();" class="btn btn-primary btn-lg" data-toggle="modal">
  Modal Demo
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
        <button type="button" class="btn btn-primary" onclick="javascript: submitform();">Save changes</button>
      </div>
    </div>
  </div>
</div>

</@layout.myLayout>