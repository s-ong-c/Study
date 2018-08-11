import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/*
array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.
 * 
 * */

class Solution4 {
	public int[] solution(int[] arr, int divisor) {
		//int[] answer = {};
		ArrayList<Integer> list = new ArrayList<>();
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] % divisor == 0) {
				list.add(arr[i]);
			}

		}
		if(list.size()==0) {list.add(-1);}
		int[] answer = new int[list.size()];
		

			 for (int i = 0; i < list.size(); i++)
				 answer[i] = list.get(i);
			 
			 System.out.println(list.size());
			 if(list.size()==0) {
				 //answer[0] =-1;
			 }

			System.out.println(list.toString());
			
		Arrays.sort(answer);
			
		return answer;
	}

	public static void main(String[] args) {
		Solution4 s4 = new Solution4();

		int[] arr = { 5, 9, 7, 10 };
		Arrays.sort(arr);
		int divisor = 11;
		s4.solution(arr, divisor);
	}
}
