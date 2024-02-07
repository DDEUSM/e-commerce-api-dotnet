using System.Runtime.InteropServices.JavaScript;

public record CreateProductResponse (
    Guid id,
    Guid brandId,
    string model,
    Guid categoryId,
    string color,
    Object propertyInfos,
    Object priceInfos,
    Object paymentInfos,
    int inStock
);

