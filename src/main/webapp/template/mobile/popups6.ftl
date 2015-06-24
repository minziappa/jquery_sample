<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>


<div data-role="page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <a href="#myPopupDialog" data-rel="popup" data-position-to="window" data-transition="fade" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Open Dialog Popup</a>

    <div data-role="popup" id="myPopupDialog">
      <div data-role="header">
        <h1>Header Text</h1>
      </div>

      <div data-role="main" class="ui-content">
        <h2>Welcome to my Popup Dialog!</h2>
        <p>jQuery Mobile is FUN!</p>
        <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b ui-icon-back ui-btn-icon-left" data-rel="back">Go Back</a>
      </div>

      <div data-role="footer">
        <h1>Footer Text</h1>
      </div>
    </div>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>