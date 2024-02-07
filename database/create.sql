DROP TABLE products;
DROP TABLE product_brands;
DROP TABLE product_categories;

CREATE TABLE product_brands (
	id UUID PRIMARY KEY NOT NULL  DEFAULT (GEN_RANDOM_UUID ()),
	name TEXT NOT NULL
);

CREATE TABLE product_categories (
	id UUID PRIMARY KEY NOT NULL DEFAULT(GEN_RANDOM_UUID ()),
	name TEXT NOT NULL
);

CREATE TABLE products (
	id UUID PRIMARY KEY NOT NULL DEFAULT(gen_random_uuid ()),
	brand_id UUID REFERENCES product_brands(id),
	model TEXT NOT NULL,
	category_id UUID REFERENCES product_categories(id),
	color VARCHAR(9) NOT NULL,
	property_infos JSONB NOT NULL,
	price_infos JSONB NOT NULL,
	payment_infos JSONB NOT NULL,
	in_stock INTEGER DEFAULT(FLOOR(RANDOM()*100)+1)
);

INSERT INTO product_categories (id, name) VALUES
('a7e1cf5f-6633-4e16-9b94-b3e2e4981c00','tv');

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
);
