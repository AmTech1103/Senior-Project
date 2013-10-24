<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css" >
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css" >
    <title>Home</title>
</head>
<body>
<!-- NAVBAR
================================================== -->
<div class="navbar-wrapper">
    <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
    <div class="container">

        <div class="navbar navbar-inverse">
            <div class="navbar-inner">
                <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="brand" href="#">Software Solutions</a>
                <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <!-- Read about Bootstrap dropdowns at http://twbs.github.com/bootstrap/javascript.html#dropdowns -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Systems <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="addSystem">Add New System</a></li>
                                <li><a href="addRelease">Add Release</a></li>
                                <li><a href="addReport">Add Report</a></li>
                                <li><a href="addRevision">Add Revision</a></li>
                                <li><a href="addTargetChange">Add Target Change</a></li>
                                <li><a href="addTargetFile">Add Target File</a></li>
                                <li class="divider"></li>
                                <li class="nav-header">Nav header</li>
                                <li><a href="showSystems">View Systems</a></li>
                                <li><a href="showReleases">View Releases</a></li>
                                <li><a href="showReports">View Reports</a></li>
                                <li><a href="showRevisions">View Revisions</a></li>
                                <li><a href="showTargetChanges">View Target Changes</a></li>
                                <li><a href="showTargetFile">View Target Files</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

    </div> <!-- /.container -->
</div><!-- /.navbar-wrapper -->

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">
        <div class="item active">
            <img src="/resources/images/wayne3.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1></h1>
                    <p class="lead"></p>
                    <a class="btn btn-large btn-primary" href="#">Sign up today</a>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="/resources/images/wayne.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1></h1>
                    <p class="lead"></p>
                    <a class="btn btn-large btn-primary" href="#">Learn more</a>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="/resources/images/wayne3.jpg" alt="">
            <div class="container">
                <div class="carousel-caption">
                    <h1></h1>
                    <p class="lead"></p>
                    <a class="btn btn-large btn-primary" href="#">Browse gallery</a>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="span4">

            <h2>Issue Tracker</h2>
            <p>Current issue tracker systems (such as, Bugzilla) and version control systems (such as Git or SVN) are not
                very well integrated and used together by developers. In consequence it is difficult to link the exact
                code that was changed in response to an issue request and its description. In some systems, if
                developers are diligent in maintaining this information, then such data can be extracted automatically.
                However, for legacy systems, such information needs to be reverse engineered manually.</p>
            <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">

            <h2>Change</h2>
            <p>The project requires building of a repository for data about changes and their corresponding issues.
                User of this repository will introduce data manually via a web based user interface. They should also be
                able to run reports about the collected data and simple analysis (such as, finding parts of the code that
                were changed for multiple issues, or retrieving only the issue title). The system should also check for
                inconsistencies automatically. Some data will be entered in forms of links to repositories or issues in the
                issue tracker system, in which case the software should collect automatically the data from that URL.</p>
            <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">

            <h2></h2>
            <p></p>
            <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
    </div><!-- /.row -->


    <!-- Le javascript
 ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    <script src="/resources/js/jquery.js"></script>
    <script src="/resources/js/bootstrap-transition.js"></script>
    <script src="/resources/js/bootstrap-alert.js"></script>
    <script src="/resources/js/bootstrap-modal.js"></script>
    <script src="/resources/js/bootstrap-dropdown.js"></script>
    <script src="/resources/js/bootstrap-scrollspy.js"></script>
    <script src="/resources/js/bootstrap-tab.js"></script>
    <script src="/resources/js/bootstrap-tooltip.js"></script>
    <script src="/resources/js/bootstrap-popover.js"></script>
    <script src="/resources/js/bootstrap-button.js"></script>
    <script src="/resources/js/bootstrap-collapse.js"></script>
    <script src="/resources/js/bootstrap-carousel.js"></script>
    <script src="/resources/js/bootstrap-typeahead.js"></script>-->
    <script>
        !function ($) {
            $(function(){
                // carousel demo
                $('#myCarousel').carousel()
            })
        }(window.jQuery)
    </script>
    <script src="/resources/js/holder.js"></script>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/resources/js/jquery-2.0.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
