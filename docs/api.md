- [E-COMMERCE API](#e-commerce-api)
    - [Create a Product](#create-product)

## Create Product
### Create Product Request

```js
POST /products
```

```sh
{
    "id": '3434343-4ffgfgf-343ffgfg-343fgfg', 
    "brand_id": '3434343-4ffgfgf-343ffgfg-343fgfg',
    "model": "TV sm2000 4k",
    "category_id": '3434343-4ffgfgf-343ffgfg-343fgfg',
    "color": "#123456",
    "properties": {
        "resolution": {
            "unit": "pixels",
            "value": [3840, 2160]
        },
        "length": {
            "unit": "centimeters",
            "value": 100.50
        },
        "height": {
            "unit": "centimeters",
            "value": 70.40
        }, 
        "inch": 42,
        "weight": {
            "unit": "kilograms",
            "value": 6.56
        }
    },
    "price": {
        "currency": "brl",
        "value": 2400
    },
    "payments": {
        "max_installments": 10,
        "payment_methods": ["debit", "credit", "ticket"]
    },
    "in_stock": 14
}
```

## Create Product Response
```sh
201
```
