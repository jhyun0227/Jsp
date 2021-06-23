function chk() {
		if (frm.password.value != "<%=board.getPassword() %>") {
			alert("암호가 다릅니다. 수정할 수 없습니다.");
			frm.password2.focus();
			frm.password2.value="";
			return false;
		}
	}