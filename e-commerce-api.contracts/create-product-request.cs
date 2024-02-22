using System.Runtime.InteropServices.JavaScript;

public record CreateProductRequest (
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

