
class InnerEx1{
	class InstanceInner{
		int iv =100;
		
		final static int CONST =100; // final static 은 상수이므로 허
		
	}
	static class StaticInner{
		int iv =200;
		static int cv = 200;  // static 클래스 이므로 정의가
	}
	
	
	void myMethod() {
			class LocalInner{
				int iv = 300;
				//static int cv = 300;
				final static int CONST =300;
				
	
			
		}
	}
	public static void main(String[] args) {
		System.out.println(InstanceInner.CONST);
		System.out.println(StaticInner.cv);
		StaticInner si = new StaticInner();
		System.out.println(si);
		
	}
}
