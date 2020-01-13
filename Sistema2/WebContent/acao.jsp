<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

switch (get_post_action('save', 'submit', 'publish')) {
case 'save':
    //save article and keep editing
    break;

case 'submit':
    //save article and redirect
    break;

case 'publish':
    //publish article and redirect
    break;

default:
    //no action sent
}



%>
</body>
</html>