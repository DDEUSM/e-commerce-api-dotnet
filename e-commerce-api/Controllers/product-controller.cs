using Microsoft.AspNetCore.Mvc;

[ApiController]
public class ProductsController : ControllerBase
{
    [HttpPost("/products")]
    public IActionResult CreateProduct(CreateProductRequest request)
    {
        return Ok(request);
    }

    [HttpGet("/products/{id:guid}")]
    public IActionResult GetProduct(Guid id)
    {
        return Ok(id);
    }

    [HttpPut("/products/{id:guid}")]
    public IActionResult UpsertProduct(Guid id, UpsertProductRequest request)
    {
        return Ok(request);
    }

    [HttpDelete("/products/{id:guid}")]
    public IActionResult DeleteProduct(Guid id)
    {
        return Ok(id);
    }
}