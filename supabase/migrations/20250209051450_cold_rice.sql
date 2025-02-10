/*
  # Add New Arrivals and Sale Products

  1. New Tables
    - No new tables created
  
  2. Changes
    - Add new products with 'new' category
    - Add new products with 'sale' category
    - Add sale_price column to products table
  
  3. Data
    - Insert new products for New Arrivals
    - Insert new products for Sale items
*/

-- Add sale_price column if it doesn't exist
DO $$ 
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns 
    WHERE table_name = 'products' AND column_name = 'sale_price'
  ) THEN
    ALTER TABLE products ADD COLUMN sale_price decimal(10,2);
  END IF;
END $$;

-- New Arrivals Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Limited Edition Sequin Dress',
  'Brand new sequin dress with modern cut and elegant design. Perfect for special occasions.',
  199.99,
  'https://images.unsplash.com/photo-1566174053879-31528523f8ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'new',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Silver', 'Gold', 'Black'],
  true
),
(
  'Premium Leather Sneakers',
  'New arrival premium leather sneakers with comfort insoles. Modern design meets comfort.',
  149.99,
  'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'new',
  ARRAY['36', '37', '38', '39', '40', '41', '42'],
  ARRAY['White', 'Black', 'Gray'],
  true
),
(
  'Sustainable Denim Collection',
  'New eco-friendly denim collection made from recycled materials. Modern fit with conscious design.',
  129.99,
  'https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'new',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Light Blue', 'Dark Blue', 'Black'],
  true
);

-- Sale Products
INSERT INTO products (name, description, price, sale_price, image_url, category, size, color, in_stock) VALUES
(
  'Summer Collection Dress',
  'Beautiful summer dress with floral pattern. Limited time offer.',
  89.99,
  49.99,
  'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'sale',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Blue', 'Pink', 'White'],
  true
),
(
  'Classic Wool Coat',
  'Timeless wool coat perfect for winter. Special seasonal discount.',
  299.99,
  199.99,
  'https://images.unsplash.com/photo-1544923246-77307dd654cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'sale',
  ARRAY['S', 'M', 'L', 'XL'],
  ARRAY['Camel', 'Black', 'Gray'],
  true
),
(
  'Designer Handbag',
  'Premium leather handbag with gold hardware. Limited stock clearance.',
  199.99,
  149.99,
  'https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'sale',
  ARRAY['ONE SIZE'],
  ARRAY['Black', 'Brown'],
  true
);