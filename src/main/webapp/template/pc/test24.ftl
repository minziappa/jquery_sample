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

/*
 * Input for searching something.
 */

.input-results .input-searching {
    background: #f4f4f4;
    display: list-item;
}

.input-spinner input {
   	background: url('../../img/spinner.gif') no-repeat 100% 5px;
		background-color: white;

		height: auto !important;
		padding: 4px 20px 4px 5px;
		margin: 0;
		outline: 0;
		font-family: sans-serif;
		font-size: 1em;

		border: 1px solid #aaa;
			-moz-border-radius: 0;
        		border-radius: 0;

			-moz-box-shadow: none;
						box-shadow: none;
}

.input-search input {

	// background: url('../../img/search.png') no-repeat 100% -22px, -webkit-gradient(linear, left bottom, left top, color-stop(0.85, white), color-stop(0.99, #eeeeee));
    background: url('../../img/search.png') no-repeat 100% 5px;
	background-color: white;

    height: auto !important;
    padding: 4px 20px 4px 5px;
    margin: 0;
    outline: 0;
    font-family: sans-serif;
    font-size: 1em;

    border: 1px solid #aaa;
       -moz-border-radius: 0;
            border-radius: 0;

       -moz-box-shadow: none;
            box-shadow: none;
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

      var divStartHtml = '<div id="search'+ (trNum - 1) +'" class="input-search">';
      var divEndHtml = '</div>';
      var selectOptionHtml = '<select name="hostOption" style="width:85px; margin-bottom: 0;" onchange="checkStatus(this,' + (trNum-1) + ');"><option value="personal">input</option><option value="take_turns">take turns</option><option value="unknown">unknown</option></select>';
      var inputHtml = '<input type="text" name="aname" value="" autocomplete="off" autocorrect="off" autocapitilize="off" spellcheck="false" style="border: 1px solid gray;" size="37%" data-toggle="popover" data-trigger="manual" data-placement="top" title="Popover title" data-content="Default popover" onclick="releasPopover(this);" onkeyup="interverKeystroke(event,'+ (trNum - 1) +');">';
	  var selectHtml = '<select name="state"><option value="0"> </option><option value="1">A</option><option value="2">B</option><option value="3">C</option></select>';
	  var buttonHtml = '<button type="button" onclick=\'removeElement("'+trNum+'")\'>Remove</button>';

	  cell1.setAttribute('width', '50%');
	  cell2.setAttribute('width', '30%');
	  cell3.setAttribute('width', '20%');

	  cell1.innerHTML = divStartHtml + selectOptionHtml + inputHtml + divEndHtml,
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
 * Set to read only
 */
function setStatusInput(value, inputTag) {
	if (value == "take_turns" || value == "unknown") {
			inputTag.readOnly = true;
	}
}

/*
 * Set the status from other action
 */
function setStatusSelect(value) {

	if (value == "take_turns") {
		return '<option value="personal">Input</option><option value="take_turns" selected>take turns</option><option value="unknown">unknown</option>';
	} else if(value == "personal") {
		return '<option value="personal" selected>Input</option><option value="take_turns">take turns</option><option value="unknown">unknown</option>';
	} else {
		return '<option value="personal">Input</option><option value="take_turns">take turns</option><option value="unknown" selected>unknown</option>';
	}
}

/*
 * Order the number on TR of the table
 */
function resetId(tableName) {

	  var table = document.getElementById(tableName);
	  var tr = table.getElementsByTagName("tr");
	  var rows = tr.length - 1;

	  var tagDivStart;
	  var tagDivEnd;
	  var inputHtml;

	  for(i=0; i < rows; i++) {
		  tr[i+1].id = i+1;

	      tagDivStart = '<div id="search'+ i +'" class="input-search">';
	      tagDivEnd = '</div>';

	      // cells[0] - first column
		  var selectTag = table.rows[i+1].cells[0].getElementsByTagName("select");
		  var selectValue = selectTag[0].value;
		  var inputTag = table.rows[i+1].cells[0].getElementsByTagName("input");
		  var inputValue = inputTag[0].value;

	      tagSelect = '<select name="hostOption" style="width:85px; margin-bottom: 0;" onchange="checkStatus(this,' + i + ');">' + setStatusSelect(selectValue) + '</select>';
	      tagInput = '<input type="text" name="aname" value="' + inputValue + '" autocomplete="off" autocorrect="off" autocapitilize="off" spellcheck="false" style="border: 1px solid gray;" size="37%" data-toggle="popover" data-trigger="manual" data-placement="top" title="Popover title" data-content="Default popover" onclick="releasPopover(this);" onkeyup="interverKeystroke(event,'+ i +');">';
	      table.rows[i+1].cells[0].innerHTML = tagDivStart + tagSelect + tagInput + tagDivEnd;
		  setStatusInput(selectValue, inputTag[0]);

		  table.rows[i+1].cells[2].innerHTML = '<button type="button" onclick=\'removeElement("'+(i+1)+'")\'>Remove</button>';
	  }
}

/*
 * Make the table on the Modal for confirming the data.
 */
function confirmData() {

	  if(!validateForm()) {
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
	  var inputTag;
	  
	  var selectHtml;
	  var buttonHtml;
	  for(i=0; i < cnt; i++) {

		  var row1 = table1.rows[i+1];
		  var row2 = table2.insertRow(i+1);

		  inputTag = row1.cells[0].getElementsByTagName("input");
		  inputHtml = inputTag[0].value;

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

	// how to convert javascript object to jquery object
	var $inputs = $(inputs);
	
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
	var blnPopover = true;

	var isError = true;
	for (i=0; i < cntInput; i++) {
	    var x = inputs[i].value;
	    var $inputs = $(inputs[i]);
	    if (x==null || x=="" || x.length > 10) {
	    	if(isError) {
		        inputs[i].focus();
		        inputs[i].scrollIntoView();
    			if(blnPopover) {
    				$inputs.popover('show');
		    		blnPopover = false;
    			}
	    	}
	        inputs[i].style.border = "1px solid red";

	        $inputs.popover('show');

	        isError = false;
	    } else {
	    	inputs[i].style.border = "";
	    }
	}
	var state = document.getElementsByName("state");
	var cntState = state.length;
	for (i=0; i < cntState; i++) {
	    var x = state[i].value;
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


function exceptionKey(e) {
    if(e.keyCode==37 || e.keyCode==38 || e.keyCode==39 || e.keyCode==40) {
    	
        return false;    	
    }
    return true;
}

var timeout;
function interverKeystroke(e, num) {
	clearTimeout(timeout);
	timeout = setTimeout(function() {
	  console.log("You stopped typing.");
	  autoSearch(e, num);
	}, 500);
}

var ajaxLastNum = 0;

function autoSearch(e, num) {

	if(!exceptionKey(e)) {
		return false;
	}

	$(document).ready(function() {

		var $inputAname = $('form').find('input[name=aname]:eq(' + num + ')');

		if($inputAname.val().length < 2) {
			return false;
		}

		$inputAname.popover('destroy');
		var availableTags = [];
		var currentAjaxNum = ajaxLastNum;

        $.ajax({
            type: 'POST',
            url: 'http://localhost:9000/ajax/ajaxGet2',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            dataType: "json",
            data: 'body={ "text" : "' + $inputAname.val() + '"}',
            cache: false,
            beforeSend: function(xhr, settings) {

            	ajaxLastNum = ajaxLastNum + 1;

            	$('#search' + num).removeClass('input-search');
            	$('#search' + num).addClass('input-spinner');
            },
            success: function(data, textStatus, request) {

            	$('#search' + num).removeClass('input-spinner');
            	$('#search' + num).addClass('input-search');

            	if(currentAjaxNum == ajaxLastNum - 1) {
                	
                	if(!isBlank(data.aaa)) {
                		console.log(data.aaa);
                		availableTags = data.aaa;
                		$('#statuses').html('<li>' + data.aaa + '</li>');
                	}
                	var availableNames = [];

                	for (var i in availableTags) {
                		availableNames[i] = availableTags[i].map1;
                	}
                	
                	console.log(availableNames);

                	$inputAname.autocomplete();

                    // Close if already visible
                	if ($inputAname.autocomplete("widget").is(":visible")) {
                		$inputAname.autocomplete("close");
                		return false;
                	}

                	$inputAname.autocomplete({source: availableTags, 
                		autoFocus: true, 
                		minLength: 0,
                		create: function( event, ui ) {
                			console.log(" create >> ");
                		    if($(this).autocomplete('widget').is(':visible')) {
                		    	console.log(" create >> visible");
                		    } else {
                		    	console.log(" create >> desable");
                		    }
                			return true;
                		},
                		close: function( event, ui ) {
                			console.log(" close >> desable");
                		},
                		open: function( event, ui ) {
                			console.log(" open >> ");
                			return true;
                		},
                		search: function( event, ui ) {
                			console.log(" search >> ");
                			return true;
                		},
                		focus: function( event, ui ) {
                			console.log(" focus >> " + ui.item.value);
                			$inputAname.val( ui.item.name );
                			// $(this).autocomplete("search");
                			return false;
                		},
                		select: function( event, ui ) {
                			console.log(" select >> " + ui.item.map1);
                			$inputAname.val( ui.item.map1 );
                			return false;
                		}
                	})
                	.data( "ui-autocomplete" )._renderItem = function( ul, item ) {
                        return $( "<li>" ).attr( "data-value", item.map1 )
                        .append( item.map1 + ", " + item.map2 + '<img id="img1" src="/img/spinner.gif" height="80" width="80">' )
                        .appendTo( ul );
                    };

    	            // fire search event
                	$inputAname.autocomplete("search", "");
                	$inputAname.focus();

            	}

            },
            complete: function(xhr, textStatus) {
            	//$inputAname.attr('disabled', false);


            },
            error: function(xhr, status) {
            	console.log(xhr.responseText);
            	//alert(xhr.responseText);
            }
        });

	    console.log("4");
	});
}

function isEmpty(str) {
    return (!str || 0 === str.length);
}
function isBlank(str) {
    return (!str || /^\s*$/.test(str));
}

/*
 * Selecting a option.
 */
function checkStatus(e, num) {
		var eHost = document.getElementsByName('aname')[num];
		if (e.value == "take_turns") {
			eHost.value = "Take turns";
			eHost.readOnly = true;
		} else if(e.value == "unknown") {
			eHost.value = "Unknown";
			eHost.readOnly = true;
		} else {
			eHost.value = "";
			eHost.readOnly = false;
		}
}

function releasPopover(event) {
	$jevent = $(event);
	$jevent.popover('destroy');
}

</script>
<br/><br/>
<button type="button" id="addRow" onclick="addElement();">Add Some Elements</button>
<button onclick="confirmData()">Check the validation</button>
<div>
<ul id="statuses"></ul>
</div>
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
		<td width="50%">
			<div id="search0" class="input-search">
				<select name="hostOption" style="width:85px; margin-bottom: 0;" onchange="checkStatus(this,0);">
					<option value="personal">Input</option><option value="take_turns">Take turns</option><option value="unknown">Unknown</option>
				</select>
				<input type="text" name="aname" value="" autocomplete="off" autocorrect="off" autocapitilize="off" 
					spellcheck="false" style="border: 1px solid gray;" size="37%" data-toggle="popover" data-trigger="manual" 
						data-placement="top" title="Popover title" data-content="Default popover" onclick="releasPopover(this);" onkeydown="interverKeystroke(event, 0);">
			</div>

		</td>

		<td width="30%"><select name="state"><option value="0"> </option><option value="1">A</option><option value="2">B</option><option value="3">C</option></select></td>
		<td width="20%"><button type="button" onclick="removeElement(1)">Remove</button></td>
	</tr>
	</table>
</form>

<!-- Button trigger modal  -->
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