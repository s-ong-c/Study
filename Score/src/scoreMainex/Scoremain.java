	package scoreMainex;
	
	import javax.swing.JOptionPane;
	
	import scoreController.ScoreDAO;
	import scoreModelex.ScoreVO;
	/*
	 	프로젝트를 구성하는 기본 패턴
	 
	   [ 데이터 모델(틀) 클래스 ]    
	 	철수   10  20  30 
	 	영희   11  23  36 
	 	민수   12  24  37 
	 	영철   13  25  38 
	 	새로 학생이 올수도 있고 
	 	기존학생이 갈수도 있다 .
	 	
	 	
	 	[controller]
	 	ArrayList 객체  - 운영하는 클레스
	 	ArrayList 구조로 각 요소를 묶을 수 있는 타입을 만든후 
	 	add() remove() print() update() 할수 있도록 메뉴로 관리 하자
	 
	 	[view]
	 	볼수있는 클래스 
	 	일단은 콘솔이나 대화창으로 대체
	 */
public class Scoremain {
//		static public final int 출력 =1;
//		static public final int 입력 =2;
//		static public final int 수정 =3;
//		static public final int 삭제 =4;
//		static public final int 검색 =5;
		
		private static int menu(){
			String msg = " *** 학생 성적 관리 프로그램 *** \n";
				msg+= "1. 학생 정보 출력\n";
				msg+= "2. 학생 정보 입력\n";
				msg += "3.학생 정보 수정 및 삭제\n";
				msg+= "4. 학생 정보 검색\n";
				msg+= "5. 프로그램 끝내기\n";
				msg+= "원하는 번호를 선택하세요";
				
				int bun = Integer.parseInt(JOptionPane.showInputDialog(msg));
						return bun;
		}
		public static void main(String[] args) {
				int bun = 0;
				ScoreDAO dao = new ScoreDAO();
				
			while((bun=menu()) != 5){
				switch(bun){
				case 1:
					dao.printList(); 
					break;
				case 2:
					dao.insertStudent();
					break;
				case 3:
					dao.overCheck(bun);
					break;
				//case 4:dao.deleteStudent();break;
				case 4:
					dao.searchStudent(JOptionPane.showInputDialog("검색하실분의 이름을 입력해 주세요."));
					break;
				}
				
			}
			JOptionPane.showMessageDialog(null, "프로그램 종료");
			
		}
	
	}
