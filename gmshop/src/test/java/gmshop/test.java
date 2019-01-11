package gmshop;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yueqian.dao.entity.Shopcar;
import com.yueqian.service.ShopCarService;

public class test {

	@Test
	public void testGetUserById() {
		ApplicationContext context = new ClassPathXmlApplicationContext(
				new String[] { "spring.xml", "spring-mybatis.xml" });
		/*
		 * IUserService userService = (IUserService) context.getBean("userService");
		 * User user = userService.getById(1L); System.out.println(user.getLoginName());
		 */
		/*
		 * IProductService productService = (IProductService)
		 * context.getBean("productService"); PageHelper.startPage(1, 10); List<Product>
		 * list = productService.SelectByCategory(1l); PageInfo<Product> pageInfo = new
		 * PageInfo<>(list); List<Product> list2 = pageInfo.getList(); for (Product
		 * product : list2) { System.out.println(product); }
		 */
		ShopCarService shopCarService = (ShopCarService) context.getBean("ShopCarService");
		List<Shopcar> shopcars = shopCarService.findAllByUid(1l);
		for (Shopcar shopcar : shopcars) {
			System.out.println(shopcar);
		}
		/*
		 * Product product = new Product(); product.setName("dads");
		 */
		// int i = productService.insert(product);
		/*
		 * List<Product> list = productService.SelectAll(); System.out.println(list);
		 */

		/*
		 * ImageService imageService = (ImageService) context.getBean("imageService");
		 * Image image = new Image(); image.setUrl("/url"); int i =
		 * imageService.insert(image);
		 */
		/*
		 * CategoryService categoryService = (CategoryService)
		 * context.getBean("categoryService");
		 * 
		 * List<Category> categories = categoryService.selectParent(); for (Category
		 * category : categories) { System.out.println(category); }
		 */
	}

}
