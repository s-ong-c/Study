
/*
두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요. 
예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
 * 
 * */

class Solution6 {
	public long solution(int a, int b) {
		long answer = 0;
		
		long sum =0;
		
	
		if(b>a) {
			for(int i=a;i<=b;i++) {
				sum+=i;
			}
		}
		else if(a==b) {
			sum =a;
		}else if(a>b)
			for(int i=b;i<=a;i++) {
				sum+=i;
			}
		System.out.println(sum+"값");
		
		answer = sum;
		
		return answer;

	}
	public static void main(String[] args) {
		Solution6 s6 = new Solution6();
		
		System.out.println(s6.solution(2, 6));
	}
}