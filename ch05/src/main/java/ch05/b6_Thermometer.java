package ch05;

import java.util.HashMap;
import java.util.Map;

public class b6_Thermometer {
	Map<String, Double> th = new HashMap<String, Double>();
	
	public void setTh(String loc, double value) { // 지역 온도 저장
		th.put(loc, value);
	}
	public double getTh(String loc) { // 지역 온도를 읽을 때
		return th.get(loc);
	}
	public double getFarenheit(String loc) { // 화씨 온도 변경
		return th.get(loc) * 1.8 + 32;
	}
}
