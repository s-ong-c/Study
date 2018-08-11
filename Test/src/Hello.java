
public class Hello {
	public  static void main(String [] args) {
		System.out.println("Test");
		O1 a = new O1(1,2);
	 
		System.out.println(a);
	}
	
}
class O1{
	int x;
	int y;
	O1(int x, int y) {
		super();
		this.x = x;
		this.y = y;
	}
	O1() {
		this(	1,2);
		
	}
	public  String toString() {
		
		return "x"+x+"y"+y;
	}	
	
	
}