package com.love.utils;
/**
 * @author Administrator
 *功能：自动获得用户的星座信息，随机产生“爱情”宣言功能
 */
public class GetConstellationAndDeclarationEtc {
	/**实现自动获取用户星座信息
	 * @param month
	 * @param day
	 * @return 用户星座信息
	 */
	//定义生肖数组
	public static final String[] zodiacArr = { "猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊" }; 
	private static String Constellation=null;
	private static String tempStrMale=null;
	public static String getConstellation(int month,int day){
		if(month==1){
			if(day<20){
				Constellation="摩羯座";	
			}else{
				Constellation="水瓶座";
			}
		}else if(month==2){
			if(day<19){
				Constellation="水瓶座";	
			}else{
				Constellation="双鱼座";
			}
		}else if(month==3){
			if(day<21){
				Constellation="双鱼座";	
			}else{
				Constellation="白羊座";
			}
		}else if(month==4){
			if(day<20){
				Constellation="白羊座";	
			}else{
				Constellation= "金牛座";
			}
		}else if(month==5){
			if(day<21){
				Constellation="金牛座";	
			}else{
				Constellation="双子座";
			}
		}else if(month==6){
			if(day<22){
				Constellation="双子座";	
			}else{
				Constellation="巨蟹座";
			}
		}else if(month==7){
			if(day<23){
				Constellation="巨蟹座";	
			}else{
				Constellation="狮子座";
			}
		}else if(month==8){
			if(day<23){
				Constellation="狮子座";	
			}else{
				Constellation="处女座";
			}
		}else if(month==9){
			if(day<23){
				Constellation="处女座";	
			}else{
				Constellation="天秤座";
			}
		}else if(month==10){
			if(day<24){
				Constellation="天秤座";	
			}else{
				Constellation="天蝎座";
			}
		}else if(month==11){
			if(day<22){
				Constellation="天蝎座";	
			}else{
				Constellation= "射手座";
			}
		}else if(month==12){
			if(day<22){
				Constellation="射手座";	
			}else{
				Constellation="摩羯座";
			}
		}
		return Constellation;
	}
	/**
	 * 自动为用户分配爱情宣言
	 * @param sex
	 * @return 随机产生用户的爱情宣言
	 */
	public static String getDeclaration(String sex){
		int[] tempMale=RandomArrayClass.getRandomArr(11);//男性
		int[] tempFemale=RandomArrayClass.getRandomArr(13);//女性
		if(sex.equals("男")){
			String[] love_word = {"我们约会吧","让爱情进行到底",
					"执子之手,与子偕老","茫茫人海,今生与你相遇","忠贞不渝,为爱而寻你",
					"你是我的他城,你是我的他生","所谓爱情,最好不过,你在我手,归我所有,我在你手,倾我所有,你住我心,我最舒心,我住你心,我才安心.",
					"幸福就是:雨天能为你撑起一把小伞;幸福就是:牵你的小手与你共度夕阳.","如果你在我身边,我会娶你:如果有来生,我要你嫁给我,如果你走过"
							+ "我身旁,我一定不会错过你.","世界上最容易被忘记的东西,就是爱情.","爱情如命,生命似水."};
			return tempStrMale=love_word[tempMale[0]-1];
		}else{
			String[] love_word = {"我们约会吧","让爱情进行到底","执子之手,与子偕老",
					"茫茫人海,今生与你相遇","如果你爱我,你会舍不得","爱情是,让人想着,然后用"
							+ "一辈子去忘记","你是我的他城,你是我的他生","爱空了,心就空了",
							"所谓爱情,最好不过,你在我手,归我所有,我在你手,倾我所有,你住我心,我最舒心,我住你心,我才安心.",
							"请不要欺骗善良的女孩,这个世界上,善良的女孩太少.","世界上最容易被忘记的 东西,就是爱情",
							"爱情如命,生命似水.","在爱的世界里,没有谁对不起谁,只有谁不懂得珍惜谁."};
			return tempStrMale=love_word[tempFemale[0]-1];
		}
	}
	
	
	/**
	 * 根据日期获取生肖
	 * @return
	 */
	public static String getZodica(int date) {
	    return zodiacArr[date % 12];
	}
	
	/**
	 * 测试
	 * @param args
	 
	public static void main(String[] args) {
		//测试自动生成星座方法
		int month=9;
		int day=1;
		String constellation=getConstellation(month,day);
		System.out.println(constellation);
		//测试随机自动生成爱情宣言的方法
		String declaration=getDeclaration("男");
		System.out.println(declaration);
		String declaration02=getDeclaration("女");
		System.out.println(declaration02);
		//测试随机自动生成
		String SX=getZodica(1995);
		System.out.println(SX);
	}*/
}
