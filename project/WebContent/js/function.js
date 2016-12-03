


function memberDeleteBtn()
{
		
		var password = document.getElementById(password);
		
		alert(id);
		alert(password);
}


function createNormalMember() {
	location.href = "NormalMemberCreateView.jsp";	   
}

function createEmployeeMember() {
	location.href = "EmployeeMemberCreateView.jsp";	   
}



function cancleBtn()
{
	history.go(-1);
}


function normalMemberUpdateBtn() {
	alert("test");
	location.href = "NormalMemberUpdateView.jsp";
}

function memberDeleteBtn() {
	location.href = "MemberDeleteView.jsp";
}

