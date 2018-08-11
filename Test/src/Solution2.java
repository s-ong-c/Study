class Solution2 {
	public String solution(int a, int b) {
		String answer = "";
		String[] day = { "FRI", "SAT", "SUN", "MON", "TUE", "WEN", "THU" }; // 2016 년도 1/1일은 금요일이다 ..!!
		int[] date = { 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };// 월별 일자 ( 일단 윤달 로 )
		int index = 0;

		for (int i = 0; i < a - 1; i++) {
			index += date[i];
		}
		// index +=(b-1);
		answer = day[index % 7];
		// index. 현재 달 일 수를 더함 (1월1일 하루는 뺀다)
		index = (index + b - 1) % 7;
		answer = day[index];
		
		return answer;
	}

	public static void main(String[] args) {
		Solution2 s2 = new Solution2();
		int a = 1, b = 31;
		System.out.println(s2.solution(a,b));
	}
}
