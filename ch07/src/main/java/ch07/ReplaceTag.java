package ch07;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ReplaceTag extends SimpleTagSupport{
	private String oldWord;
	private String newWord;
	
	public void setOldWord(String oldWord) {
		this.oldWord = oldWord;
	}
	public void setNewWord(String newWord) {
		this.newWord = newWord;
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		JspContext jc = getJspContext();
		JspWriter out = jc.getOut();
		JspFragment body = getJspBody();
		// String은 데이터가 고정 
		StringWriter writer = new StringWriter(); // 데이터 중 일부 변경이 가능
		body.invoke(writer);
		String str = writer.toString(); // StringWriter에 문자열을 String으로 변경
		String newStr = str.replaceAll(oldWord, newWord);
		out.print(newStr);
	}
}
