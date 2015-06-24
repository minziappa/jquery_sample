<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="panel" id="overlayPanel" data-display="overlay"> 
    <h2>Overlay Panel</h2>
    <p>You can close the panel by clicking outside the panel, pressing the Esc key, by swiping, or by clicking the button below:</p>
    <a href="#pageone" data-rel="close" class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close panel</a>
  </div> 
  <div data-role="panel" id="revealPanel" data-display="reveal"> 
    <h2>Reveal Panel</h2>
    <p>You can close the panel by clicking outside the panel, pressing the Esc key, by swiping, or by clicking the button below:</p>
    <a href="#pageone" data-rel="close" class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close panel</a>
  </div> 
   <div data-role="panel" id="pushPanel" data-display="push"> 
    <h2>Push Panel</h2>
    <p>You can close the panel by clicking outside the panel, pressing the Esc key, by swiping, or by clicking the button below:</p>
    <a href="#pageone" data-rel="close" class="ui-btn ui-btn-inline ui-shadow ui-corner-all ui-btn-a ui-icon-delete ui-btn-icon-left">Close panel</a>
  </div> 

  <div data-role="header">
    <h1>Page Header</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Click on one of the the buttons to open the Panel with different display modes.</p>
    <a href="#overlayPanel" class="ui-btn ui-btn-inline ui-corner-all ui-shadow">Overlay Panel</a>
     <a href="#revealPanel" class="ui-btn ui-btn-inline ui-corner-all ui-shadow">Reveal Panel</a>
      <a href="#pushPanel" class="ui-btn ui-btn-inline ui-corner-all ui-shadow">Push Panel</a>
  </div>

  <div data-role="footer">
    <h1>Page Footer</h1>
  </div> 
</div> 

</@layout.myLayout>