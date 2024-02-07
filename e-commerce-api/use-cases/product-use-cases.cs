public class ProductUseCases: IProductUseCases
{
    private static readonly Dictionary<Guid,Product> products = new ();
       
    public void createProduct (Product newProduct)
    {
        products.Add(newProduct.Id, newProduct);
    }

    public Product getProductById (Guid id)
    {
        return products[id];
    }

    public void upsertProduct (Guid id, Product product)
    {
        products[id] = product;
    }

    public void deleteProduct (Guid id)
    {
        products.Remove(id);
    }
}