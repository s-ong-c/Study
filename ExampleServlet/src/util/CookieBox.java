package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieBox {
	private HashMap<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	public CookieBox(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		System.out.println("순서 확인 ");
		if(cookies!=null){
			//cookies배열에서 하나씩 쿠키를 꺼내오자
			//그 쿠키의 이름만 따서 cookieMap의 key에 넣고..
			//그 쿠키를   밸류에 넣으면  끝~~!!!
			for(Cookie temp : cookies){
				cookieMap.put(temp.getName(), temp);
			}
			
		}
	}
	public static Cookie createCookie(String name, String value) throws IOException{
		return new Cookie(name, URLEncoder.encode(value, "utf-8"));
	}
	public static Cookie createCookie(String name, String value, int maxAge) throws IOException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setMaxAge(maxAge);
		cookie.setPath(path);
		return cookie;
	}
	public static Cookie createCookie(String name, String value,String domain, String path, int maxAge) throws IOException{
		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
		cookie.setMaxAge(maxAge);
		cookie.setDomain(domain);
		cookie.setPath(path);
		return cookie;
	}
	
	//id - id, dog, 30, "c:" ,"server"			<-- id라는 쿠키가 있니?  그렇담 그 정보를 다 꺼내 줄래?
	//name - name, hong,							<-- name라는 쿠키가 있니?  그렇담 그 정보를 다 꺼내 줄래?
	
	//이름을 줄테니 쿠키를 다오
	public Cookie getCookie(String name){
		return cookieMap.get(name);
	}
	//이름을 줄테니 값을 다오
	public String getValue(String name) throws Exception{
		Cookie coo = cookieMap.get(name);
		return URLDecoder.decode(coo.getValue(), "utf-8");
	}
	
	//그 쿠키가 있는 거니?
	public boolean exist(String name){
		//해당 이름을 cookieMap에 줬을 때 널이 아니면 true(존재하는 거임!!!)
		return cookieMap.get(name) != null;
		
		
	}
	
	
	
	
	
	
	
	
	
}
