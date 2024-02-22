using System.Runtime.CompilerServices;
using System.Text.Json;
using ErrorOr;
using Microsoft.AspNetCore.Mvc;
using e_commerce_api.use_cases;

using e_commerce_api.models;

[ApiController]
[Route("products")]
public class ProductsController : ApiController
{
    private readonly IProductUseCases productUseCases;
    public ProductsController(IProductUseCases productUseCases)
    {
        this.productUseCases = productUseCases;
    }

    [HttpPost()]
    public IActionResult CreateProduct(CreateProductRequest request)
    {    
        PriceInfos? priceInfos = JsonSerializer.Deserialize<PriceInfos>(request.priceInfos);
        PaymentInfos? paymentInfos = JsonSerializer.Deserialize<PaymentInfos>(request.paymentInfos);

        ErrorOr<Product> tryToCreateProduct = Product.Create (
            Guid.NewGuid(),
            request.brandId,
            request.model,
            request.categoryId,
            request.color,
            request.propertyInfos,
            priceInfos,
            paymentInfos,
            request.inStock
        );

        Console.WriteLine(tryToCreateProduct.Value);

        Product newProduct = tryToCreateProduct.Value;

        ErrorOr<Created> createProductResult = this.productUseCases.createProduct(newProduct);

        return createProductResult.Match(
            created => CreatedAtAction(
                nameof(GetProduct),
                new { id = newProduct.Id },
                value: MapProduct(newProduct)
            ),
            errors => Problem(errors)
        );
    }    


    [HttpGet("{id:guid}")]
    public IActionResult GetProduct(Guid id)
    {
        ErrorOr<Product> getProductResult = this.productUseCases.getProductById(id);
        return getProductResult.Match(
            product => Ok(MapProduct(product)),
            errors => Problem(errors)
        );
        /*
        if (getProductResult.IsError && getProductResult.FirstError == Errors.Product.NotFound)
        {
            return NotFound();
        }
        var product = getProductResult.Value;

        var response = MapProduct(product); 
       
        return Ok(response);
        */
    }

    private static CreateProductResponse MapProduct(Product product)
    {
        return new CreateProductResponse(
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
    }

    [HttpPut("{id:guid}")]
    public IActionResult UpsertProduct(Guid id, UpsertProductRequest request)
    {
        PriceInfos? priceInfos = JsonSerializer.Deserialize<PriceInfos>(request.priceInfos);
        PaymentInfos? paymentInfos = JsonSerializer.Deserialize<PaymentInfos>(request.paymentInfos);
        ErrorOr<Product> tryToCreateProduct = Product.Create (
            id,
            request.brandId,
            request.model,
            request.categoryId,
            request.color,
            request.propertyInfos,
            priceInfos,
            paymentInfos,
            request.inStock
        );  

        Product product = tryToCreateProduct.Value;

        ErrorOr<Updated> upsertProductResult = this.productUseCases.upsertProduct(id, product);

        return upsertProductResult.Match(
            updated => NoContent(),
            errors => Problem(errors)
        );        
    }


    [HttpDelete("{id:guid}")]
    public IActionResult DeleteProduct(Guid id)
    {
        ErrorOr<Deleted> deleteProductResult = this.productUseCases.deleteProduct(id);

        return deleteProductResult.Match(
            deleted => NoContent(),
            errors => Problem(errors)
        );
    }
}