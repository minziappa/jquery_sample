<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
    <div data-role="navbar">
      <ul>
        <li><a href="#" class="ui-btn-active" data-icon="home">Home</a></li>
        <li><a href="#pagetwo" data-icon="arrow-r">Page Two</a></li>
      </ul>
    </div>
  </div>

  <div data-role="main" class="ui-content">
    <p>With the ui-btn-active class, notice that the Home button stays highlighted (selected).</p>
    <p>If you click on the Page Two, you will notice that none of the buttons are highlighted (selected).</p>
  </div>

  <div data-role="footer">
    <h1>My Footer</h1>
  </div> 
</div> 

<div data-role="page" id="pagetwo">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
    <div data-role="navbar">
      <ul>
        <li><a href="#pageone" data-icon="home">Home</a></li>
        <li><a href="#" data-icon="arrow-r">Page Two</a></li>
      </ul>
    </div>
  </div>

  <div data-role="main" class="ui-content">
    <p>No buttons are pre-selected (highlighted) in this page..</p> 
    <p>To get the selected look for each button that represents the page you are actually on, go back to our navbar tutorial and read the next step to find out how!</p>
  </div>

  <div data-role="footer">
    <h1>My Footer</h1>
  </div>
</div> 


</@layout.myLayout>