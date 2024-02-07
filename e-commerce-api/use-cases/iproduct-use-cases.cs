public interface IProductUseCases
{
    void createProduct (Product newProduct);
    Product getProductById (Guid id);
    void upsertProduct (Guid id, Product product);
    void deleteProduct (Guid id);
}