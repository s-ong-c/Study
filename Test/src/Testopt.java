
class My{
	int a,b;
	int add() {  // 인스턴스 메서드 
		return a+b;
	}
	
	static int add(int a,int b) {  /// 클래스 메서스 
		return a+b;
	}
}
public class Testopt {
	public static void main(String[] args) {
		
	System.out.println(My.add(20, 10));  // 클래스 메서드 호출 
	My aa = new My(); //  	인스턴스 생성
	aa.a=10;
	aa.b=15;
	
	System.out.println(aa.add());  // 인스턴스 호출 
	
	}

}
