package ch08;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService {
	Map<String, Product> products = new HashMap<>();
	//생성자
	
	public ProductService() {
		Product p =new Product("101", "애플사과폰12","애플전자",1200000,"2020.12.12");
		products.put("101", p);
		
		p =new Product("102", "갤럭시21","삼성전자",1300000,"2021.12.12");
		products.put("102", p);
		
		p =new Product("103", "블랙베리","와랄랄라",1200000,"2022.03.12");
		products.put("103", p);
		
	}
	
	public List<Product> findAll(){
		return new ArrayList<>(products.values());
	}
	public Product find(String id) {
		return products.get(id);
	}
	
	
}
