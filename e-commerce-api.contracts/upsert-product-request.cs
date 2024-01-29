using System.Runtime.InteropServices.JavaScript;

public record UpsertProductRequest (
    String brand_id,
    String model,
    String category_id,
    String color,
    JSObject properties,
    JSObject price,
    JSObject payments,
    int in_stock
);

