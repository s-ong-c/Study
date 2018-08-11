import java.util.*;

import javax.swing.JOptionPane;

/*
	HashSet 이용해
		로또 만들기!
 */

public class HashSet_lotto {

	public static void main(String[] args) {
		HashSet<Integer> set = new HashSet<>(); //set 으로 
		while(set.size()<6){
			set.add((int)(Math.random()*45+1)); //난수 
		}

		Iterator<Integer> iter = set.iterator();

		ArrayList<Integer> lotto = new ArrayList<>(); //ArrayList 로 

		while(iter.hasNext()){ //찾아 서 로또번호에 add
			
			lotto.add(iter.next());
		}
		
		Collections.sort(lotto); // 숫자정

	    JOptionPane.showInputDialog("726회 로또번호",lotto);

	}

}
