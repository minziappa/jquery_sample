<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div id="pageone" data-role="main" class="ui-content">
    <p>Click on the image to enlarge it.</p>
    <p>Notice the dark overlay.</p>
    <a href="#myPopup" data-rel="popup" data-position-to="window">
    <img src="skaret.jpg" alt="Skaret View" style="width:200px;"></a>

    <div data-role="popup" id="myPopup" data-overlay-theme="b">
      <p>This is my picture!</p> 
      <a href="#pageone" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img src="skaret.jpg" style="width:800px;height:400px;" alt="Skaret View">
    </div>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>