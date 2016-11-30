package com.love.utils;

public class RandomArrayClass {
	//测试
	public static void main(String[] args) {
		for(int t:getRandomArr(27)){
			System.out.print(t+" ");
		}
	}
	//产生随机不重复数组的方法
	public static int[] getRandomArr(int count){
		int[] original=new int[count];//原始数组
		int[] originalObj=new int[count];//目标数组 
		for (int i = 0; i < original.length; i++) {
			original[i]=i+1;
		}
		for (int num,i=0;i<count;i++){ 
			do{ 
				num=(int)Math.floor(Math.random()*count); 
			}while(original[num]==-1); 
			if(original[num]!=-1){
				originalObj[i]=original[num];
			} 
			original[num]=-1; 
		} 
			return originalObj;
	}		
}
