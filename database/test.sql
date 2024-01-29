INSERT INTO product_brands (name) VALUES
  ('samsung'),
  ('sony'),
  ('panasonic'),
  ('tcl'),
  ('hisense'),
  ('vizio'),
  ('philips'),
  ('sharp'),
  ('haier');
  
-- Sample data for products table with updated category_id and brand_id
INSERT INTO products (brand_id, model, category_id, color, properties, price, payments)
VALUES
  ('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'qled q80a', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 123.5}, "height": {"unit": "centimeters", "value": 75.2}, "inch": 65, "weight": {"unit": "kilograms", "value": 28.5}}', '{"currency": "usd", "value": 2000.00}', '{"max_installments": 12, "payment_methods": ["debit", "credit"]}' ),
  ('f1b8599b-99f7-444c-ac21-b5dd9ea6e5d0', 'oled c1', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#3333cc', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 140.0}, "height": {"unit": "centimeters", "value": 90.0}, "inch": 55, "weight": {"unit": "kilograms", "value": 21.0}}', '{"currency": "usd", "value": 2500.00}', '{"max_installments": 18, "payment_methods": ["credit", "ticket"]}' ),
  ('68894c17-3839-47bb-a494-0357001f3144', 'bravia xr a80j', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#990000', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 110.5}, "height": {"unit": "centimeters", "value": 65.8}, "inch": 50, "weight": {"unit": "kilograms", "value": 18.2}}', '{"currency": "eur", "value": 1800.00}', '{"max_installments": 24, "payment_methods": ["credit", "ticket"]}' ),
  ('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'crystal uhd tu8000', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#004d40', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 95.0}, "height": {"unit": "centimeters", "value": 60.5}, "inch": 43, "weight": {"unit": "kilograms", "value": 9.8}}', '{"currency": "usd", "value": 700.00}', '{"max_installments": 12, "payment_methods": ["debit", "credit", "ticket"]}' ),
  ('f1b8599b-99f7-444c-ac21-b5dd9ea6e5d0', 'nanocell 90', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#ff6600', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 125.0}, "height": {"unit": "centimeters", "value": 85.5}, "inch": 65, "weight": {"unit": "kilograms", "value": 26.5}}', '{"currency": "usd", "value": 1500.00}', '{"max_installments": 18, "payment_methods": ["debit", "credit"]}' ),
  ('68894c17-3839-47bb-a494-0357001f3144', 'x80j', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#00695c', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 105.8}, "height": {"unit": "centimeters", "value": 70.0}, "inch": 43, "weight": {"unit": "kilograms", "value": 14.5}}', '{"currency": "eur", "value": 1000.00}', '{"max_installments": 18, "payment_methods": ["debit", "credit"]}' ),
  ('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'the frame', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#b71c1c', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 120.0}, "height": {"unit": "centimeters", "value": 68.0}, "inch": 55, "weight": {"unit": "kilograms", "value": 20.0}}', '{"currency": "usd", "value": 1800.00}', '{"max_installments": 24, "payment_methods": ["credit", "ticket"]}' ),
  ('f1b8599b-99f7-444c-ac21-b5dd9ea6e5d0', 'bx 4k oled', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#1a237e', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 135.0}, "height": {"unit": "centimeters", "value": 82.5}, "inch": 65, "weight": {"unit": "kilograms", "value": 23.8}}', '{"currency": "usd", "value": 2200.00}', '{"max_installments": 18, "payment_methods": ["debit", "credit"]}' ),
  ('68894c17-3839-47bb-a494-0357001f3144', 'x85j', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#004080', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 110.0}, "height": {"unit": "centimeters", "value": 70.2}, "inch": 50, "weight": {"unit": "kilograms", "value": 19.5}}', '{"currency": "eur", "value": 1600.00}', '{"max_installments": 24, "payment_methods": ["credit", "ticket"]}' ),
  ('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'q70t', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#33691e', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 100.0}, "height": {"unit": "centimeters", "value": 63.0}, "inch": 55, "weight": {"unit": "kilograms", "value": 17.0}}', '{"currency": "usd", "value": 1200.00}', '{"max_installments": 12, "payment_methods": ["debit", "credit", "ticket"]}' ),
  ('f1b8599b-99f7-444c-ac21-b5dd9ea6e5d0', 'up8000', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#ff8f00', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 115.0}, "height": {"unit": "centimeters", "value": 75.8}, "inch": 50, "weight": {"unit": "kilograms", "value": 16.2}}', '{"currency": "usd", "value": 900.00}', '{"max_installments": 18, "payment_methods": ["debit", "credit"]}' ),
  ('f16f6898-84ee-48d3-8145-f2e8fcae4c68', 'qled q60a', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#000000', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 108.0}, "height": {"unit": "centimeters", "value": 68.2}, "inch": 55, "weight": {"unit": "kilograms", "value": 18.9}}', '{"currency": "usd", "value": 1200.00}', '{"max_installments": 12, "payment_methods": ["debit", "credit"]}' ),
  ('f1b8599b-99f7-444c-ac21-b5dd9ea6e5d0', 'nano75', 'a7e1cf5f-6633-4e16-9b94-b3e2e4981c00', '#ffffff', '{"resolution": {"unit": "pixels", "value": [3840, 2160]}, "length": {"unit": "centimeters", "value": 120.5}, "height": {"unit": "centimeters", "value": 74.0}, "inch": 65, "weight": {"unit": "kilograms", "value": 21.5}}', '{"currency": "usd", "value": 1500.00}', '{"max_installments": 18, "payment_methods": ["debit", "credit"]}' );
