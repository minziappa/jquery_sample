    <nav class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Home</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li <#if model??><#if model.navi == "mobile">class="active"</#if></#if>><a href="/mobile">Mobile</a></li>
            <li <#if model??><#if model.navi == "PC">class="active"</#if></#if>><a href="/pc">PC</a></li>
            <li <#if model??><#if model.navi == "realTime">class="active"</#if></#if>><a href="/realTime">RealTime</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Help</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sample<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Mobile</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Pc</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->