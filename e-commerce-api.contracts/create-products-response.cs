using System.Runtime.InteropServices.JavaScript;

public record CreateProductResponse (
    Guid id,
    Guid brandId,
    string model,
    Guid categoryId,
    string color,
    dynamic propertyInfos,
    dynamic priceInfos,
    dynamic paymentInfos,
    int inStock
);

