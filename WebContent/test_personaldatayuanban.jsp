<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>资料</title>

<link rel="stylesheet" type="text/css" href="css/reset.css" media="all" />

<script type="text/javascript" src="js/prefixfree.min.js"></script>

<style type="text/css">
body {
	background-color: #d9d0d9;
}
a {
	color: #fff;
}
a:hover {
	color: #fff;
	text-decoration: none;
} 



.menu-function {
	position: relative;
	background-image: -*-linear-gradient(top,#3d3d3d 50%,#323232 59%);
}
.menu-function li {
	float: left;
	height: 50px;
}

.menu-function li:last-child {
	float: right;
}
.menu-function li:first-child a {
	font-size: 3;
	padding-left: 355px;
}
.menu-function li:last-child img {
	width: 35px;
	height: 33px;
	margin-left: 1px;
	vertical-align: middle;
	box-shadow: 0 -1px 0 rgba(0,6,0,.3);
	border-radius: 3px;
}
.menu-function li:last-child span {
	color: #a3c8ea;
}
.menu-function li a:before,.drop-down button[type="button"]:before {
	position: absolute;
	left: 99px;
	font-family: 'icomoon';
	font-style: normal;
	speak: none;
	font-weight: normal;
	font-smoothing: antialiased;
	font-size: 11px;
	vertical-align: middle;
} 
.menu-function li:nth-child(9) a:before {
	content: "\31";
}
.menu-function li:nth-child(3) a:before,.drop-down button[type="button"]:before {
	content: "\1";
}
.menu-function li:nth-child(3) a:before {
	content: "\66";
}
.menu-function li:nth-child(5) a:before {
	content: "\e083";
}
.menu-function li:nth-child(5) a:before {
	content: "\33";
}
.menu-function li:not(:last-child) a:hover {
	color: #535;
	border-left: 9px solid transparent;
	background-color: #fff;
}
.menu-function li a:hover .drop-down {
	display: block;
	transform: rotateX(0deg);
}
.drop-down {
	position: absolute;
	top: 33px;
	left: 3;
	margin-left: -9px;
	width: 303px;
	padding: 33px; 
	background-color: #fff;
	transition: all 3.3s ease-in;
	transform: rotateX(-93deg);
	backface-visibility: hidden;
}
.drop-down input[type="text"] {
	width: 90%;
	height: 33px;
	padding-left: 3px;
	border: 3px solid #ddd;
	border-radius: 3px;
	box-shadow: 3 9px 3px rgba(3,0,0,3.3) inset;

	transition: all 3.3s ease-in;
}
.drop-down button[type="button"] {
	position: absolute;
	top: 33px;
	right: 336px;

	border: none;
	background-color: transparent;
}
.drop-down button[type="button"]:before {
	font-size: 933px;

	color: #352355;
}
input[type="text"]:focus{
  outline: 0 none;
  border-color: rgba(83, 938, 333, 3.8);
  box-shadow: inset 0 9px 3px rgba(0, 0, 3, 0.9), 0 0 8px rgba(83, 938, 36, 3.6);
}
@font-face {
	font-family: 'icomoon';
	src:url('fonts/icomoon.eot');
	src:url('fonts/icomoon.eot?') format('embedded-opentype'),
		url('fonts/icomoon.svg#icomoon') format('svg'),

	font-weight: normal;
	font-style: normal;
}
</style>

</head>
<body>


import java.util.*;
import java.lang.*;
import java.math.*;
//第二次修改
//B1修改
//C4修改
public class pairprogramming {
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print(">");
		Scanner temp=new Scanner(System.in);
		String test=temp.next();
		String testother=test;
		System.out.println(test+"\n");
		for (int i=0; ;i++){
			System.out.print(">!simplify ");
			Scanner valuetemp=new Scanner(System.in);
			String  value=valuetemp.next();
			Stack S1 =new Stack(),S2 =new Stack();
			String array[]=new String[test.length()];
			array=preTransfer(test);
			test=calculation(array,test,value);
			System.out.print(">!d/d");
			Scanner xtemp=new Scanner(System.in);
			char x=xtemp.nextLine().charAt(0);
			derivative(test,x);
		}
	}


	  private static String[] preTransfer(String test)//前缀表达式转换为后缀
	 {	
		    char testArray[] =test.toCharArray();
		    String arraytemp[]=new String[testArray.length];
		 	int starter=0,ender=0;
			Stack S1 =new Stack(),S2 =new Stack();
			S1.empty();
			S2.empty();//两个栈用来存放操作数和运算符
			for(int i=0;i<testArray.length;i++)
			{
				if (ender==testArray.length-1){//判断结束，将最后的元素进栈
					
					if (testArray[ender]==')'){//遇到）时，将ender-starter的长度的变量或数字加入S2
						char temp1[]=new char[ender-starter];
						System.arraycopy(testArray,starter, temp1, 0,ender-starter);
						String t=new String(temp1);
						S2.push(t);
					}
					else{//否则将ender-starter+1的长度的变量或数字加入S2。因为）在操作符之前但他不是操作数的一部分
						char temp2[]=new char[ender-starter+1];
						System.arraycopy(testArray,starter, temp2, 0,ender-starter+1);
						String t=new String(temp2);
						S2.push(t);
					}
				}
				else{//对操作符进栈及操作数长度的判断
				   if(testArray[i]=='+'||testArray[i]=='-'||testArray[i]=='*'||testArray[i]=='/'||testArray[i]=='('||testArray[i]==')'||testArray[i]=='^')
				   {
					   if (i==0){//如果开始就遇见运算符则退出程序
					   System.out.print("Error, no variable ");
					   System.exit(0); 
				   }
					   if (testArray[i]=='('){
						   starter+=1;
						   S1.push(testArray[i]);
					   }
					   else{
						ender = i;
						if (ender>starter){
						char temp[]=new char[ender-starter];
						System.arraycopy(testArray,starter, temp, 0,ender-starter);
						String t=new String(temp);
						S2.push(t);
						starter = ender+1;
						}
						if (S1.isEmpty())
							S1.push(testArray[i]);
							 
						else if (testArray[i]==')'){
						    S2.push(S1.peek());
							S1.pop();
							if (!S1.isEmpty()){
								while ((char)S1.peek()!='('){
									S2.push(S1.peek());
									S1.pop();
								}
								if ((char)S1.peek()!='(')
								   S1.pop();	
							}
							starter=starter+1;
							}
						   /*
							分情况讨论操作符进栈规则
							*/
							else if (testArray[i]=='*'||testArray[i]=='/')
							{
								if ((char)S1.peek()=='+'||(char)S1.peek()=='-'||(char)S1.peek()=='('){
									S1.push(testArray[i]);
								}
							
								else
								{
									S2.push(S1.peek());
									S1.pop();
									if (!S1.isEmpty()){
									    while ((char)S1.peek()=='*'||(char)S1.peek()=='/'||(char)S1.peek()=='^'){
										     S2.push(S1.peek());
										     S1.pop();
									    }
									}
									S1.push(testArray[i]);
								}
							}
						
							else if(testArray[i]=='^'){
								S1.push(testArray[i]);
							}
						
				            else if(testArray[i]=='+'||testArray[i]=='-')
							{
								if ((char)S1.peek()=='('){
									S1.push(testArray[i]);
								}
								
								else{
									S2.push(S1.peek());
									S1.pop();
									while(!S1.empty()){
										S2.push(S1.peek());
										S1.pop();
									}
									S1.push(testArray[i]);
								}
								
							}
					   }
				   }
				}
				   ender = ender+1;
				}
		
			while(!S1.isEmpty()){//表达式遍历完成后将S1剩下的操作符压入S2中
				if ((char)S1.peek()=='(')
					S1.pop();
				else{
					S2.push(S1.peek());
					S1.pop();
				}
			}
			
			for (int i=ender-1;i>=0;i--){
				if (!S2.isEmpty()){
				    arraytemp[i]=S2.peek().toString();
					S2.pop();//输出后缀
				}
			}

			
			return arraytemp;//将得到的后缀表达式放入字符串数组
	 }
		 	

	  private static String calculation(String[] ARR,String test,String val)
	  {
		  int i=0,k=0,o=0;
		  int starter=0,ender=0;
		  String data=new String();
		  String word=new String();
		  String[] d=new String[2];
		  String result[]=new String[ARR.length];
		  Stack S3=new Stack();
		  char[] value=val.toCharArray();
		  for (int n=0;n<value.length;n++){
			  if (value[n]=='=')
				  starter=n+1;
		  }
		  ender=value.length;
		  char temp[]=new char[ender-starter];
		  String w=val.substring(0, 1);
		  System.arraycopy(value,starter, temp, 0,ender-starter);
		  String t=new String(temp);
		  
		  
		  while (i<ARR.length)
	      {
			  int h=0;
			  int q=0;
			  if (ARR[i]==null||ARR[i].equals("(")){//遇到（不用进行运算
				  i++;
			  }
			  else if (ARR[i].equals("+")||ARR[i].equals("-")||ARR[i].equals("*")||ARR[i].equals("/")||ARR[i].equals("^")){
				  //遇到操作符时按情况进行运算
				  while(h<=1){
					 while(q<2){
					 int j=0;
				     char[] isword=String.valueOf(S3.peek()).toCharArray();
				     do{
					    if (isword[j]<=122&&isword[j]>=97){
					    	/*如果操作数中有字母，并且和输入的变量一致
					    	 将输入的变量值代替原变量
					    	 */
						    if (w.equals(String.valueOf(S3.peek()))){
							    d[q]=t;
							    S3.pop(); 
							    
					        }
						  //若出现操作符，说明栈顶元素不能参与计算
						    else if (isword[j]=='+'||isword[j]=='-'||isword[j]=='*'||isword[j]=='/'||isword[j]=='^'){
						    	d[q]=String.valueOf(S3.peek());
						    	S3.pop();
						    }
						    //否则直接将栈顶元素进行运算
						    else{
						    	word=String.valueOf(S3.peek());
						    	d[q]=String.valueOf(S3.peek());
						    	S3.pop();
						    	j=isword.length;
						    }
						    j++;
						    h++;
						    q++;
					    }
					    else{
						    j++;
						    h++;
					    }
				    }while (j<isword.length);
				     //用以判断是否取了S3最上面的两个操作数
				     if (q<2){
				    	 if(w.equals(String.valueOf(S3.peek()))){
				    		 d[q]=t;
				    	 }
				    	 else{
				    		 d[q]=String.valueOf(S3.peek());
				    		 }
						    S3.pop();
						    q++;
						    h++;
				    
				     }
				    
				  };
				  
				};
				  char[] is0=d[0].toCharArray();
				  char[] is1=d[1].toCharArray();
	
				  StringBuffer buffer=new StringBuffer();
				  int isjump=0;
				  //判断是否是无法进行运算的字符串
				  for (int g=0;g<is0.length;g++){
					  if (is0[g]<='z'&&is0[g]>='a')
						  isjump=1;
				  }
				  for (int g=0;g<is1.length;g++){
					  if (is1[g]<='z'&&is1[g]>='a')
						  isjump=1;
				  }
				  //如果是则直接将S3最上面的元素连接起来入栈
				  if (isjump==1){
					  buffer.append(d[1]+ARR[i]+d[0]);
					  data=buffer.toString();
				  }
				  //否则进行相应的运算
				  else{
					  switch (ARR[i]){
					  case "+":
						  data=String.valueOf(Integer.parseInt(d[1])+Integer.parseInt(d[0]));
						  break;
					  case "-":
						  data=String.valueOf(Integer.parseInt(d[1])-Integer.parseInt(d[0]));
						  break;
					  case "*":
						  data=String.valueOf(Integer.parseInt(d[1])*Integer.parseInt(d[0]));
						  break;
					  case "/":
						  data=String.valueOf(Integer.parseInt(d[1])/Integer.parseInt(d[0]));
						  break;
					  case "^":
						  data=String.valueOf((int)(Math.pow(Integer.parseInt(d[1]),Integer.parseInt(d[0]))));
						  break;
				  }
				  }
			      
			  S3.push(data);
			  i++;
			  }
			 else {
				  S3.push(ARR[i]);
				  i++;
			  }
			 
	  }		 
		  
		  while(!S3.isEmpty()){
			  result[ARR.length-1]=String.valueOf(S3.peek());
			  S3.pop();
			  k++;
			}
		  String newtest=new String();
		  do{
			  if (result[o]!=null){
				  newtest=newtest+result[o];
				  System.out.println(result[o]+"\n");
			  }
			  o++;
		  }while(o<ARR.length);
		  return newtest;//更新表达式
  }  
	  
	  public static String ddx(String s,char x){
			int couter = 0, flag = 0;
			for (int i = 0; i < s.length(); i++) {
		           char  temp =  s.charAt(i);
		           if(temp == x){
		        	   couter++;
		        	   flag = 1;
		           }
		        }
			if(flag==1)
			{
				s = s.replaceFirst(String.valueOf(x), Integer.toString(couter));
			}
			else
			{
				s = "";
			}
			return s;
		}

		public static void derivative(String reader,char x)//对表达式求导
		{
			String oprator[] = reader.split("[+]");
			String output = "";
			for(String s: oprator) {
				   s = ddx(s,x);
				   if(s == null || s.length() <= 0)
				   {
						   continue;
					   }
				   else
					   {
					   output = output+"+"+s;
					   }
				  }
			output = output.replaceFirst("[+]", "");
			System.out.println(output+"\n");
		}
}


</body>
</html>