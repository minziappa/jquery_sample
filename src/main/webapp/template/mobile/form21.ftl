<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
  <h1>Select Menus</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <fieldset>
        <label for="day">Select As Many Days As You'd Like:</label>
        <select name="day" id="day" multiple="multiple" data-native-menu="false">
          <option>Day</option>
          <option value="mon">Monday</option>
          <option value="tue">Tuesday</option>
          <option value="wed">Wednesday</option>
          <option value="thu">Thursday</option>
          <option value="fri">Friday</option>
          <option value="sat">Saturday</option>
          <option value="sun">Sunday</option>
        </select>
      </fieldset>
      <input type="submit" data-inline="true" value="Submit">
    </form>
    <p>Tip: To give a title to the list, insert an option element without the value attribute (In this example, "Day").</p>
  </div>
</div>


</@layout.myLayout>