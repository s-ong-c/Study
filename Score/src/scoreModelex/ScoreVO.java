package scoreModelex;

public class ScoreVO {
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int total;
    private double avg;

	public ScoreVO() {
		super();
	}

	public ScoreVO(String name, int kor, int eng, int math) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.total = this.kor+this.eng+this.math;
		this.avg = total/3.0;
	}
	
	public void setTotal(){
		this.total = this.kor+this.eng+this.math;
		this.avg = this.total/3.0;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	@Override
	public String toString() {
		return name+"\t"+kor+"\t"+eng+"\t"+math+"\t"+total+"\t"+String.format("%.1f", avg);
	}

}
