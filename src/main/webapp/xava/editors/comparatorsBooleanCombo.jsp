<%@ include file="../imports.jsp"%>

<%@page import="org.openxava.tab.Tab"%>

<jsp:useBean id="style" class="org.openxava.web.style.Style" scope="request"/>

<%
String comparator = request.getParameter("comparator");
String equal = Tab.EQ_COMPARATOR.equals(comparator)?"selected='selected'":"";
String different = Tab.NE_COMPARATOR.equals(comparator)?"selected='selected'":"";
String prefix = request.getParameter("prefix");
if (prefix == null) prefix = "";
int index = Integer.parseInt(request.getParameter("index"));
%>

<input type="hidden" name="<xava:id name='<%=prefix + "conditionValue." + index%>'/>" value="true">
<input type="hidden" name="<xava:id name='<%=prefix + "conditionValueTo." + index%>'/>" >
<select name="<xava:id name='<%=prefix + "conditionComparator."  + index%>'/>" class=<%=style.getEditor()%>>
	<option value=""></option>
	<option value="<%=Tab.EQ_COMPARATOR%>" <%=equal%>><xava:message key="yes"/></option>
	<option value="<%=Tab.NE_COMPARATOR%>" <%=different%>><xava:message key="no"/></option>
</select>	
	