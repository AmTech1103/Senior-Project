<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false" %>
<html>
<head>
	<link href= "/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
	<title>Home</title>
</head>
<body>
	
	<h2>System Manager</h2>
		<form:form id="system" action="showSystems" method="POST">
		
			<table class="table">
				<tr>
					<td><span class="label label-success">System ID</span></td>
					<td><form:input path="id" required="required" type="text"/></td>
				</tr>
				<tr>
					<td><form:label path="name">System Name</form:label></td>
					<td><form:input path="name" required="required" type="text"/></td>
				</tr>
				<tr>
					<td><form:label path="issueTrackerUrl">Issue Tracker URL</form:label></td>
					<td><form:input path="issueTrackerUrl" required="required" type="text"/></td>
				</tr>
				<tr>
					<td><form:label path="versionControlUrl">Version Control URL</form:label></td>
					<td><form:input path="versionControlUrl" required="required" type="text"/></td>
				</tr>
				<tr>
					<td><form:label path="programmingLang">Programming Language</form:label></td>
					<td>
							<form:select path="programmingLang" required="required">
								<form:option value="1">C++</form:option><form:option value="2">Java</form:option>
							</form:select>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="Submit" class="btn" value="Add System" /></td>
				</tr>
			</table>
	
		</form:form>
		
</body>
</html>