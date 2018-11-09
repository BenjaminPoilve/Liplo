




<!DOCTYPE html>
<html class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>Code-Package-Processing-2.x/02_M/M_2_6_01_TOOL_TABLET/GUI.pde at master · generative-design/Code-Package-Processing-2.x</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="generative-design/Code-Package-Processing-2.x" name="twitter:title" /><meta content="Code-Package-Processing-2.x - Code package of the book Generative Design (for Processing 2.x)" name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/4837456?s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/4837456?s=400" property="og:image" /><meta content="generative-design/Code-Package-Processing-2.x" property="og:title" /><meta content="https://github.com/generative-design/Code-Package-Processing-2.x" property="og:url" /><meta content="Code-Package-Processing-2.x - Code package of the book Generative Design (for Processing 2.x)" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />

    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="D46333C6:089E:AF75E21:53889558" name="octolytics-dimension-request_id" /><meta content="4719590" name="octolytics-actor-id" /><meta content="BenjaminPoilve" name="octolytics-actor-login" /><meta content="a6ddc6b79cd12f6360ffee1449cb8ca69fb6bf6038b3ce2ce6eeed655614bdff" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico" />


    <meta content="authenticity_token" name="csrf-param" />
<meta content="Mj1giSWcpfpZP7RRq8eBaDsGYa59/BN9O8SALcjsP1ZS2i9UiCnAFg2fLw/rQOl6HS4FXiBL8dRptfF6iz8lUw==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-382e2d2394fe36287509f9d88e1aae81a78b71b2.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-700c786303eff465608cf2e6e32e27d636038f05.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="367b402e0291706cc3bfccf2d324be4b">

      
  <meta name="description" content="Code-Package-Processing-2.x - Code package of the book Generative Design (for Processing 2.x)" />

  <meta content="4837456" name="octolytics-dimension-user_id" /><meta content="generative-design" name="octolytics-dimension-user_login" /><meta content="10972609" name="octolytics-dimension-repository_id" /><meta content="generative-design/Code-Package-Processing-2.x" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="10972609" name="octolytics-dimension-repository_network_root_id" /><meta content="generative-design/Code-Package-Processing-2.x" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/generative-design/Code-Package-Processing-2.x/commits/master.atom" rel="alternate" title="Recent Commits to Code-Package-Processing-2.x:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" aria-label="You have no unread notifications" class="notification-indicator tooltipped tooltipped-s" data-hotkey="g n">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="BenjaminPoilve"
      data-repo="generative-design/Code-Package-Processing-2.x"
      data-branch="master"
      data-sha="4a478016a489420cdefdeff54e15c96a79d034e3"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="generative-design/Code-Package-Processing-2.x" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/BenjaminPoilve" class="name">
        <img alt="BenjaminPoilve" class=" js-avatar" data-user="4719590" height="20" src="https://avatars1.githubusercontent.com/u/4719590?s=140" width="20" /> BenjaminPoilve
      </a>
    </li>

    <li class="new-menu dropdown-toggle js-menu-container">
      <a href="#" class="js-menu-target tooltipped tooltipped-s" aria-label="Create new...">
        <span class="octicon octicon-plus"></span>
        <span class="dropdown-arrow"></span>
      </a>

      <div class="new-menu-content js-menu-content">
      </div>
    </li>

    <li>
      <a href="/settings/profile" id="account_settings"
        class="tooltipped tooltipped-s"
        aria-label="Account settings ">
        <span class="octicon octicon-tools"></span>
      </a>
    </li>
    <li>
      <form class="logout-form" action="/logout" method="post">
        <button class="sign-out-button tooltipped tooltipped-s" aria-label="Sign out">
          <span class="octicon octicon-sign-out"></span>
        </button>
      </form>
    </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="section-title">
      <span title="generative-design/Code-Package-Processing-2.x">This repository</span>
    </li>
      <li>
        <a href="/generative-design/Code-Package-Processing-2.x/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

        



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="pDCybiKwzJacIy8XH99RcgJwxpY4dEOQPpsvBZNonLzeaUqgYPL9kyPfkyyy+dKI4x/NMAguIurnn2HpXvXhfA==" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="10972609" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/generative-design/Code-Package-Processing-2.x/watchers">
        14
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
        <span class="js-select-button">
          <span class="octicon octicon-eye"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-x js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/generative-design/Code-Package-Processing-2.x/unstar" class="js-toggler-form starred" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="AfTGlcJ5XM+mcAGTIBuAYPXuBCndJvoihbY1BhZSxrXKOce/4PNt26EPLKaFzxXMylyd9dCE16g+dnbxUMEvPw==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Unstar this repository" title="Unstar generative-design/Code-Package-Processing-2.x">
        <span class="octicon octicon-star"></span><span class="text">Unstar</span>
      </button>
        <a class="social-count js-social-count" href="/generative-design/Code-Package-Processing-2.x/stargazers">
          71
        </a>
</form>
    <form accept-charset="UTF-8" action="/generative-design/Code-Package-Processing-2.x/star" class="js-toggler-form unstarred" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="5nWsmROHCVPQLkA79Mwno9E4+v+h8JNcd7mHNXiOw9ZMdtZDnkHeB1gkfe5rPIaQnUdAUtEuJo5RWJIjKrocXw==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Star this repository" title="Star generative-design/Code-Package-Processing-2.x">
        <span class="octicon octicon-star"></span><span class="text">Star</span>
      </button>
        <a class="social-count js-social-count" href="/generative-design/Code-Package-Processing-2.x/stargazers">
          71
        </a>
</form>  </div>

  </li>


        <li>
          <a href="/generative-design/Code-Package-Processing-2.x/fork" class="minibutton with-count js-toggler-target fork-button lighter tooltipped-n" title="Fork your own copy of generative-design/Code-Package-Processing-2.x to your account" aria-label="Fork your own copy of generative-design/Code-Package-Processing-2.x to your account" rel="facebox nofollow">
            <span class="octicon octicon-repo-forked"></span><span class="text">Fork</span>
          </a>
          <a href="/generative-design/Code-Package-Processing-2.x/network" class="social-count">35</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/generative-design" class="url fn" itemprop="url" rel="author"><span itemprop="title">generative-design</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/generative-design/Code-Package-Processing-2.x" class="js-current-repository js-repo-home-link">Code-Package-Processing-2.x</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/generative-design/Code-Package-Processing-2.x" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /generative-design/Code-Package-Processing-2.x">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/generative-design/Code-Package-Processing-2.x/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues /generative-design/Code-Package-Processing-2.x/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/generative-design/Code-Package-Processing-2.x/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /generative-design/Code-Package-Processing-2.x/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/generative-design/Code-Package-Processing-2.x/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g w" data-selected-links="repo_wiki /generative-design/Code-Package-Processing-2.x/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/generative-design/Code-Package-Processing-2.x/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /generative-design/Code-Package-Processing-2.x/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/generative-design/Code-Package-Processing-2.x/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /generative-design/Code-Package-Processing-2.x/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/generative-design/Code-Package-Processing-2.x/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /generative-design/Code-Package-Processing-2.x/network">
          <span class="octicon octicon-repo-forked"></span> <span class="full-word">Network</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/generative-design/Code-Package-Processing-2.x.git" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/generative-design/Code-Package-Processing-2.x.git" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:generative-design/Code-Package-Processing-2.x.git" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="git@github.com:generative-design/Code-Package-Processing-2.x.git" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/generative-design/Code-Package-Processing-2.x" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/generative-design/Code-Package-Processing-2.x" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/generative-design/Code-Package-Processing-2.x" class="minibutton sidebar-button js-conduit-rewrite-url" title="Save generative-design/Code-Package-Processing-2.x to your computer and use it in GitHub Desktop." aria-label="Save generative-design/Code-Package-Processing-2.x to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/generative-design/Code-Package-Processing-2.x/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download generative-design/Code-Package-Processing-2.x as a zip file"
                   title="Download generative-design/Code-Package-Processing-2.x as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<a href="/generative-design/Code-Package-Processing-2.x/blob/fe9e5bfc203e7dd1808c051b12fc46eda965d569/02_M/M_2_6_01_TOOL_TABLET/GUI.pde" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:cdcd43e7cb1ea7e681710fa2c163c083 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/generative-design/Code-Package-Processing-2.x/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/generative-design/Code-Package-Processing-2.x/blob/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/generative-design/Code-Package-Processing-2.x/tree/v1.0.3/02_M/M_2_6_01_TOOL_TABLET/GUI.pde"
                 data-name="v1.0.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="v1.0.3">v1.0.3</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/generative-design/Code-Package-Processing-2.x" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">Code-Package-Processing-2.x</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/generative-design/Code-Package-Processing-2.x/tree/master/02_M" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">02_M</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/generative-design/Code-Package-Processing-2.x/tree/master/02_M/M_2_6_01_TOOL_TABLET" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">M_2_6_01_TOOL_TABLET</span></a></span><span class="separator"> / </span><strong class="final-path">GUI.pde</strong> <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="02_M/M_2_6_01_TOOL_TABLET/GUI.pde" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/generative-design/Code-Package-Processing-2.x/contributors/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>211 lines (175 sloc)</span>
          <span class="meta-divider"></span>
        <span>6.774 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
            <a class="minibutton tooltipped tooltipped-w js-conduit-openfile-check"
               href="http://mac.github.com"
               data-url="github-mac://openRepo/https://github.com/generative-design/Code-Package-Processing-2.x?branch=master&amp;filepath=02_M%2FM_2_6_01_TOOL_TABLET%2FGUI.pde"
               aria-label="Open this file in GitHub for Mac"
               data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
                <span class="octicon octicon-device-desktop"></span> Open
            </a>
                <a class="minibutton tooltipped tooltipped-n js-update-url-with-hash"
                   aria-label="Clicking this button will automatically fork this project so you can edit the file"
                   href="/generative-design/Code-Package-Processing-2.x/edit/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde"
                   data-method="post" rel="nofollow">Edit</a>
          <a href="/generative-design/Code-Package-Processing-2.x/raw/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde" class="button minibutton " id="raw-url">Raw</a>
            <a href="/generative-design/Code-Package-Processing-2.x/blame/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/generative-design/Code-Package-Processing-2.x/commits/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

            <a class="minibutton danger empty-icon tooltipped tooltipped-s"
               href="/generative-design/Code-Package-Processing-2.x/delete/master/02_M/M_2_6_01_TOOL_TABLET/GUI.pde"
               aria-label="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">

          Delete
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-processing js-blob-data">
       <table class="file-code file-diff tab-size-8">
         <tr class="file-code-line">
           <td class="blob-line-nums">
             <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>

           </td>
           <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c1">// M_2_6_01_TOOL_TABLET.pde</span></div><div class='line' id='LC2'><span class="c1">// GUI.pde</span></div><div class='line' id='LC3'><span class="c1">// </span></div><div class='line' id='LC4'><span class="c1">// Generative Gestaltung, ISBN: 978-3-87439-759-9</span></div><div class='line' id='LC5'><span class="c1">// First Edition, Hermann Schmidt, Mainz, 2009</span></div><div class='line' id='LC6'><span class="c1">// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni</span></div><div class='line' id='LC7'><span class="c1">// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni</span></div><div class='line' id='LC8'><span class="c1">//</span></div><div class='line' id='LC9'><span class="c1">// http://www.generative-gestaltung.de</span></div><div class='line' id='LC10'><span class="c1">//</span></div><div class='line' id='LC11'><span class="c1">// Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);</span></div><div class='line' id='LC12'><span class="c1">// you may not use this file except in compliance with the License.</span></div><div class='line' id='LC13'><span class="c1">// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0</span></div><div class='line' id='LC14'><span class="c1">// Unless required by applicable law or agreed to in writing, software</span></div><div class='line' id='LC15'><span class="c1">// distributed under the License is distributed on an &quot;AS IS&quot; BASIS,</span></div><div class='line' id='LC16'><span class="c1">// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.</span></div><div class='line' id='LC17'><span class="c1">// See the License for the specific language governing permissions and</span></div><div class='line' id='LC18'><span class="c1">// limitations under the License.</span></div><div class='line' id='LC19'><br/></div><div class='line' id='LC20'><span class="kt">void</span> <span class="nf">setupGUI</span><span class="o">(){</span></div><div class='line' id='LC21'>&nbsp;&nbsp;<span class="n">color</span> <span class="n">activeColor</span> <span class="o">=</span> <span class="n">color</span><span class="o">(</span><span class="mi">0</span><span class="o">,</span><span class="mi">130</span><span class="o">,</span><span class="mi">164</span><span class="o">);</span></div><div class='line' id='LC22'>&nbsp;&nbsp;<span class="n">controlP5</span> <span class="o">=</span> <span class="k">new</span> <span class="n">ControlP5</span><span class="o">(</span><span class="k">this</span><span class="o">);</span></div><div class='line' id='LC23'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">setAutoDraw</span><span class="o">(</span><span class="kc">false</span><span class="o">);</span></div><div class='line' id='LC24'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">setColorActive</span><span class="o">(</span><span class="n">activeColor</span><span class="o">);</span></div><div class='line' id='LC25'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">setColorBackground</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">170</span><span class="o">));</span></div><div class='line' id='LC26'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">setColorForeground</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC27'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC28'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">setColorValue</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">255</span><span class="o">));</span></div><div class='line' id='LC29'><br/></div><div class='line' id='LC30'>&nbsp;&nbsp;<span class="n">ControlGroup</span> <span class="n">ctrl</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addGroup</span><span class="o">(</span><span class="s">&quot;menu&quot;</span><span class="o">,</span><span class="mi">15</span><span class="o">,</span><span class="mi">25</span><span class="o">,</span><span class="mi">35</span><span class="o">);</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="n">ctrl</span><span class="o">.</span><span class="na">activateEvent</span><span class="o">(</span><span class="kc">true</span><span class="o">);</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="n">ctrl</span><span class="o">.</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">255</span><span class="o">));</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="n">ctrl</span><span class="o">.</span><span class="na">activateEvent</span><span class="o">(</span><span class="kc">true</span><span class="o">);</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="n">ctrl</span><span class="o">.</span><span class="na">close</span><span class="o">();</span></div><div class='line' id='LC35'><br/></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'>&nbsp;&nbsp;<span class="n">sliders</span> <span class="o">=</span> <span class="k">new</span> <span class="n">Slider</span><span class="o">[</span><span class="mi">30</span><span class="o">];</span></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="n">ranges</span> <span class="o">=</span> <span class="k">new</span> <span class="n">Range</span><span class="o">[</span><span class="mi">30</span><span class="o">];</span></div><div class='line' id='LC39'>&nbsp;&nbsp;<span class="n">toggles</span> <span class="o">=</span> <span class="k">new</span> <span class="n">Toggle</span><span class="o">[</span><span class="mi">30</span><span class="o">];</span></div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="n">bangs</span> <span class="o">=</span> <span class="k">new</span> <span class="n">Bang</span><span class="o">[</span><span class="mi">30</span><span class="o">];</span></div><div class='line' id='LC41'><br/></div><div class='line' id='LC42'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">left</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC43'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">top</span> <span class="o">=</span> <span class="mi">5</span><span class="o">;</span></div><div class='line' id='LC44'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">len</span> <span class="o">=</span> <span class="mi">300</span><span class="o">;</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">si</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC47'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">ri</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC48'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">ti</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">bi</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC50'>&nbsp;&nbsp;<span class="kt">int</span> <span class="n">posY</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;imageAlpha&quot;</span><span class="o">,</span><span class="mi">0</span><span class="o">,</span><span class="mi">100</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC53'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;maxEraserRadius&quot;</span><span class="o">,</span><span class="mi">1</span><span class="o">,</span><span class="mi">100</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">20</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;minDistance&quot;</span><span class="o">,</span><span class="mi">0</span><span class="o">,</span><span class="mi">30</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">40</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC55'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addToggle</span><span class="o">(</span><span class="s">&quot;usePressure&quot;</span><span class="o">,</span><span class="n">usePressure</span><span class="o">,</span><span class="n">left</span><span class="o">+</span><span class="mi">0</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">60</span><span class="o">,</span><span class="mi">15</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC56'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">++].</span><span class="na">setLabel</span><span class="o">(</span><span class="s">&quot;Use Pressure&quot;</span><span class="o">);</span></div><div class='line' id='LC57'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">90</span><span class="o">;</span></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;zoom&quot;</span><span class="o">,</span><span class="mf">0.2</span><span class="o">,</span><span class="mi">5</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">30</span><span class="o">;</span></div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addToggle</span><span class="o">(</span><span class="s">&quot;invertBackground&quot;</span><span class="o">,</span><span class="n">invertBackground</span><span class="o">,</span><span class="n">left</span><span class="o">+</span><span class="mi">0</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">,</span><span class="mi">15</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC63'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">++].</span><span class="na">setLabel</span><span class="o">(</span><span class="s">&quot;Invert Background&quot;</span><span class="o">);</span></div><div class='line' id='LC64'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;lineWeight&quot;</span><span class="o">,</span><span class="mi">1</span><span class="o">,</span><span class="mi">50</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">20</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC65'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;lineAlpha&quot;</span><span class="o">,</span><span class="mi">0</span><span class="o">,</span><span class="mi">100</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">40</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC66'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">70</span><span class="o">;</span></div><div class='line' id='LC67'><br/></div><div class='line' id='LC68'>&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">ri</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addRange</span><span class="o">(</span><span class="s">&quot;hueRange&quot;</span><span class="o">,</span><span class="mi">0</span><span class="o">,</span><span class="mi">720</span><span class="o">,</span><span class="n">minHueValue</span><span class="o">,</span><span class="n">maxHueValue</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">0</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC69'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;saturationValue&quot;</span><span class="o">,</span><span class="mi">0</span><span class="o">,</span><span class="mi">100</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">20</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC70'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;brightnessValue&quot;</span><span class="o">,</span><span class="mi">0</span><span class="o">,</span><span class="mi">100</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">40</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addToggle</span><span class="o">(</span><span class="s">&quot;invertHue&quot;</span><span class="o">,</span><span class="n">invertHue</span><span class="o">,</span><span class="n">left</span><span class="o">+</span><span class="mi">0</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">60</span><span class="o">,</span><span class="mi">15</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">++].</span><span class="na">setLabel</span><span class="o">(</span><span class="s">&quot;Invert Hue Range&quot;</span><span class="o">);</span></div><div class='line' id='LC73'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">90</span><span class="o">;</span></div><div class='line' id='LC74'><br/></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">si</span><span class="o">++]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addSlider</span><span class="o">(</span><span class="s">&quot;maxConnectionRadius&quot;</span><span class="o">,</span><span class="mi">1</span><span class="o">,</span><span class="mi">500</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">+</span><span class="mi">0</span><span class="o">,</span><span class="n">len</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="c1">//sliders[si++] = controlP5.addSlider(&quot;connectionRamp&quot;,1,20,left,top+posY+20,len,15);</span></div><div class='line' id='LC77'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">20</span><span class="o">;</span></div><div class='line' id='LC78'><br/></div><div class='line' id='LC79'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addToggle</span><span class="o">(</span><span class="s">&quot;connectAllPoints&quot;</span><span class="o">,</span><span class="n">connectAllPoints</span><span class="o">,</span><span class="n">left</span><span class="o">+</span><span class="mi">0</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">,</span><span class="mi">15</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC80'>&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">ti</span><span class="o">++].</span><span class="na">setLabel</span><span class="o">(</span><span class="s">&quot;Connect All Points&quot;</span><span class="o">);</span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">30</span><span class="o">;</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">bi</span><span class="o">]</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">addBang</span><span class="o">(</span><span class="s">&quot;reset&quot;</span><span class="o">,</span><span class="n">left</span><span class="o">,</span><span class="n">top</span><span class="o">+</span><span class="n">posY</span><span class="o">,</span><span class="mi">45</span><span class="o">,</span><span class="mi">15</span><span class="o">);</span></div><div class='line' id='LC84'>&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">bi</span><span class="o">++].</span><span class="na">setLabel</span><span class="o">(</span><span class="s">&quot;Reset&quot;</span><span class="o">);</span> </div><div class='line' id='LC85'>&nbsp;&nbsp;<span class="n">posY</span> <span class="o">+=</span> <span class="mi">30</span><span class="o">;</span></div><div class='line' id='LC86'><br/></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">si</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setGroup</span><span class="o">(</span><span class="n">ctrl</span><span class="o">);</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">toUpperCase</span><span class="o">(</span><span class="kc">true</span><span class="o">);</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">padding</span><span class="o">(</span><span class="mi">4</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">);</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginTop</span> <span class="o">=</span> <span class="o">-</span><span class="mi">4</span><span class="o">;</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginLeft</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span></div><div class='line' id='LC94'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginRight</span> <span class="o">=</span> <span class="o">-</span><span class="mi">14</span><span class="o">;</span></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC97'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">ri</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setGroup</span><span class="o">(</span><span class="n">ctrl</span><span class="o">);</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">toUpperCase</span><span class="o">(</span><span class="kc">true</span><span class="o">);</span></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">padding</span><span class="o">(</span><span class="mi">4</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">);</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginTop</span> <span class="o">=</span> <span class="o">-</span><span class="mi">4</span><span class="o">;</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC103'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC104'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">ti</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setGroup</span><span class="o">(</span><span class="n">ctrl</span><span class="o">);</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">padding</span><span class="o">(</span><span class="mi">4</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">);</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginTop</span> <span class="o">=</span> <span class="o">-</span><span class="mi">20</span><span class="o">;</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginLeft</span> <span class="o">=</span> <span class="mi">18</span><span class="o">;</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginRight</span> <span class="o">=</span> <span class="mi">5</span><span class="o">;</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC112'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC113'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">bi</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setGroup</span><span class="o">(</span><span class="n">ctrl</span><span class="o">);</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">padding</span><span class="o">(</span><span class="mi">4</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">,</span><span class="mi">3</span><span class="o">);</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginTop</span> <span class="o">=</span> <span class="o">-</span><span class="mi">20</span><span class="o">;</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginLeft</span> <span class="o">=</span> <span class="mi">48</span><span class="o">;</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">style</span><span class="o">().</span><span class="na">marginRight</span> <span class="o">=</span> <span class="mi">5</span><span class="o">;</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC121'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC122'><br/></div><div class='line' id='LC123'><span class="o">}</span></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'><br/></div><div class='line' id='LC127'><span class="kt">void</span> <span class="nf">drawGUI</span><span class="o">(){</span></div><div class='line' id='LC128'>&nbsp;&nbsp;<span class="n">noTint</span><span class="o">();</span></div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">show</span><span class="o">();</span></div><div class='line' id='LC130'>&nbsp;&nbsp;<span class="n">controlP5</span><span class="o">.</span><span class="na">draw</span><span class="o">();</span></div><div class='line' id='LC131'><span class="o">}</span></div><div class='line' id='LC132'><br/></div><div class='line' id='LC133'><br/></div><div class='line' id='LC134'><br/></div><div class='line' id='LC135'><span class="kt">void</span> <span class="nf">controlEvent</span><span class="o">(</span><span class="n">ControlEvent</span> <span class="n">theControlEvent</span><span class="o">)</span> <span class="o">{</span></div><div class='line' id='LC136'>&nbsp;&nbsp;<span class="n">guiEvent</span> <span class="o">=</span> <span class="kc">true</span><span class="o">;</span></div><div class='line' id='LC137'><br/></div><div class='line' id='LC138'>&nbsp;&nbsp;<span class="n">GUI</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">group</span><span class="o">(</span><span class="s">&quot;menu&quot;</span><span class="o">).</span><span class="na">isOpen</span><span class="o">();</span></div><div class='line' id='LC139'><br/></div><div class='line' id='LC140'>&nbsp;&nbsp;<span class="k">if</span><span class="o">(</span><span class="n">theControlEvent</span><span class="o">.</span><span class="na">isController</span><span class="o">())</span> <span class="o">{</span></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span><span class="o">(</span><span class="n">theControlEvent</span><span class="o">.</span><span class="na">controller</span><span class="o">().</span><span class="na">name</span><span class="o">().</span><span class="na">equals</span><span class="o">(</span><span class="s">&quot;hueRange&quot;</span><span class="o">))</span> <span class="o">{</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kt">float</span><span class="o">[]</span> <span class="n">f</span> <span class="o">=</span> <span class="n">theControlEvent</span><span class="o">.</span><span class="na">controller</span><span class="o">().</span><span class="na">arrayValue</span><span class="o">();</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">minHueValue</span> <span class="o">=</span> <span class="n">f</span><span class="o">[</span><span class="mi">0</span><span class="o">];</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">maxHueValue</span> <span class="o">=</span> <span class="n">f</span><span class="o">[</span><span class="mi">1</span><span class="o">];</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC146'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC147'><span class="o">}</span></div><div class='line' id='LC148'><br/></div><div class='line' id='LC149'><br/></div><div class='line' id='LC150'><span class="kt">void</span> <span class="nf">invertBackground</span><span class="o">()</span> <span class="o">{</span></div><div class='line' id='LC151'>&nbsp;&nbsp;<span class="n">guiEvent</span> <span class="o">=</span> <span class="kc">true</span><span class="o">;</span></div><div class='line' id='LC152'>&nbsp;&nbsp;<span class="n">invertBackground</span> <span class="o">=</span> <span class="o">!</span><span class="n">invertBackground</span><span class="o">;</span></div><div class='line' id='LC153'>&nbsp;&nbsp;<span class="n">updateColors</span><span class="o">(</span><span class="n">invertBackground</span><span class="o">);</span></div><div class='line' id='LC154'><span class="o">}</span></div><div class='line' id='LC155'><br/></div><div class='line' id='LC156'><br/></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'><span class="kt">void</span> <span class="nf">updateColors</span><span class="o">(</span><span class="kt">boolean</span> <span class="n">stat</span><span class="o">)</span> <span class="o">{</span></div><div class='line' id='LC159'>&nbsp;&nbsp;<span class="n">ControllerGroup</span> <span class="n">ctrl</span> <span class="o">=</span> <span class="n">controlP5</span><span class="o">.</span><span class="na">getGroup</span><span class="o">(</span><span class="s">&quot;menu&quot;</span><span class="o">);</span></div><div class='line' id='LC160'><br/></div><div class='line' id='LC161'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">sliders</span><span class="o">.</span><span class="na">length</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC162'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">==</span> <span class="kc">null</span><span class="o">)</span> <span class="k">break</span><span class="o">;</span></div><div class='line' id='LC163'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">stat</span> <span class="o">==</span> <span class="kc">false</span><span class="o">)</span> <span class="o">{</span></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span> </div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span> <span class="o">{</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">200</span><span class="o">));</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">sliders</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99000000</span><span class="o">);</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC171'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC172'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">ranges</span><span class="o">.</span><span class="na">length</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">==</span> <span class="kc">null</span><span class="o">)</span> <span class="k">break</span><span class="o">;</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">stat</span> <span class="o">==</span> <span class="kc">false</span><span class="o">)</span> <span class="o">{</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span> </div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span> <span class="o">{</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">200</span><span class="o">));</span></div><div class='line' id='LC180'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">ranges</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99000000</span><span class="o">);</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC182'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC183'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">toggles</span><span class="o">.</span><span class="na">length</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">==</span> <span class="kc">null</span><span class="o">)</span> <span class="k">break</span><span class="o">;</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">stat</span> <span class="o">==</span> <span class="kc">false</span><span class="o">)</span> <span class="o">{</span></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span> </div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span> <span class="o">{</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">200</span><span class="o">));</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">toggles</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99000000</span><span class="o">);</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC193'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC194'>&nbsp;&nbsp;<span class="k">for</span> <span class="o">(</span><span class="kt">int</span> <span class="n">i</span> <span class="o">=</span> <span class="mi">0</span><span class="o">;</span> <span class="n">i</span> <span class="o">&lt;</span> <span class="n">bangs</span><span class="o">.</span><span class="na">length</span><span class="o">;</span> <span class="n">i</span><span class="o">++)</span> <span class="o">{</span></div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">]</span> <span class="o">==</span> <span class="kc">null</span><span class="o">)</span> <span class="k">break</span><span class="o">;</span></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="o">(</span><span class="n">stat</span> <span class="o">==</span> <span class="kc">false</span><span class="o">)</span> <span class="o">{</span></div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">50</span><span class="o">));</span></div><div class='line' id='LC198'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99ffffff</span><span class="o">);</span></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span> </div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span> <span class="o">{</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">setColorLabel</span><span class="o">(</span><span class="n">color</span><span class="o">(</span><span class="mi">200</span><span class="o">));</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">bangs</span><span class="o">[</span><span class="n">i</span><span class="o">].</span><span class="na">captionLabel</span><span class="o">().</span><span class="na">setColorBackground</span><span class="o">(</span><span class="mh">0x99000000</span><span class="o">);</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC204'>&nbsp;&nbsp;<span class="o">}</span></div><div class='line' id='LC205'><span class="o">}</span></div><div class='line' id='LC206'><br/></div><div class='line' id='LC207'><br/></div><div class='line' id='LC208'><br/></div><div class='line' id='LC209'><br/></div><div class='line' id='LC210'><br/></div></pre></div></td>
         </tr>
       </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.10598s from github-fe127-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-abd42a425136c7b864dcc59154d5f87c9aae54e3.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-89f79637947f64400e73b3edac016795009a2ed4.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

