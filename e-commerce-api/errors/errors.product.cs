using ErrorOr;

namespace e_commerce_api.errors;
public static class Errors
{    
    public static class Product
    {        
        public static Error InvalidStockCount => Error.Validation(
            code: "product.InvalidStockCount",
            description: "The stock number should not be zero or negative"
        );

        public static Error InvalidPrice => Error.Validation(
            code: "product.InvalidPrice",
            description: "The product price shouldn't be negative"
        );

         public static Error InvalidInstallmentsCount => Error.Validation(
            code: "product.InvalidInstallmentsCount",
            description: $"The number of installments should not be higher tHan { models.Product.maxInstallments } or less than 1"
        );
        public static Error NotFound => Error.NotFound(
            code: "product.NotFound",
            description: "Product not found"
        );
        
    }
}