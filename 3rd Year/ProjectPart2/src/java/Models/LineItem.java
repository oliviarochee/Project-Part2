package Models;

import java.io.Serializable;
import java.text.NumberFormat;

public class LineItem implements Serializable {

    private LipProduct product;
    private int quantity;

    public LineItem() {}

    public void setProduct(LipProduct p) {
        product = p;
    }

    public LipProduct getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getTotal() {
        double unitprice = Double.valueOf(product.getUnitcost());
        double total = unitprice * quantity;
        return total;
    }

    public String getTotalCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }
}