import java.util.ArrayList;
import java.util.List;

/*
 * arr = [1, 1, 3, 3, 0, 1, 1] 이면 [1, 3, 0, 1] 을 return 합니다.
   arr = [4, 4, 4, 3, 3] 이면 [4, 3] 을 return 합니다.
 * 
 * */

class Solution3 {
	public int[ ] solution(int[] arr) {
		List<Integer> list = new ArrayList<>();
		int temp = -1;
		for (int i : arr) {
			if (temp == i) {
			} else
				list.add(i);
			temp = i;
		}
		int[] result = new int[list.size()];
		for (int i = 0; i < list.size(); i++)
			result[i] = list.get(i);

		System.out.println(list.toString());
		return result;

	}

	public static void main(String[] args) {

		Solution3 s3 = new Solution3();
		int [] arr = {1,1,1,4,5};
		for(int i=0;i<arr.length;i++) {
			
			System.out.println(arr[i]);
		}
		System.out.println(arr.length);
		s3.solution(arr);
	}
}