<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>


<div data-role="page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <a href="#myPopup1" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window">Position popup to window</a>
    <a href="#myPopup2" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="#demo">Position popup to element with id="demo"</a>
    <a href="#myPopup3" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="origin">Position popup to origin (default)</a>
     
    <div data-role="popup" id="myPopup1" class="ui-content">
      <p>I will appear centered within the window.</p>
    </div>
    <div data-role="popup" id="myPopup2" class="ui-content">
      <p>I will appear directly over the element with id="demo".</p>
    </div>
    <div data-role="popup" id="myPopup3" class="ui-content">
      <p>I will appear directly over the clicked link.</p>
    </div>
    
    <p>This is a paragraph.</p>
    <p>This is another paragraph.</p>
    <p>This is also a paragraph.</p>
    <p>This is also a paragraph. I have a child element: This is a <span id="demo" style="color:red;">span</span> element with id="demo", inside the paragraph.</p>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 
</@layout.myLayout>