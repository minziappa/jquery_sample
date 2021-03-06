<#import "layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<link rel="stylesheet" href="css/box.css">

<script>
function changeColor(x) {
	if(x.className == "box1") {
	    x.style.backgroundColor = "#385b7f";
	} else if(x.className == "box2") {
	    x.style.backgroundColor = "#34a834";
	} else if(x.className == "box3") {
	    x.style.backgroundColor = "#d8a131";
	} else if(x.className == "box4") {
	    x.style.backgroundColor = "#c63d3d";
	}
	//x.style.borderWidth = "1px";
}
function normalColor(x) {
	if(x.className == "box1") {
	    x.style.backgroundColor = "#297ACC";
	} else if(x.className == "box2") {
	    x.style.backgroundColor = "#70DB70";
	} else if(x.className == "box3") {
	    x.style.backgroundColor = "#FFCC66";
	} else if(x.className == "box4") {
	    x.style.backgroundColor = "#E64848";
	}
}
</script>

<div class="row">
<div class="col-md-6">
  	<div class="box1" onmouseover="changeColor(this)" onmouseout="normalColor(this)">
  		<a href="/pc" style="color: #ffffff;">
  			<span class="glyphicon glyphicon-user"></span><br/>
  			<span>Mobile</span>
  		</a>
  	</div>
</div>
<div class="col-md-6">
  	<div class="box2" onmouseover="changeColor(this)" onmouseout="normalColor(this)">
  		<a href="/pc"  style="color: #ffffff;">
  			<span class="glyphicon glyphicon-th-list"></span><br/>
  			<span>PC</span>
  		</a>
  	</div> 
</div>
<div class="col-md-6">
  	<div class="box3" onmouseover="changeColor(this)" onmouseout="normalColor(this)">
		<a href="/pc" style="color: #ffffff;">
		<span class="glyphicon glyphicon-floppy-save"></span><br/>
			<span>Home</span>
	</a>
  	</div>
</div>
<div class="col-md-6">
  <div class="box4" onmouseover="changeColor(this)" onmouseout="normalColor(this)">
		<a href="/pc"  style="color: #ffffff;">
			<span class="glyphicon glyphicon-floppy-open"></span><br/>
			<span>About</span>
		</a>
  </div> 
</div>
</div>
</@layout.myLayout>