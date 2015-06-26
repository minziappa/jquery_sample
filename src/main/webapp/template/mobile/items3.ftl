<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>My Phonebook</h2>
    <p>In this example, we have used the data-filtertext="fav" on "Adele". This means that you are no longer able to search for the list item "Adele" anymore. You can only find Adele by typing the keywords "f, a, v or fav".)</p>
    <form class="ui-filterable">
      <input id="myFilter" data-type="search">
    </form>
    <ul data-role="listview" data-filter="true" data-input="#myFilter" data-autodividers="true" data-inset="true">
      <li data-filtertext="fav"><a href="#">Adele</a></li>
      <li><a href="#">Agnes</a></li>
      <li><a href="#">Albert</a></li>
      <li><a href="#">Billy</a></li>
      <li><a href="#">Bob</a></li>
      <li><a href="#">Calvin</a></li>
      <li><a href="#">Cameron</a></li>
      <li><a href="#">Chloe</a></li>
      <li><a href="#">Christina</a></li>
      <li><a href="#">Diana</a></li>
      <li><a href="#">Frank</a></li>
      <li><a href="#">Gabriel</a></li>
      <li><a href="#">Glen</a></li>
      <li><a href="#">Ralph</a></li>
      <li><a href="#">Valarie</a></li>
    </ul>
  </div>
</div> 

</@layout.myLayout>