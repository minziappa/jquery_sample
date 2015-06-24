<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>


<div data-role="page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>This is a demonstration of all available transition effects for popups.</p>
    <p><b>Note:</b> For performance reasons, jQuery Mobile recommend using "pop", "fade" or "none" for smooth and fast animations.</p>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="fade">Fade</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="flip">Flip</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="flow">Flow</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="pop">Pop</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="slide">Slide</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="slidefade">Slidefade</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="slideup">Slide up</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="slidedown">Slide down</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="turn">Turn</a>
    <a href="#myPopup" data-rel="popup" class="ui-btn" data-transition="none" >No transition</a>

    <div data-role="popup" id="myPopup" class="ui-content">
      <p>This is a simple popup.</p>
    </div>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

</@layout.myLayout>