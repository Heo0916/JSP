/**
 *  타당성 체크를 위한 JS
 */
function infoConfirm() {
	if (document.reg_frm.id.value.length == 0 ) {
		alert("아이디는 필수 입력 사항입니다.");
		reg_frm.id.focus();
		return; 
	}
	if (document.reg_frm.id.value.length < 4  ) {
		alert("아이디는 4자 이상이어야 합니다.");
		reg_frm.id.focus();
		return; 
	}
	if (document.reg_frm.pw.value.length == 0 ) {
		alert("비밀번호는 필수 입력 사항입니다.");
		reg_frm.pw.focus();
		return; 
	}
	if (document.reg_frm.pw.value.length != 
			document.reg_frm.pw_check.value.length ) {
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return; 
	}
	if (document.reg_frm.name.value.length == 0 ) {
		alert("이름은 필수 입력 사항입니다.");
		reg_frm.name.focus();
		return; 
	}
	if (document.reg_frm.eMail.value.length == 0 ) {
		alert("이메일은 필수 입력 사항입니다.");
		reg_frm.eMail.focus();
		return; 
	}
	document.reg_frm.submit();
}

function updateInfoConfirm() { // 정보수정 데이터의 타당성 검사
	if (document.reg_frm.pw.value.length == 0 ) {
		alert("비밀번호는 필수 입력 사항입니다.");
		reg_frm.pw.focus();
		return; 
	}
	if (document.reg_frm.pw.value.length != 
			document.reg_frm.pw_check.value.length ) {
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return; 
	}
	if (document.reg_frm.eMail.value.length == 0 ) {
		alert("이메일은 필수 입력 사항입니다.");
		reg_frm.eMail.focus();
		return; 
	}	
	document.reg_frm.submit();
}

