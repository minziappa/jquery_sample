<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>List Icons:</h2>
    <ul data-role="listview" data-inset="true">    
      <li><a href="#">Default is right arrow</a></li>
      <li data-icon="plus"><a href="#">data-icon="plus"</a></li>
      <li data-icon="minus"><a href="#">data-icon="minus"</a></li>
      <li data-icon="delete"><a href="#">data-icon="delete"</a></li>
      <li data-icon="location"><a href="#">data-icon="location"</a></li>   
      <li data-icon="false"><a href="#">data-icon="false"</a></li>
    </ul>
  </div>
</div> 

</@layout.myLayout>