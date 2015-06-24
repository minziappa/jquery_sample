<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style>
div {
    width: 200px;
    height: 100px;
    border: 1px solid black;
}

body {
    padding-top: 25px;
	padding-right: 50px;
	padding-bottom: 25px;
	padding-left: 50px;
}
</style>

Click the following image.

<div onmousemove="myFunction(event)" onmouseout="clearCoor()">
<p id="demo"></p>
</div>

<script type="text/javascript">

function myFunction(e) {
    var x = e.clientX;
    var y = e.clientY;
    var coor = "Coordinates: (" + x + "," + y + ")";
    document.getElementById("demo").innerHTML = coor;
}

function clearCoor() {
    document.getElementById("demo").innerHTML = "";
}

</script>

</@layout.myLayout>