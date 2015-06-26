<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>List With Thumbnails and Text</h2>
    <ul data-role="listview" data-inset="true">
      <li>
        <a href="#">
        <img src="chrome.png">
        <h2>Google Chrome</h2>
        <p>Google Chrome is a free, open-source web browser. Released in 2008.</p>
        </a>
      </li>
      <li>
        <a href="#">
        <img src="firefox.png">
        <h2>Mozilla Firefox</h2>
        <p>Firefox is a web browser from Mozilla. Released in 2004.</p>
        </a>
      </li>
    </ul>
  </div>
</div>

</@layout.myLayout>