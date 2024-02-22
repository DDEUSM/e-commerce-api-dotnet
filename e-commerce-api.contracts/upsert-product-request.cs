using System.Runtime.InteropServices.JavaScript;

public record UpsertProductRequest (        
    Guid brandId,
    string model,
    Guid categoryId,
    string color,
    dynamic propertyInfos,
    dynamic priceInfos,
    dynamic paymentInfos,
    int inStock
);



