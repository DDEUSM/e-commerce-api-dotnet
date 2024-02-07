INSERT INTO product_categories (id, name) VALUES
('8b2df3b5-add5-4c1c-8a77-2b9c6e93b60d', 'tv');

INSERT INTO product_brands (id, name) VALUES 
('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'Samsung'),
('05ae8b3e-ac8c-4cbf-9b87-070877ae8e32', 'LG'),
('572909d4-e10f-44f2-a056-8def658c651f', 'Sony');

INSERT INTO products (brand_id, model, category_id, color, property_infos, price_infos, payment_infos, in_stock)
VALUES
('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'QLED Q80A', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 123.5}, "height": {"unit": "centimeters", "value": 75.2}, "inch": 65, "weight": {"unit": "kilograms", "value": 28.5}}',
 '{"currency": "usd", "value": 2000.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 10
),
('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'QLED Q60A', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 108.9}, "height": {"unit": "centimeters", "value": 63.1}, "inch": 55, "weight": {"unit": "kilograms", "value": 18.9}}',
 '{"currency": "usd", "value": 1200.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 15
),
('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'QLED Q70A', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 123.0}, "height": {"unit": "centimeters", "value": 71.1}, "inch": 75, "weight": {"unit": "kilograms", "value": 32.5}}',
 '{"currency": "usd", "value": 2500.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 5
),
('05ae8b3e-ac8c-4cbf-9b87-070877ae8e32', 'LG OLED C1', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 139.7}, "height": {"unit": "centimeters", "value": 85.1}, "inch": 65, "weight": {"unit": "kilograms", "value": 25.5}}',
 '{"currency": "usd", "value": 3000.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 8
),
('05ae8b3e-ac8c-4cbf-9b87-070877ae8e32', 'LG NanoCell NANO90', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 123.1}, "height": {"unit": "centimeters", "value": 75.4}, "inch": 55, "weight": {"unit": "kilograms", "value": 18.5}}',
 '{"currency": "usd", "value": 1500.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 12
),
('05ae8b3e-ac8c-4cbf-9b87-070877ae8e32', 'LG OLED G1', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 152.6}, "height": {"unit": "centimeters", "value": 83.6}, "inch": 77, "weight": {"unit": "kilograms", "value": 33.5}}',
 '{"currency": "usd", "value": 4000.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 5
),
('572909d4-e10f-44f2-a056-8def658c651f', 'Sony Bravia XR A90J', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 139.1}, "height": {"unit": "centimeters", "value": 84.5}, "inch": 65, "weight": {"unit": "kilograms", "value": 29.3}}',
 '{"currency": "usd", "value": 3500.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 10
),
('572909d4-e10f-44f2-a056-8def658c651f', 'Sony Bravia X90J', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 123.6}, "height": {"unit": "centimeters", "value": 71.1}, "inch": 55, "weight": {"unit": "kilograms", "value": 20.8}}',
 '{"currency": "usd", "value": 1800.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 15
),
('572909d4-e10f-44f2-a056-8def658c651f', 'Sony Bravia X80J', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000',
 '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 108.9}, "height": {"unit": "centimeters", "value": 63.1}, "inch": 49, "weight": {"unit": "kilograms", "value": 12.5}}',
 '{"currency": "usd", "value": 1200.00}',
 '{"max_installments": 12, "payment_methods": ["debit", "credit"]}',
 20
);



