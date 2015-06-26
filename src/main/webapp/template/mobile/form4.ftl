<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <p>Type something in the input field and a clear button will appear to the right:</p>
      <label for="fname">First name</label>
      <input type="text" name="fname" id="fname" data-clear-btn="true">
    </form>
  </div>
</div>

</@layout.myLayout>