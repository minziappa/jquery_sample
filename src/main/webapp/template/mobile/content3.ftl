<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>List With Thumbnails:</h2>
    <ul data-role="listview" data-inset="true">
      <li>
        <a href="#"><img src="chrome.png"></a>
      </li>
      <li>
        <a href="#"><img src="firefox.png"></a>
      </li>
    </ul>
  </div>
</div> 

</@layout.myLayout>