	import java.util.Arrays;
	
	class MyVector{
		Object [ ] objArr;
		int size;
	
	
		MyVector(int capacity) { // 생성자에 기본생성자 
			objArr =new Object[capacity];
		}
		MyVector() {
			this(16);//(capacity=16) 
		}
		boolean isEmpty() {return size==0;}// 객체가 비었는지 확인하는 
		int size() {return size;} //배열 사이즈 
		int capacity() {return objArr.length;}//총길
	
	
		void add(Object obj) { // 객체를 추가하는 메서드 
	
//			if(size<=objArr.length) {
//				objArr[size++]=obj;// 사이즈를 더해주는 
//			}
//			else {
//				System.out.println("총길이보다 높");
//					
//				}
			
			try {
				if(size<=objArr.length) {
				objArr[size++]=obj;// 사이즈를 더해주는 
			}}
			catch (Exception e) {
				System.out.println("배열자리가 넘침 프로그램 메모리 없어 꺼져 ");
				System.exit(0);
				}
			
			}
	
		public Object get(int index) {  // 객체를 반환하는 
			if(index<0|| index>objArr.length ) {
				System.out.println("xx");
			}
			
			return objArr[index];
		}
		int indexOf(Object obj) { // 지정된 위치 찾기 
			for(int i =0;i<size;i++) {
				if((int)obj==i) { 
					
						//위치 반
					return i;
					}
				}
			return -1;}//q-7 
	
	
		boolean remove(Object obj) {  //obj 로 받아서 그 자리 배열객체 
		
			int rem;
			rem= (int) indexOf(obj);
			objArr[rem]=null;
			System.arraycopy(objArr,rem+1, objArr,rem , rem);
			objArr[size-1]=null;
			size--;
	
	
			rem=0; // 초기
	
			return true;
	
	
		}
		@Override
		//toString
		public String toString() {
			return "MyVector [objArr=" + Arrays.toString(objArr) + ", size=" + size + "]"+"남은자리수"+(capacity()-size);}
	
	}
	
	public class MyVectorTest {
		public static void main(String[] args) {
			MyVector m = new MyVector();
			System.out.println("객체는 비었는가?"+m.isEmpty()); // 객체가 비었나 확인 
			System.out.println("배열의 크기:"+m.capacity());
			System.out.println("경고-배열 총크기보다 많이 담지 마시오");
			m.add("a");
			m.add("b");m.add("c");m.add("d");m.add("e");
			m.add("a");
			
		
			
			for(int i =0;i<m.size;i++) {
			System.out.println("get"+"-"+"-"+m.get(i));
			}
			System.out.println("현재실제크기길이"+m.size());
			System.out.println("toString확인:"+m.toString());
			System.out.println();
			m.remove(2);
			
			System.out.println("toString확인:"+m.toString());
			m.add("d");
			m.add("d");
	
		}
	
	}
