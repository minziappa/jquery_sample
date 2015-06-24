<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
    <div data-role="navbar">
      <ul>
        <li><a href="#" class="ui-btn-active ui-state-persist" data-icon="home">Home</a></li>
        <li><a href="#pagetwo" data-icon="arrow-r">Page Two</a></li>
      </ul>
    </div>
  </div>

  <div data-role="main" class="ui-content">
    <p>With the ui-btn-active class, notice that the Home button stays highlighted (selected).</p>
    <p>Click on the Page Two button to see what happens.</p>
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
        <li><a href="#" class="ui-btn-active ui-state-persist" data-icon="arrow-r">Page Two</a></li>
      </ul>
    </div>
  </div>

  <div data-role="main" class="ui-content">
    <p>This page will also have its button highlighted, because of the ui-btn-active class.</p> 
    <p>And if you go back to the "Home" page, you will notice that the state of that page will continue to exist, and vice versa DUE TO THE CLASS UI-STATE-PERSIST!</p>
  </div>

  <div data-role="footer">
    <h1>My Footer</h1>
  </div>
</div> 


</@layout.myLayout>