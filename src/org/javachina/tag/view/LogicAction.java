package org.javachina.tag.view;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LogicAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ArrayList<String> list = new ArrayList<>();
		list.add("zhangsan");
		list.add("lisi");
		list.add("wangwu");
		request.setAttribute("list", list);
		return mapping.findForward("success");
	}

}
