<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script>
function repoFormatResult(repo) {
   var markup = '<div class="row-fluid">' +
      '<div class="span2"><img src="' + repo.owner.avatar_url + '" /></div>' +
      '<div class="span10">' +
         '<div class="row-fluid">' +
            '<div class="span6">' + repo.full_name + '</div>' +
            '<div class="span3"><i class="fa fa-code-fork"></i> ' + repo.forks_count + '</div>' +
            '<div class="span3"><i class="fa fa-star"></i> ' + repo.stargazers_count + '</div>' +
         '</div>';

   if (repo.description) {
      markup += '<div>' + repo.description + '</div>';
   }

   markup += '</div></div>';

   return markup;
}

function repoFormatSelection(repo) {
   return repo.full_name;
}
</script>

<script id="script_e7">
$(document).ready(function() {
$("#e7").select2({
    placeholder: "Search for a repository",
    minimumInputLength: 3,
    ajax: {
        url: "https://api.github.com/search/repositories",
        dataType: 'json',
        quietMillis: 250,
        data: function (term, page) { // page is the one-based page number tracked by Select2
            return {
                q: term, //search term
                page: page // page number
            };
        },
        results: function (data, page) {
            var more = (page * 30) < data.total_count; // whether or not there are more results available

            // notice we return the value of more so Select2 knows if more results can be loaded
            return { results: data.items, more: more };
        }
    },
    formatResult: repoFormatResult, // omitted for brevity, see the source of this page
    formatSelection: repoFormatSelection, // omitted for brevity, see the source of this page
    dropdownCssClass: "bigdrop", // apply css that makes the dropdown taller
    escapeMarkup: function (m) { return m; } // we do not want to escape markup since we are displaying html in results
});
});
</script>


<div>
  <h3>Infinite Scroll with Remote Data</h3>
   <p>Select2 supports lazy-appending of results when the result list is scrolled to the end.
       In order to enable the remote service must support some sort of a paging mechanism and
       the query function given to Select2 must take advantage of it. The following example demonstrates
       how this can be set up. Search for some keyword and then scroll the result list to the end to
       see more results load:</p>
   <p>
   		<a href="http://select2.github.io/select2/#infinite">http://select2.github.io/select2/#infinite</a>
   </p>
   <p>
       <input type="hidden" class="bigdrop" id="e7" style="width:500px"/>
   </p>
   <p class="alert alert-warning">If this example stops working, you have most likely reached the usage limit for the GitHub Search API of 5 requests per minute.  Please wait a few minutes and try again.</p>

</div>


</@layout.myLayout>

