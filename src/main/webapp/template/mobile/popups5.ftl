<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>


<div data-role="page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Click the buttons to open a popup with an arrow.</p>
    <a href="#myPop1" data-rel="popup" class="ui-btn ui-btn-inline" data-position-to="#demo">Left</a>
    <a href="#myPop2" data-rel="popup" class="ui-btn ui-btn-inline" data-position-to="#demo">Top</a>
    <a href="#myPop3" data-rel="popup" class="ui-btn ui-btn-inline" data-position-to="#demo">Right</a>
    <a href="#myPop4" data-rel="popup" class="ui-btn ui-btn-inline" data-position-to="#demo">Bottom</a>
    
    <div data-role="popup" id="myPop1" class="ui-content" data-arrow="l">
      <p>There is an arrow on my LEFT border.</p>
    </div>
    <div data-role="popup" id="myPop2" class="ui-content" data-arrow="t">
      <p>There is an arrow on my TOP border.</p>
    </div>
    <div data-role="popup" id="myPop3" class="ui-content" data-arrow="r">
      <p>There is an arrow on my RIGHT border.</p>
    </div>
    <div data-role="popup" id="myPop4" class="ui-content" data-arrow="b">
      <p>There is an arrow on my BOTTOM border.</p>
    </div>

    <p>This is a paragraph used for this example. The popup will display over <span id="demo" style="color:red;">here!</span>.</p>
  </div>
  <div data-role="footer">

    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>