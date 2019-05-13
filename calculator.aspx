<%@ Page Language="C#" Debug="true" %>
<script runat="server">
	void Enter_Click(Object Sender, EventArgs E)
        {
		string a = u1.Text;
		string b = u2.Text;
		float x = Convert.ToSingle(a);
		float y = Convert.ToSingle(b);
		float z;

		string c = f1.SelectedItem.Text;

		if ( c == "+")
		{
			z = x + y;
			Message.Text = u1.Text + f1.Text + u2.Text +"="+Convert.ToString(z);
		}

		else if ( c == "-")
		{
			z = x - y;
			Message.Text = u1.Text + f1.Text + u2.Text +"="+ Convert.ToString(z);
		}

		else if ( c == "*")
		{
			z = x * y;
			Message.Text = u1.Text + f1.Text + u2.Text +"="+ Convert.ToString(z);
		}

		else if ( c == "/")
		{
			if(y==0)
			{
				Message.Text="����������Ϊ0";
			}
			else	
			{
				z= x / y;
				Message.Text= u1.Text + f1.Text + u2.Text +"="+Convert.ToString(z);
			}
		}
	}
</script>

<html>
<head>
	<title>һ����ʾ��</title>
</head>
<body>
	<div  align="center">
	<p><h3>�򵥵ļ�����</h3></p>
	<fieldset style="width:500px;height:186px;solid #fff;">
	<form runat=server>
		�������һ������
		<asp:textbox id="u1" runat="server" /> 

		<asp:RequiredFieldValidator ID="c1" 
		 runat="server"
		 ControlToValidate="u1"
		 Display="Dynamic"
   		 ErrorMessage="����������">
		</asp:RequiredFieldValidator>

		<asp:RangeValidator ID="r1"
  		 runat="server"
  		 ControlToValidate="u1"
  		 ErrorMessage="������Χ"
  		 MaximumValue="999999"  MinimumValue="0"
   		 Type="Integer"
  		 Display="Dynamic" >
		</asp:RangeValidator> 

		<asp:RegularExpressionValidator ID="z1"
   		 runat="server"
   		 ControlToValidate="u1"
   		 ErrorMessage="������һ������"
   		 ValidationExpression="\d{1,}"
   		 Display="Dynamic" >
		</asp:RegularExpressionValidator> 
		

		<br/>
		<br/>
		��ѡ���������
		<asp:DropDownList id="f1" runat="server">
		<asp:ListItem>+</asp:ListItem>
		<asp:ListItem>-</asp:ListItem>
		<asp:ListItem>*</asp:ListItem>
		<asp:ListItem>/</asp:ListItem>
		</asp:DropDownList>
		<br/>
		<br/>
		������ڶ�������
		<asp:textbox id="u2" runat="server" /> 

		<asp:RequiredFieldValidator ID="c2" 
		 runat="server"
		 ControlToValidate="u2"
		 Display="Dynamic"
   		 ErrorMessage="����������">
		</asp:RequiredFieldValidator>

		<asp:RangeValidator ID="r2"
  		 runat="server"
  		 ControlToValidate="u2"
  		 ErrorMessage="������Χ"
  		 MaximumValue="999999"  MinimumValue="0"
   		 Type="Integer"
  		 Display="Dynamic" >
		</asp:RangeValidator>

		<asp:RegularExpressionValidator ID="z2"
   		 runat="server"
   		 ControlToValidate="u2"
   		 ErrorMessage="������һ������"
   		 ValidationExpression="\d{1,}"
   		 Display="Dynamic" >
		</asp:RegularExpressionValidator> 

		<br/>
		<br/>
		<asp:button id="enter" text="ȷ��" Onclick="Enter_Click" runat="server" />
		<p>
		<asp:label id="Message"  runat=server/>
	</form>
	</div>
</body>
</html>

