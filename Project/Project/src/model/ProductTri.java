package model;

public class ProductTri {
	private String productID;
	private String productName;
	private String productImages;
	private float productPrice;
	private String subCatelogyID;

	public ProductTri() {

	}

	public ProductTri(String productID, String productName, String productImages, float productPrice,
			String subCatelogyID) {

		this.productID = productID;
		this.productName = productName;
		this.productImages = productImages;
		this.productPrice = productPrice;
		this.subCatelogyID = subCatelogyID;
	}

	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImages() {
		return productImages;
	}

	public void setProductImages(String productImages) {
		this.productImages = productImages;
	}

	public float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	public String getSubCatelogyID() {
		return subCatelogyID;
	}

	public void setSubCatelogyID(String subCatelogyID) {
		this.subCatelogyID = subCatelogyID;
	}

}
