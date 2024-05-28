package jung;

import java.io.Serializable;

public class Sell implements Serializable{
	
	private static final long serialVersionUID = 1L;
			
	private String name;
	private int price;
	private String description;
	private String img;

	public Sell() {
		super();
	}
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

public Sell(String name, int price) {
	this.name=name;
	this.price=price;
 }
}
