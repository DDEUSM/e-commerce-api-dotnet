using Microsoft.AspNetCore.Mvc;

[ApiController]
[Route("products")]
public class ProductsController : ControllerBase
{
    private readonly IProductUseCases productUseCases;
    public ProductsController(IProductUseCases productUseCases)
    {
        this.productUseCases = productUseCases;
    }

    [HttpPost()]
    public IActionResult CreateProduct(CreateProductRequest request)
    {
        Product newProduct = new Product (
            Guid.NewGuid(),
            Guid.NewGuid(),
            "sm2000 tv 4k",
            Guid.NewGuid(),
            "#353545",
            new {
                resolution = new int[]{3840, 2160},
                height = new {
                    unit = "centimerters",
                    value = 70 
                },
                length = new {
                    unit = "centimeters",
                    value = 110
                },
                width = new {
                    unit = "centimeters",
                    value = 2
                }
            },
            new {
                currency = "usd",
                value = 2450
            },
            new {
                maxInstallments = 10,
                payment_methods = new string[]{"debit", "credit", "ticket"}
            },
            10
        );

        this.productUseCases.createProduct(newProduct);
        var response = new CreateProductResponse (
            Guid.NewGuid(),
            newProduct.BrandId,
            newProduct.Model,
            newProduct.CategoryId,
            newProduct.Color,
            newProduct.PropertyInfos,
            newProduct.PriceInfos,
            newProduct.PaymentInfos,
            newProduct.InStock
        );
        return CreatedAtAction(
            nameof(GetProduct),
            new { id = newProduct.Id },
            response
        );
    }


    [HttpGet("{id:guid}")]
    public IActionResult GetProduct(Guid id)
    {
        Product product = this.productUseCases.getProductById(id);
        var response = new CreateProductResponse(
            product.Id,
            product.BrandId,
            product.Model,
            product.CategoryId,
            product.Color,
            product.PropertyInfos,
            product.PriceInfos,
            product.PaymentInfos,
            product.InStock
        );
        return Ok(response);
    }


    [HttpPut("{id:guid}")]
    public IActionResult UpsertProduct(Guid id, UpsertProductRequest request)
    {
        var product = new Product(
            id,
            request.brandId,
            request.model,
            request.categoryId,
            request.color,
            request.propertyInfos,
            request.priceInfos,
            request.paymentInfos,
            request.inStock
        );        
        this.productUseCases.upsertProduct(id, product);
        return NoContent();
    }


    [HttpDelete("{id:guid}")]
    public IActionResult DeleteProduct(Guid id)
    {
        this.productUseCases.deleteProduct(id);
        return NoContent();
    }
}