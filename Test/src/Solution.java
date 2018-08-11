import java.util.Arrays;

class Solution {
	public String solution(String s) {
		// String answer = "1 2 3 4";
		String[] array = s.split(" ");
		int[] iarray = new int[array.length];

		for (int i = 0; i < iarray.length; i++) {

			iarray[i] = Integer.parseInt(array[i]);
		}
		Arrays.sort(iarray);
		String result = iarray[0] + " " + iarray[iarray.length - 1];
		return result;
	}

	public static void main(String[] args) {
		
		String str = "1 2 3 4";
		Solution s = new Solution();
		
		System.out.println(s.solution(str));
	}
}

// import java.util.Arrays;
//
// public class GetMinMaxString {
//
// public String getMinMaxString(String str) {
// String[] array = str.split(" ");
// int[] iarray = new int[array.length];
//
// for(int i=0;i<iarray.length;i++){
//
// iarray[i] = Integer.parseInt(array[i]);
// }
// Arrays.sort(iarray);
//
// String result = iarray[0] +" "+iarray[iarray.length-1];
//
// return result;
// }
