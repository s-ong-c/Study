
/*
1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환하는 함수, solution을 만들어 보세요.

소수는 1과 자기 자신으로만 나누어지는 수를 의미합니다.
(1은 소수가 아닙니다.)
 * 
 * */

class Solution7 {
	  public int solution(int n) {
	      int answer = 0;
			// 함수를 완성하세요.
			for (int i = 2 ; i <= n ; i++) {
				boolean isPrime = true;
				for (int j = 2 ; j*j <= i ; j++) {
					if (i % j == 0) {
						isPrime = false; // 소수가 아
						break;
					}
				}
				if (isPrime)
					answer++;
			}
			return answer;
	  }
	public static void main(String[] args) {
		Solution7 s6 = new Solution7();
		System.out.println(s6.solution(5));
		
	}
}