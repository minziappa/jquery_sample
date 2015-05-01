<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<style>
div {
    width: 200px;
    height: 100px;
    border: 1px solid black;
}
</style>

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

<h2>Javascript Picture</h2>
Click the following image.
<p id="demo"></p>
<div onmousemove="myFunction(event)" onmouseout="clearCoor()"></div>

<img draggable="false" id="img01" src="/img/icon.jpg" alt="Smiley face" height="42" width="42"/>

</@layout.myLayout>