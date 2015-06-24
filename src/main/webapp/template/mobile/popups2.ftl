<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all">Show Popup</a>

    <div data-role="popup" id="myPopup" class="ui-content">
      <h3>Welcome!</h3>
      <p>The "ui-content" class is especially useful when you have a popup with <span style="font-size:55px;">styled text</span>, and want the edges and corners to look extra clean and sleek. <strong>Note:</strong> The text will wrap to multiple lines if needed.</p>
    </div>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>