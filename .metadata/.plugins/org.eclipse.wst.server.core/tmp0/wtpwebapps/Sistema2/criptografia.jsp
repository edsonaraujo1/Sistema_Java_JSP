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

String messeng = "";
String algorithm = "";
//out.println(getHash("senhaAqui", "MD5")); 

message = "";

    try {  
        byte[] buffer = message.getBytes();  
        MessageDigest md = MessageDigest.getInstance(algorithm);  
        md.update(buffer);  
        byte[] digest = md.digest();  
        String hexValue = "";  
        for(int i = 0 ; i < digest.length ; i++) {  
            int b = digest[i] & 0xff;  
            if (Integer.toHexString(b).length() == 1) hexValue = hexValue + "0";  
            hexValue = hexValue + Integer.toHexString(b);  
        }  
        return hexValue;  
    } catch(NoSuchAlgorithmException e) {  
        e.printStackTrace();  
    }  
    return null;  

%>



</body>
</html>