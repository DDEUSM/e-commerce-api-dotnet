using ErrorOr;
using e_commerce_api.models;
using e_commerce_api.errors;

namespace e_commerce_api.use_cases;
public class ProductUseCases: IProductUseCases
{
    private static readonly Dictionary<Guid,Product> products = new ();
       
    public ErrorOr<Created> createProduct (Product newProduct)
    {
        products.Add(newProduct.Id, newProduct);

        return Result.Created;             
    }

    public ErrorOr<Product> getProductById (Guid id)
    {
        if (products.TryGetValue(id, out var product))
        {
            return product;
        }
        return Errors.Product.NotFound;
    }

    public ErrorOr<Updated> upsertProduct (Guid id, Product product)
    {
        products[id] = product;
        return Result.Updated;
    }

    public ErrorOr<Deleted> deleteProduct (Guid id)
    {
        products.Remove(id);
        return Result.Deleted;
    }
}