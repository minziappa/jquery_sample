<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>A standard list:</h2>
    <ul data-role="listview">
      <li><a href="#">List Item</a></li>
      <li><a href="#">List Item</a></li>
      <li><a href="#">List Item</a></li>
    </ul><br>
    <h2>List with data-inset="true":</h2>
    <ul data-role="listview" data-inset="true">
      <li><a href="#">List Item</a></li>
      <li><a href="#">List Item</a></li>
      <li><a href="#">List Item</a></li>
    </ul>
  </div>
</div> 

</@layout.myLayout>