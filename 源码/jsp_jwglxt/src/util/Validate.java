package util;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Validate {
	
	/**
	 * 是否为数字和英文验证
	 *
	 */
	public int getIntAndChar(String str){
		char c;
		int i;
		for (i = 0; i<str.length(); i++){
			c = str.charAt(i);
			if(!((c>='0' && c<='9') || (c>='a' && c<='z') || (c>='A' && c<='Z'))){
				break;
			}
		}//判断字符是否在某个区间
		if(i < str.length()){
			return -1;
		}else{
			return 0;
		}
	}
	
	/**
	 * 是否为整数验证
	 *
	 */
	public int getInt(String str){
		char c;
		int i;
		for (i = 0; i<str.length(); i++){
			c = str.charAt(i);
			if(!(c>='0' && c<='9')){
				break;
			}
		}//判断字符是否在某个区间
		if(i < str.length()){
			return -1;
		}else{
			return 0;
		}
	}
	
	/**
	 * 是否为非法字符验证
	 *
	 */
	public boolean getLawlessChar(String str){
		boolean flag = false;
		char c;
		for(int i = 0;i < str.length();i++){
			c = str.charAt(i);
			switch(c){
			case '<' : flag = true; break;
			case '>' : flag = true; break;
			case '"' : flag = true; break;
			case '&' : flag = true; break;
			case ' ' : flag = true; break;
			}
		}
		return flag;
	}
	
	/**
	 * 中文转换
	 * 将UTF-8编码转换成unicode编码
	 */
	public String getUnicode(String str) {
		if(str != null){
			try {
				return new String(str.getBytes("UTF-8"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO 自动生成 catch 块
				e.printStackTrace();
				return str;
			}
		}else{
			return null;
		}
	}
	
	/**
	 * 中文转换
	 * 将unicode编码转换成UTF-8编码
	 */
	public String getUTF8(String str) {
		if(str != null){
			try {
				return new String(str.getBytes("UTF-8"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				// TODO 自动生成 catch 块
				e.printStackTrace();
				return str;
			}
		}else{
			return null;
		}
	}
	
	/**
	 * 格式化日期 年-月-日 小时（0-23）:分钟:秒
	 */
	public String getSystemDate(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		return df.format(date);
	}
	
	/**
	 * 四舍五入
	 */
	public float getRround(float f){
		int tem = (int)(f*100+0.5);
		float ff = ((float)tem/100);
		return ff;
	}
}
