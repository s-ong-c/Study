
/*
길이가 n이고, 수박수박수박수....와 같은 패턴을 유지하는 문자열을 리턴하는 함수, 
solution을 완성하세요. 예를들어 n이 4이면 수박수박을 리턴하고 3이라면 수박수를 리턴하면 됩니다.
 * 
 * */

class Solution5 {
	public String solution(int n) {
		String answer = "";

		for (int i = 1; i < n + 1; i++) {
			answer += (i % 2 == 1) ? "수" : "박";
		}

		return answer;
	}

	public static void main(String[] args) {
		Solution5 s4 = new Solution5();

		System.out.println(s4.solution(1));

	}
}
