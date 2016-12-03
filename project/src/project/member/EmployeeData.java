package project.member;

import java.sql.Blob;

public class EmployeeData extends MemberData{

	public String memberID;
	public String centerDepartmentName;
	public String joinedDate;
	public Blob profilePhoto;
	public String enName;
	public String positionName;
	
	
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getCenterDepartmentName() {
		return centerDepartmentName;
	}
	public void setCenterDepartmentName(String centerDepartmentName) {
		this.centerDepartmentName = centerDepartmentName;
	}
	
	public String getJoinedDate() {
		return joinedDate;
	}
	public void setJoinedDate(String joinedDate) {
		this.joinedDate = joinedDate;
	}
	public Blob getProfilePhoto() {
		return profilePhoto;
	}
	public void setProfilePhoto(Blob profilePhoto) {
		this.profilePhoto = profilePhoto;
	}
	public String getEnName() {
		return enName;
	}
	public void setEnName(String enName) {
		this.enName = enName;
	}
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}
}
