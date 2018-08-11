import javax.swing.JOptionPane;

public class DoWhilePassword {

	public static void main(String[] args) {

		// 홍길동, 비밀번호 1234 (정수형)

		// 사용자한테 비번 물어보기
		int cnt = 3; //기회 3번  
		String msg = "비번 4자리";
		do {
			int userPass = Integer.parseInt(JOptionPane.showInputDialog(msg));
			if (userPass == 1234) {
				break;
			}
			cnt--;
			msg = "틀렸습니다. \n다시 확인 한 후 4자리 입력하세요\n" + (cnt) + "회 남았습니다.";
			if (cnt == 0) {
				System.out.println("3번 이상 오류-계정 잠김-가까운 은행 가세요");
				break;
			}
		} while (true); // 무한반복 <-- 언제 탈출해야 할까?
						// 1. 비번이 맞았을 때 2. 3번이상 틀렸을 때!
		if (cnt == 0) {
			System.out.println("은행 업무 종료, 계정 잠겼음");
		} else {
			System.out.println("다음 은행 작업 1.계좌이체 2.현금인출");

		}

	}

}