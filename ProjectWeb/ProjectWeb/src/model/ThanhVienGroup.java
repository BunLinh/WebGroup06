package model;

public class ThanhVienGroup {
	int mssv;
	String name;
	String work;
	String result;
	String progress;
	public ThanhVienGroup(int mssv, String name, String work, String result, String progress) {
		super();
		this.mssv = mssv;
		this.name = name;
		this.work = work;
		this.result = result;
		this.progress = progress;
	}
	public final int getMssv() {
		return mssv;
	}
	public final void setMssv(int mssv) {
		this.mssv = mssv;
	}
	public final String getName() {
		return name;
	}
	public final void setName(String name) {
		this.name = name;
	}
	public final String getWork() {
		return work;
	}
	public final void setWork(String work) {
		this.work = work;
	}
	public final String getResult() {
		return result;
	}
	public final void setResult(String result) {
		this.result = result;
	}
	public final String getProgress() {
		return progress;
	}
	public final void setProgress(String progress) {
		this.progress = progress;
	}
	@Override
	public String toString() {
		return "ThanhVienGroup [mssv=" + mssv + ", name=" + name + ", work=" + work + ", result=" + result
				+ ", progress=" + progress + "]";
	}

	
}
