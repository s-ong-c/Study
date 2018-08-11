package scoreController;
	
import java.util.ArrayList;
import java.util.Iterator;

import javax.swing.JOptionPane;

import scoreModelex.ScoreVO;

	public class ScoreDAO{
	
		private ArrayList<ScoreVO> list;
	
		public ScoreDAO() {
			if(list ==null) {
				init();
			}
		}
		private void init() {
			list = new ArrayList<ScoreVO>();
			list.add(new ScoreVO("송민석",100,20,30));
			list.add(new ScoreVO("송석민",92,100,20));
			list.add(new ScoreVO("김수김",100,20,30));
			list.add(new ScoreVO("나이키",92,100,20));
		
		}
		public void printList() {  /// 출력 기능 
			System.out.println("-----------------------학생 정보 목록보기 ------------------------");
			System.out.println("이름\t국어\t영어\t수학 \t 총점 \t평균 ");
			for(ScoreVO temp : list) {
				System.out.println(temp);
			}
		}
		public void insertStudent() {
			String newStudentNameMsg ="전학생의 이름을 입력하세요";
			String newName ="";
			int newKor =0;
			int newEng = 0;
			int newMath=0;
			
			newName = JOptionPane.showInputDialog(newStudentNameMsg);
			newKor =	exception(100,newName+"의 국어점수를 입력하세요");
			newEng =	exception(100,newName+"의 영어점수를 입력하세요");
			newMath=	exception(100,newName+"의 수학점수를 입력하세요");
			
			list.add(new ScoreVO(newName,newKor,newEng,newMath));
			
			for(ScoreVO newSt :list) {
				System.out.println(newSt);
			}
		}
		
		public int exception(int i,String menu) {
			int number;
			while(true) {
				try {
					number = Integer. parseInt(JOptionPane.showInputDialog(menu));
					if(number <=i && number>=0)
							break;
					JOptionPane.showMessageDialog(null, "범위를 초과한 값을 입력했습니다.");
				} catch (NumberFormatException e) {
					JOptionPane.showMessageDialog(null,"정수가 아닌값을 넣었습니다.");
				}	
			}
			return number;
		}
		
		public int exception(int i, StringBuffer menu) { // stringbuffer 
			int number;
			while(true) {
				try {
					number = Integer. parseInt(JOptionPane.showInputDialog(menu));
					if(number <=i && number>=0)
						break;
					JOptionPane.showMessageDialog(null, "범위를 초과한 값을 입력했습니다.");
				} catch (NumberFormatException e) {
					JOptionPane.showMessageDialog(null,"정수가 아닌값을 넣었습니다.");
				}	
			}
			return number;
		}
		
		public void updateStudent(ScoreVO scroe) {
			
			StringBuffer menu = new StringBuffer();
			menu.append("원하는 업무의 번호를 입력해 주세요\t");
			menu.append("1. 이름 변\n");
			menu.append("2. 국어점수 변경 \n");
			menu.append("3 영어 점수변경 \n");
			menu.append("4. 수학점수변경 \n");
			menu.append("5. 정보삭제하기 \n");
			menu.append("6. 처음으로 돌아가기 \n");
			
			// 변수
			int menuChoice =0;
			int repair =0;
			StringBuffer message = new StringBuffer();
			
			menuChoice = exception(6, menu);
			
			switch(menuChoice){
				case 1:
						String repairName = JOptionPane.showInputDialog("현재 이름 :"+scroe.getName()+"\n수정 하실이름을 입력해주세요 ");
						scroe.setName(repairName);
						message.append("수정되었습니다.");
						break;
				case 2:
					message.append(String.valueOf("현재 이름:"+scroe.getKor()+"\n 수정하실 점수를 입력하세요 "));
					repair = exception(100, message);
					scroe.setKor(repair);
					scroe.setTotal();
					message.delete(0, message.capacity());
					message.append(" 수정되었습니다.");
					break;
				case 3:
					message.append(String.valueOf("현재 이름:"+scroe.getEng()+"\n 수정하실 점수를 입력하세요 "));
					repair = exception(100, message);
					scroe.setEng(repair);
					scroe.setTotal();
					message.delete(0, message.capacity());
					message.append(" 수정되었습니다.");
					break;
				case 4:
					message.append(String.valueOf("현재 이름:"+scroe.getMath()+"\n 수정하실 점수를 입력하세요 "));
					repair = exception(100, message);
					scroe.setMath(repair);
					scroe.setTotal();
					message.delete(0, message.capacity());
					message.append(" 수정되었습니다.");
					break;
					
				case 5:
					list.remove(scroe);
					message.delete(0, message.capacity());
					message.append("삭제되었습니다.");
					break;
					
				case 6:
					message.append("처음화면으로 이동합니다 ");
					break;
			
			}
			JOptionPane.showMessageDialog(null, message);
			
		}
	
		
		public void  overCheck(int bun) {
			
			StringBuffer menu = new StringBuffer();
			
			menu.append("수정하실 정보가 맞으면 1번\n");
			menu.append("수정 정보가 틀리면 2번\n");
			menu.append("취소는 3번");
			
			StringBuffer title = new StringBuffer();
			title.append("이름" +"\t"+"국어"+"\t"+"영어" +"\t"+"수학"+"\t"+"총점 "+"\t"+"평균 ");
			
			int menuChoice =0;
			boolean result =false;
			String searchName = JOptionPane.showInputDialog("정보를 변경할 학생의 이름을 입력하세요");
			
			Iterator<ScoreVO> it  =list.iterator();
			
			ScoreVO scroe;
			
			while(it.hasNext()) {
				scroe = it.next();
				if(scroe.getName().equals(searchName)) {
					result =true;
					System.out.println(title +"\n"+scroe);
					
					menuChoice = exception(3, menu);
					
					switch(menuChoice) {
					
					case 1:
						if(bun==3) {
							updateStudent(scroe);
						}else {
							
							}
						break;
						
					case 2:
						JOptionPane.showMessageDialog(null, "정보를 확인합니다.");
						result = false;
						break;

					case 3:
						JOptionPane.showMessageDialog(null, "메뉴창으로 다시 돌아갑니다.");
						break;
					}
					
					
				}
				if(menuChoice==1||menuChoice ==3) {
					break;
				}
			}
			if(result ==false) {
				JOptionPane.showMessageDialog(null,"검색하신 정보는 없습니다.");
				
			}
			
		}
		
		public void deleteStudent() {
			boolean searchFlag =false;
			Iterator<ScoreVO> it = list.iterator();
			
			String scroeName = JOptionPane.showInputDialog("삭제할 학생의 이름을 입력하세요" );
			while(it.hasNext()) { // 있는지 확인 
				ScoreVO scroe = it.next();  // 찾아
				if(scroe.getName().equals(scroeName)) { // 있다
					JOptionPane.showMessageDialog(null, scroe.getName()+"학생의 정보는 삭제되었습니다.");
					list.remove(scroe);
					searchFlag = true;
					break;
				}
				
			}
			System.out.println(searchFlag);
			if(searchFlag==false) { 
				JOptionPane.showMessageDialog(null, "입력하신 학생의 정보가 없습니다.");
			}
		}	
		
		
		public void searchStudent(String name) { // 학생 검색 
			for(int i =0;i<list.size();i++) {
				if(list.get(i).getName().equals(name)) {  //이름이 같으면 
					System.out.println(list.get(i).toString()); //tostring 으로 출력 
					
				}else { // 없다면 
					JOptionPane.showMessageDialog(null, "입력하신 학생은 없습니다 ");
					break;
				}
			}
		}
		
		
		
		
		
		
		
		
	
	}