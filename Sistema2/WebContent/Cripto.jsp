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

public static void main(String[] args) {  
    try {  
        byte[] t = encrypt("teste123", "Um teste de codificação e decodificação");  
        System.out.println(new String(t));  
        System.out.println(decrypt("teste123", t));  
    } catch (Exception x) {  
        x.printStackTrace();  
    }  
}  
  
/** 
 * Encrypt/decrypt a String. 
 * @param dir true for encrypting, false for decrypting 
 * @param password the password should be at least 8 chars long 
 * @param text the text to encrypted/decrypted 
 * @return the decrypted/encrypted text 
 */  
private static byte[] crypto(boolean dir, byte[] password, byte[] text) throws Exception {  
    DESKeySpec keySpec = new DESKeySpec(password);  
    SecretKeyFactory factory = SecretKeyFactory.getInstance("DES");  
    Cipher cipher = Cipher.getInstance("DES");  
    cipher.init(dir ? Cipher.ENCRYPT_MODE : Cipher.DECRYPT_MODE,   
                factory.generateSecret(keySpec));  
    return cipher.doFinal(text);  
}  
  
private static byte[] encrypt(String password, String text) throws Exception {  
    return crypto(true, password.getBytes(), text.getBytes());  
}  
  
private static String decrypt(String password, byte[] text) throws Exception {  
    return new String(crypto(false, password.getBytes(), text));  
}  



%>



</body>
</html>