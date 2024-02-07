using System.Runtime.InteropServices.JavaScript;

public record UpsertProductRequest (        
    Guid brandId,
    string model,
    Guid categoryId,
    string color,
    Object propertyInfos,
    Object priceInfos,
    Object paymentInfos,
    int inStock
);



