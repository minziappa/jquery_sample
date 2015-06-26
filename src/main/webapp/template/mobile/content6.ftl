<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>
<style>

</style>
<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="main" class="ui-content">
    <h2>Click On The Gear Icons!</h2>
    <ul data-role="listview" data-inset="true">
      <li data-role="divider">Browsers</li>
      <li>
        <a href="#">
        <img src="chrome.png">
        <h2>Google Chrome</h2>
        <p>Google Chrome is a free, open-source web browser. Released in 2008.</p>
        </a>
        <a href="#download" data-transition="pop" data-icon="gear">Download Browser</a>
      </li>
      <li>
        <a href="#">
        <img src="firefox.png">
        <h2>Mozilla Firefox</h2>
        <p>Firefox is a web browser from Mozilla. Released in 2004.</p>
        </a>
        <a href="#download" data-transition="pop" data-icon="gear">Download Browser</a>
      </li>
    </ul>
  </div>
</div> 

<div data-role="page" id="download" data-dialog="true">
  <div data-role="main" class="ui-content">
  <h3>Split Button Example</h3>
    <p>The buttons below are for demonstration purposes only.</p>
    <a href="#" class="ui-btn ui-btn-inline ui-btn-b ui-shadow ui-corner-all ui-icon-check ui-btn-icon-left ui-btn-inline ui-mini" data-rel="back">Download</a>
    <a href="#" class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-inline ui-mini" data-rel="back">Cancel</a>
  </div>
</div>
</@layout.myLayout>