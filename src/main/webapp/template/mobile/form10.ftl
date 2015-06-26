<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
    <h1>Text area</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <div class="ui-field-contain">
        <label for="info">Additional Information:</label>
        <textarea name="addinfo" id="info"></textarea>
      </div>
      <input type="submit" data-inline="true" value="Submit">
    </form> 
    <p><b>Note:</b> The text area will automatically grow to fit new lines as you type some text. Try to fill the area with some text and see how it works.</p>
  </div>
</div>


</@layout.myLayout>