<%@page import="com.sun.org.apache.xalan.internal.xsltc.compiler.Template"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page  import= "javax.servlet.http.Cookie"%>
    <%@ page import="javax.servlet.http.HttpServletRequest" %>
	<%@ page import ="java.util.HashMap" %>
	<%
	
		Cookie [] coo = request.getCookies();  /* 만약 쿠키 있다*/
		String id = "";
		if(coo !=null){
			for(int i=0;i<coo.length;i++){
				if(coo[i].getName().equals("cooId")){
					System.out.println(coo[i].getValue());
					id = coo[i].getValue();
					System.out.println(id+"뭐좀 떠");
				}
			}
		}
		
		
	
		%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
 <link rel="stylesheet" href="login.css">
  <link rel="stylesheet" href="footer.css">  
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<title>Insert title here</title>
</head>

<body>
    <main class="login">
        <div id="phone-image">
            <img 
                src="images/phoneImage.png"
                alt="Phone image"
                title="Phone image" 
            />
        </div>
        <section id="login">
            <div class="login__box login__box--form">
                <img
                    src="images/logoLogin.png" 
                    alt="Logo login"
                    title="Logo login"
                    class="login__logo"
                />
                <form action="loginCookie.jsp" method="post">
                    <input 
                        type="text"
                        name="id"
                        placeholder="전화번호 또는 이메일 "
                        value="<%=id%>"
                       
                        required
                        class="login__input"
                    />
                    <div class="login__form-box">
                        <input 
                            type="password"
                            name="pw"
                            placeholder="비밀번호"
                            required
                            class="login__input"
                        />
                        <a href="#">Forgot?</a>
                        <input type="checkbox" name="id_rem" <%if(id.length()>1)out.println("checked") ;%> value="1">아이디 저장
                    </div>
                    <input type="submit" value="Log in" >
                </form>
                <span class="login__form-divider">or</span>
                <a id="login__fb-link" href="#">
                    <i class="fa fa-facebook-square" aria-hidden="true"></i>
                    Log in with Facebook
                </a>
            </div>
            <div class="login__box login__box--account">
                <span class="login__text">
                    Don't have an account?
                </span>
                <a href="#" class="login__link">Sign up</a>
            </div>
            <div class="login__box--transparent">
            <div style="text-align: left; margin: 5px; margin-bottom: 30px;">
				<%-- <input type="checkbox" name="id_rem" <%if(id.length()>1)out.println("checked") ;%> value="1">아이디 저장 --%>
			</div>
                <span class="login__text">Get the app.</span>
                <div class="login__appstores">
                    <img src="images/ios.png" />
                    <img src="images/android.png" />
                </div>
            </div>
        </section>
    </main>
    <footer>
        <nav class="footer__nav">
            <ul class="footer__list">
                <li class="footer__item"><a href="#" class="footer__link">about us</a></li>
                <li class="footer__item"><a href="#" class="footer__link">support</a></li>
                <li class="footer__item"><a href="#" class="footer__link">blog</a></li>
                <li class="footer__item"><a href="#" class="footer__link">press</a></li>
                <li class="footer__item"><a href="#" class="footer__link">api</a></li>
                <li class="footer__item"><a href="#" class="footer__link">jobs</a></li>
                <li class="footer__item"><a href="#" class="footer__link">privacy</a></li>
                <li class="footer__item"><a href="#" class="footer__link">terms</a></li>
                <li class="footer__item"><a href="#" class="footer__link">directory</a></li>
                <li class="footer__item"><a href="#" class="footer__link">language</a></li>
		        <span class="footer__copyright">© 2018 instagram</span>
            </ul>
        </nav>
    </footer>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"
  			integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  			crossorigin="anonymous"></script>
    <script src="js/app.js"></script>


</body>
</html>