public class Product
{
    public Guid Id { get; }
    public Guid BrandId { get; }
    public string Model { get; }
    public Guid CategoryId { get; }
    public string Color { get; }
    public Object PropertyInfos { get; }
    public Object PriceInfos { get; }
    public Object PaymentInfos { get; }
    public int InStock { get; }

    public Product (
        Guid id,
        Guid brandId,
        string model,
        Guid categoryId,
        string color,
        Object propertyInfos,
        Object priceInfos,
        Object paymentInfos,
        int instock
    )
    {
        this.Id = id;
        this.BrandId = brandId;
        this.Model = model;
        this.CategoryId = categoryId;
        this.Color = Color;
        this.PropertyInfos = propertyInfos;
        this.PriceInfos = priceInfos;
        this.PaymentInfos = paymentInfos;
        this.InStock = instock;
    }
}

