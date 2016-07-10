package org.javachina.tag.view;

import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.javachina.tag.dto.PersonDto;

public class TestAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("*******");
		request.setAttribute("str", "一个字符串");
		PersonDto dto = new PersonDto();
		dto.setId(1001);
		dto.setName("lisi");
		dto.setBirth(new Date(System.currentTimeMillis()));
		ArrayList<String> list = new ArrayList<>();
		list.add("wangwang");
		list.add("lili");
		request.setAttribute("list", list);
		request.setAttribute("person", dto);
		//request.getRequestDispatcher("tag.jsp").forward(request, response);
		//response.sendRedirect(request.getContextPath()+"/tag.jsp");
		//System.out.println("######");
		return mapping.findForward("success");
	}
	
}
