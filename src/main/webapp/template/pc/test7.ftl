<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script>
function autoSearch() {

	console.log("1");
	$(document).ready(function() {
		console.log("2");
	    $('#new-status form').keyup(function(e) {
	        e.preventDefault();
	        console.log("3");
	        $.ajax({
	            type: 'POST',
	            url: 'http://localhost:9000/pc/test',
	            contentType: "application/json",
	            dataType: "json",
	            data: "{ 'text' : '" + $('#new-status').find('input').val() + "'}",
	            success: function(data, textStatus, jqXHR) {
	            	// {"aaa":"ddd"}, Don't do this like this {'aaa':'ddd'}
	            	alert(">>>" + data.aaa); // >>>ddd
	                $('#statuses').append('<li>' + data.aaa + '</li>');
	                $('#new-status').find('textarea').val('');
	            },
	            error: function(xhr, status) {
	            	console.log(xhr.responseText);
	            	//alert(xhr.responseText);
	            }
	        });
	    });
	    console.log("4");
	});
}

function test() {
	console.log(">>")
}

</script>

<div id="new-status">
<h2>Input Search</h2>
<form>
<input type="text" name="search" onkeyup="autoSearch();"><br>
</form>
</div>

<div id="statuses">
<h2>Results</h2>
<ul></ul>
</div>

</@layout.myLayout>