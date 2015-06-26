<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <div class="ui-field-contain">
        <label for="fname">First name:</label>
        <input type="text" name="fname" id="fname">
        <label for="lname">Last name:</label>
        <input type="text" name="lname" id="lname">
      </div>
      <input type="submit" data-inline="true" value="Submit">
    </form>

    <p>The "ui-field-contain" class style labels and form controls properly based upon the width of the page. When the width of the page is greater than 480px, it automatically place the label on the same line as the form control.</p>

    <p>When the page is less than 480px, the label will be placed above the form element, and a thin bottom border will be added below the form element. Try to resize the width of the window to see the effect.</p> 
  </div>
</div>

</@layout.myLayout>