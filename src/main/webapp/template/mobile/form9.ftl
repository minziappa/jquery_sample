<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
  <h1>Text Inputs</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <div class="ui-field-contain">
        <label for="fullname">Full name:</label>
        <input type="text" name="fullname" id="fullname">       
        <label for="bday">Date of Birth:</label>
        <input type="date" name="bday" id="bday">
        <label for="email">E-mail:</label>
        <input type="email" name="email" id="email" placeholder="Your email..">
      </div>
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>


</@layout.myLayout>