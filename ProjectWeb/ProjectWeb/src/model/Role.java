package model;

public class Role {
	private int roleID;
	private String roleCode;
	private String roleName;
	private String description;
	private int status;
	private int roleUser;
	public Role(int roleID, String roleCode, String roleName, String description, int status, int roleUser) {
		super();
		this.roleID = roleID;
		this.roleCode = roleCode;
		this.roleName = roleName;
		this.description = description;
		this.status = status;
		this.roleUser = roleUser;
	}
	public Role() {}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getRoleUser() {
		return roleUser;
	}
	public void setRoleUser(int roleUser) {
		this.roleUser = roleUser;
	}
	@Override
	public String toString() {
		return "Role [roleID=" + roleID + ", roleCode=" + roleCode + ", roleName=" + roleName + ", description="
				+ description + ", status=" + status + ", roleUser=" + roleUser + "]";
	}
	
	
}
