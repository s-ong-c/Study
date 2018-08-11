
public class Exercise9_10 {
	static String format(String str, int lengh,int aligment) {
		
		//length길이가str 보다 작으면 length 만큼 반환 
		int  diff = lengh - str.length();
		if(diff<0)return str.substring(0, lengh);
		
		//1아니면 공백으로 채워넣어 
		char[] source = str.toCharArray();
		char[] result = new char[lengh];
		
		for(int i = 0;i<result.length;i++) 
			result[i]=' ';
		
		switch (aligment) {// 정렬조건에 따라 문자열 (Str ) 	복사할 위치를 결
			case 0:
			
			default:
				System.arraycopy(source, 0, result, 0, source.length);
				break;
			case 1:
				System.arraycopy(source, 0, result, diff/2, source.length);
				break;	
			case 2:
				System.arraycopy(source, 0, result, diff, source.length);
				break;	
		}
	
	
		return new  String(result);
	

	}
	public static void main(String[] args) {
		String str ="가나다";
		
		System.out.println(format(str, 7, 0));
		System.out.println(format(str, 7, 1	));
		System.out.println(format(str, 7, 2));
		
	}
}
