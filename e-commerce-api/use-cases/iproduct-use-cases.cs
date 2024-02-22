using ErrorOr;
using e_commerce_api.models;

namespace e_commerce_api.use_cases;
public interface IProductUseCases
{
    ErrorOr<Created> createProduct (Product newProduct);
    ErrorOr<Product> getProductById (Guid id);
    ErrorOr<Updated> upsertProduct (Guid id, Product product);
    ErrorOr<Deleted> deleteProduct (Guid id);
}