<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<form>
Select your favorite browser:
<select id="myList" onchange="myFunction()">
  <option></option>
  <option>Google Chrome</option>
  <option>Firefox</option>  
  <option>Internet Explorer</option>
  <option>Safari</option>
  <option>Opera</option>
</select>
<p>Your favorite browser is: <input type="text" id="demo" size="20"></p>
</form>

<script>
function myFunction() {
    var mylist = document.getElementById("myList");
    document.getElementById("demo").value = mylist.options[mylist.selectedIndex].text;
}
</script>

</@layout.myLayout>