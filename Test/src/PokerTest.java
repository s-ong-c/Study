import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class Card{

	static final int KIND_MAX=4;
	static final int NUM_MAX=4;

	static final int SPADE = 4;
	static final int DIAMOND =3;
	static final int HERAT =2;
	static final int  CLOVER =1;

	int kind;
	int number;

	Card(){
		this(SPADE,1);
	}
	Card(int kind, int number) {
		this.kind = kind;
		this.number = number;
	}
	@Override
	public String toString() {
		String [] kinds = {"","CLOVER","HEART","DIAMOND","SPADE"};
		String   numbers="0123456789JQK";//13

		return  kinds[this.kind]+ ",=" + numbers.charAt(this.number);
	}



}


class PokerTest {

	@Test
	void test() {
		Card[] cards = { new Card(1,1), new Card(2,3),new Card(3,3),new Card(4,5),new Card(3,7)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}

		assertTrue(rankCheck(cards).equals("one Pair")); // 원페
	}
	@Test
	void test1() {
		Card[] cards = { new Card(1,1), new Card(2,1),new Card(3,3),new Card(4,3),new Card(3,7)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}

		assertTrue(rankCheck(cards).equals("twoPair")); // 원페
	}
	@Test
	void test2() {//트리
		Card[] cards = { new Card(1,1), new Card(2,1),new Card(3,1),new Card(4,3),new Card(3,7)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}

		assertTrue(rankCheck(cards).equals("triple")); // 원페
	}
	@Test
	void test3() {//포카
		Card[] cards = { new Card(1,1), new Card(2,1),new Card(3,1),new Card(4,1),new Card(3,7)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}

		assertTrue(rankCheck(cards).equals("FOURCARD")); // 원페
	}
	@Test
	void test4() {//풀하우
		Card[] cards = { new Card(1,1), new Card(2,1),new Card(3,1),new Card(4,2),new Card(3,2)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}


		assertTrue(rankCheck(cards).equals("fullhouse")); // 원페
	}
	@Test
	void test5() {//풀하우
		Card[] cards = { new Card(1,1), new Card(1,5),new Card(1,6),new Card(1,2),new Card(1,11)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}


		assertTrue(rankCheck(cards).equals("flush")); // 플러
	}
	@Test
	void test6() {//풀하우
		Card[] cards = { new Card(1,1), new Card(1,2),new Card(4,3),new Card(1,4),new Card(3,5)};

		//		for(int i=0;i<cards.length;i++) {
		//			System.out.println(cards[i].toString());
		//		}


		assertTrue(rankCheck(cards).equals("str")); // 플러
	}

@Test
void test7() {//풀하우
	Card[] cards = { new Card(1,1), new Card(1,2),new Card(1,3),new Card(1,4),new Card(1,5)};

	//		for(int i=0;i<cards.length;i++) {
	//			System.out.println(cards[i].toString());
	//		}


	assertTrue(rankCheck(cards).equals("strflu")); // 플러
}
@Test
void test8() {//풀하우
	Card[] cards = { new Card(1,1), new Card(1,9),new Card(1,10),new Card(1,11),new Card(1,12)};

//			for(int i=0;i<cards.length;i++) {
//				System.out.println(cards[i].toString()+i);
//			}
//			System.out.println();


	assertTrue(rankCheck(cards).equals("rstr")); // 플러
}


	String rankCheck(Card [] cards) {


		int count [] = new int [13];
		int countK[] = new int[5];

		int sum =0;
		int sum2=0;

		for(int i= 0;i<cards.length;i++) {
			count[cards[i].number]++;
		}
		for(int i =0;i<count.length;i++) {

			if(count[i]==2) {


				sum++; //같은거두개더해지
			}
			else if(count[i]==3) {// 숫자같은 거3

				//System.out.println("트리");
				sum2++;
			}
			else if(count[i]==4) {
				System.out.println("포카드");
				return "FOURCARD";
			}
		}


		//System.out.println(sum2);
		if(sum==1&&sum2==0) {//1쌍이면 
			//System.out.println(sum);
			System.out.println("원페");
			return "one Pair";
		}else if (sum==2){//2쌍이
			System.out.println("투페");
			return "twoPair";
		}else if(sum==1 && sum2==1) {
			System.out.println("풀하우스");

			return "fullhouse";
		}else if(sum2==1 && sum==0) {
			System.out.println("트리플");
			return "triple";
		}

		int str=0;

		if(cards[0].number+1 == cards[1].number && cards[1].number+1 == cards[2].number &&
				cards[2].number+1 ==cards[3].number &&cards[3].number+1 == cards[4].number)
		{
			str++;
		}
		int Rstr=0;
		if(cards[0].number ==1 && cards[1].number == 9 &&
				cards[2].number==10&&cards[3].number== 11&&cards[4].number==12)
		{
			Rstr++;
		}
		//System.out.println(str+"a");
		int kum=0;

		for(int j= 0;j<cards.length;j++) {
			countK[cards[j].kind]++;
		}
		for(int j =0;j<countK.length;j++) {
			if(countK[j]==5){
				kum++;
			}
		}

		if(str==1&&kum==0) {
			System.out.println("스트레이트");
			
			return "str";
		}
		if(kum==1&&Rstr==1) {
			System.out.println("로얄스트레이트 플러쉬");
			return "rstr";
		}
		if(kum==1&&str==0) {
			System.out.println("플래쉬");

			return "flush";

		}
		if(kum==1&&str==1&&Rstr==0) {
			
			System.out.println("스트레이트 플러");
			return "strflu";
		}
		System.out.println(Rstr);
		
		System.out.println("ㄴㅇ");
		int temp;
		for (int i=0;i<cards.length;i++) {
			for(int j=i;j<cards.length;j++) {
				if(cards[i].number>cards[j+1].number) {
					temp = cards[i].number;
					cards[i].number = cards[j+1].number;
					cards[j+1].number = temp;
				}
			}
		}// 순서 배열
		System.out.println("여");
		
		Rstr =0;
		sum =0;
		kum=0;
		sum2=0;
		//변수초기화 
		// 플래쉬

		return "No Rank";
	}

}
