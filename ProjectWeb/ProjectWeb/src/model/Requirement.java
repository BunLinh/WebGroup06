package model;

public class Requirement {
	String function;//chức năng
	String proposer;//người đề xuất
	String designer;
	String performer;//người thực hiện
	String intendTime;//thời gian dự kiến
	String status;//trạng thái
	public Requirement(String function, String proposer, String designer, String performer, String intendTime,
			String status) {
		super();
		this.function = function;
		this.proposer = proposer;
		this.designer = designer;
		this.performer = performer;
		this.intendTime = intendTime;
		this.status = status;
	}
	public final String getFunction() {
		return function;
	}
	public final void setFunction(String function) {
		this.function = function;
	}
	public final String getProposer() {
		return proposer;
	}
	public final void setProposer(String proposer) {
		this.proposer = proposer;
	}
	public final String getDesigner() {
		return designer;
	}
	public final void setDesigner(String designer) {
		this.designer = designer;
	}
	public final String getPerformer() {
		return performer;
	}
	public final void setPerformer(String performer) {
		this.performer = performer;
	}
	public final String getIntendTime() {
		return intendTime;
	}
	public final void setIntendTime(String intendTime) {
		this.intendTime = intendTime;
	}
	public final String getStatus() {
		return status;
	}
	public final void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Requirement [function=" + function + ", proposer=" + proposer + ", designer=" + designer
				+ ", performer=" + performer + ", intendTime=" + intendTime + ", status=" + status + "]";
	}
	
	
	

}
