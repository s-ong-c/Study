import java.util.Arrays;

public class StringEx {
	public String findKim(String[] seoul){
		//x에 김서방의 위치를 저장하세요.\
		
		int x = Arrays.asList(seoul).indexOf("kim");
	

		
		return "김서방은 "+ x + "에 있다";
	}
	
	// 실행을 위한 테스트코드입니다.
	public static void main(String[] args) {
		StringEx kim = new StringEx();
		String[] names = {"Queen", "Tod","Kim"};
		System.out.println(kim.findKim(names));
	}
}