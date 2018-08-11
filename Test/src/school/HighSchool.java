package school;
import java.io.BufferedInputStream;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class HighSchool {
	static String key = "http://openapi.seoul.go.kr:8088/(인증키)/xml/SchulInfoHgschl/1/5/ ";
	
	public HighSchool() throws Exception{
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject)jsonParser.parse(readUrl());
		JSONObject json = (JSONObject)jsonObject.get("SchoolInfo");
		JSONArray array =(JSONArray)json.get("row");
		for(int i =0;i<array.size();i++) {
			JSONObject row = (JSONObject)array.get(i);
			String school = (String)row .get("school_NM");
			System.out.println(school);
		}
		 
	}
	private static String readUrl()throws Exception{
		BufferedInputStream reader = null;
		
		try {
			URL url = new URL("");
			reader = new BufferedInputStream(url.openStream());
			StringBuilder buffer = new StringBuilder();
			int i =0;
			byte [] b= new byte[4096];
			while((i= reader.read(b))!=-1) {
				buffer.append(new String(b,0,i));
			}
			return buffer.toString();
		} finally {
			if(reader != null)reader.close();
		}
	}
	
	
	
	
	
	
}
