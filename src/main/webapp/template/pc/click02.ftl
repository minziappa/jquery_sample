<#import "../layout/pcLayout.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.myLayout>

<script>
function addElement() {
	  var ni = document.getElementById('myDiv');
	  var numi = document.getElementById('theValue');
	  var num = (document.getElementById('theValue').value -1)+ 2;
	  numi.value = num;
	  
	  var newdiv = document.createElement('div');
	  var divIdName = 'my'+num+'Div';
	  newdiv.setAttribute('id',divIdName);
	  newdiv.innerHTML = 'Element Number '+num+' has been added! <a href=\'#\' onclick=\'removeElement("'+divIdName+'")\'>Remove the div "'+divIdName+'"</a>';

	  // newdiv.innerHTML = '<select><option value="1">☀</option><option value="2">☁</option><option value="3">☂</option></select> ';
	  console.log(numi.value);
	  ni.appendChild(newdiv);
	}

function removeElement(divNum) {
	  var d = document.getElementById('myDiv');
	  var olddiv = document.getElementById(divNum);
	  d.removeChild(olddiv);
	}
</script>

<input type="hidden" value="0" id="theValue" />
<p><a href="javascript:;" onclick="addElement();">Add Some Elements</a></p>
<div id="myDiv"> </div>

</@layout.myLayout>