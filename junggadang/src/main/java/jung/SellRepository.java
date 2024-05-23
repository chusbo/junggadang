package jung;

import java.util.ArrayList;

public class SellRepository {
	
	private ArrayList<Sell> listOfSell=new ArrayList<Sell>();
	private ArrayList<Sell> listOfSell1=new ArrayList<Sell>();
	private ArrayList<Sell> listOfSell2=new ArrayList<Sell>();
	
	public SellRepository(){
	
	Sell sell1 = new Sell("../images/financier.jpg", "휘낭시에", 3500);
	sell1.setDescription("아몬드의 풍미와 버터의 고소한 맛이 어우러진 달콤하지만 과하지 않은 고급스러운 맛을 느낄 수 있습니다.");
	
	Sell sell2 = new Sell("../images/saltbread.jpg", "소금빵", 3500);
	sell2.setDescription("바삭하고 부드러운 식감에 소금의 약간의 짭짤한 맛이 달콤한 빵과 어우러져 특별한 맛을 느낄 수 있습니다.");
	
	Sell sell3 = new Sell("../images/madeleine.jpg", "마들렌", 4000);
	sell3.setDescription("레몬 향이 가미된 부드러운 프랑스 전통 디저트를 정가당에서 맛 볼 수 있습니다.");
	
	Sell sell4 = new Sell("../images/scone.jpg", "스콘", 3500);
	sell4.setDescription("겉은 바삭하지만 속은 부드럽고 촉촉한 담백한 맛을 느낄 수 있습니다.");
	
	listOfSell.add(sell1);
	listOfSell.add(sell2);
	listOfSell.add(sell3);
	listOfSell.add(sell4);
	
	Sell sell5 = new Sell("../images.brownie.jpg", "브라우니", 3000);
	sell5.setDescription("진한 초콜릿 맛과 부드러운 질감으로 전 세계적으로 많은 사람들에게 사랑을 받은 브라우니");
	
	Sell sell6 = new Sell("#", "크레이프", 4000);
	sell6.setDescription(null);
	
	Sell sell7 = new Sell("#", "파운드", 4000);
	sell6.setDescription(null);
	
	Sell sell8 = new Sell("#", "카스테라", 4000);
	sell6.setDescription(null);
	
	listOfSell2.add(sell5);
	listOfSell2.add(sell6);
	listOfSell2.add(sell7);
	listOfSell2.add(sell8);
	
	}

public ArrayList<Sell> getAllSell(){
	return listOfSell;
}

public ArrayList<Sell> getAllSell1(){
	return listOfSell1;
}
public ArrayList<Sell> getAllSell2(){
	return listOfSell2;
}
}