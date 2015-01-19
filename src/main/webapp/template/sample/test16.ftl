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

<script type="text/javascript">
$(document).ready(function(){

    $('#myTest').on('focus',function() {
    	console.log("a>>>");
        $('#myTest').popover('show');
    });
    $('#myTest').on('focusout',function() {
    	console.log("b>>>");
        $('#myTest').popover('hide');
    });

});
</script>

// You have to same the increase number

<br><br>
<input type="text" id="myTest" name="name" value="">

<br><br><br>

<div id="enquete"></div>

<script>
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    if (x==null || x=="") {
        alert("First name must be filled out");
        return false;
    }

}
</script>
<textarea></textarea>
<script>
	
console.log("time >>> 1");
  var textarea = document.querySelector("textarea");
  var timeout;
  textarea.addEventListener("keyup", function() {
	console.log("time >>> 2");
    clearTimeout(timeout);
    console.log("time >>> 3");
    timeout = setTimeout(function() {
    	console.log("time >>> 4");
      console.log("You stopped typing.");
    }, 1000);
  });
</script>
</@layout.myLayout>