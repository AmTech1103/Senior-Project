<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>System Information</title>
</head>
<body>

<h2>System Information</h2>
   <table>
    <tr>
        <td>System ID</td>
        <td>${id}</td>
    </tr>   
    <tr>
        <td>System Name</td>
        <td>${name}</td>
    </tr>
    <tr>
        <td>Issue Tracker URL</td>
        <td>${issueTrackerUrl}</td>
    </tr>
    <tr>
        <td>Version Control URL</td>
        <td>${versionControlUrl}</td>
    </tr>
    <tr>
        <td>Programming Language</td>
        <td>${programmingLang}</td>
    </tr>
</table>

<a href="index">Main Menu</a> 
</body>
</html>