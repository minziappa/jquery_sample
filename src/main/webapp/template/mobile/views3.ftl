<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>List Dividers</h2>
    <ul data-role="listview" data-inset="true">
      <li data-role="list-divider">Europe</li>
      <li><a href="#">Norway</a></li>
      <li><a href="#">Germany</a></li>
      <li data-role="list-divider">Asia</li>
      <li><a href="#">India</a></li>
      <li><a href="#">Thailand</a></li>
      <li data-role="list-divider">Africa</li>
      <li><a href="#">Zimbabwe</a></li>
      <li><a href="#">Uganda</a></li>
    </ul>
  </div>
</div> 

</@layout.myLayout>