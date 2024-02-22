using System;
using ErrorOr;
using e_commerce_api.errors;

namespace e_commerce_api.models;

public class Product
{
    public const int maxInstallments = 15;    

    public Guid Id { get; }
    public Guid BrandId { get; }
    public string Model { get; }
    public Guid CategoryId { get; }
    public string Color { get; }
    public dynamic PropertyInfos { get; }
    public PriceInfos PriceInfos { get; }
    public PaymentInfos PaymentInfos { get; }
    public int InStock { get; }

    private Product (
        Guid id,
        Guid brandId,
        string model,
        Guid categoryId,
        string color,
        dynamic propertyInfos,
        PriceInfos priceInfos,
        PaymentInfos paymentInfos,
        int instock
    )
    {
        this.Id = id;
        this.BrandId = brandId;
        this.Model = model;
        this.CategoryId = categoryId;
        this.Color = Color;
        this.PropertyInfos = propertyInfos;
        this.PriceInfos = priceInfos;
        this.PaymentInfos = paymentInfos;
        this.InStock = instock;
    }

    public static ErrorOr<Product> Create(
        Guid id,
        Guid brandId,
        string model,
        Guid categoryId,
        string color,
        dynamic propertyInfos,
        PriceInfos priceInfos,
        PaymentInfos paymentInfos,
        int instock
    ){
        List<Error> errors = new();
        if (instock < 1)
        {
            errors.Add(Errors.Product.InvalidStockCount);
        }

        if (priceInfos.value < 0)
        {
            errors.Add(Errors.Product.InvalidPrice);
        }

        if (paymentInfos.maxInstallments > maxInstallments || paymentInfos.maxInstallments < 1)
        {
            errors.Add(Errors.Product.InvalidInstallmentsCount);
        }

        if (errors.Count > 0)
        {
            return errors;
        }


        return new Product(
            Guid.NewGuid(),
            brandId,
            model,
            categoryId,
            color,
            propertyInfos,
            priceInfos,
            paymentInfos,
            instock
        );
    }
}

