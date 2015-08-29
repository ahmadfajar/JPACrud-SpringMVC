<#import "/spring.ftl" as spring />
<#assign xhtmlCompliant = true in spring>
<!doctype html>
<html>
<head>
<#include "../head-meta.ftl"/>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<@spring.url "/"/>">JPA-Crud Project</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="<@spring.url "/"/>">Home</a></li>
                <li class="active"><a href="<@spring.url "/employee"/>">Employee</a></li>
                <li><a href="<@spring.url "/department"/>">Department</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

</div>
<#include "../footer.ftl"/>
</body>
</html>