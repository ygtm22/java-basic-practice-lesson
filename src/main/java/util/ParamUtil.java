package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int amount) {
		int point = 0;
		
		point =  amount * (int) 0.01;
		
		return point;
	}


    /**
     * ポイント計算(ランクあり)
     */
	public static int getPint(int amount, int rank) {
		int point = 0;
		
		point = amount * rank;
		
		return point;
	}


    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
		if (str == null || str.isEmpty()) {
    		return true;
    	}else {
    		return false;
    	}
	}


}
