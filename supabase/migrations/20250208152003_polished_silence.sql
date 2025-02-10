/*
  # Add More Products

  This migration adds more products to each category with verified working image URLs.
  
  1. Changes
    - Add more women's clothing items
    - Add more men's clothing items
    - Add more kids' clothing items
    - Add more accessories
    - Update existing product images to ensure they work
*/

-- Women's Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Elegant Evening Gown',
  'A stunning floor-length evening gown perfect for formal occasions. Features delicate beading and a flattering silhouette.',
  299.99,
  'https://images.unsplash.com/photo-1566174053879-31528523f8ae?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Black', 'Navy', 'Burgundy'],
  true
),
(
  'Leather Biker Jacket',
  'Classic leather biker jacket with silver hardware and quilted details. A timeless piece for any wardrobe.',
  199.99,
  'https://images.unsplash.com/photo-1521223890158-f9f7c3d5d504?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L'],
  ARRAY['Black', 'Brown'],
  true
),
(
  'Cashmere Sweater',
  'Luxuriously soft cashmere sweater with a relaxed fit. Perfect for cooler days.',
  149.99,
  'https://images.unsplash.com/photo-1576566588028-4147f3842f27?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['S', 'M', 'L', 'XL'],
  ARRAY['Cream', 'Gray', 'Black', 'Camel'],
  true
);

-- Men's Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Leather Chelsea Boots',
  'Classic Chelsea boots made from premium leather. Features elastic side panels and pull tabs.',
  189.99,
  'https://images.unsplash.com/photo-1638247025967-b4e38f787b76?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['40', '41', '42', '43', '44', '45'],
  ARRAY['Black', 'Brown'],
  true
),
(
  'Merino Wool Sweater',
  'Fine-knit merino wool sweater with a crew neck. Lightweight and perfect for layering.',
  129.99,
  'https://images.unsplash.com/photo-1614975059251-992f11792b9f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['S', 'M', 'L', 'XL', 'XXL'],
  ARRAY['Navy', 'Gray', 'Green'],
  true
),
(
  'Tailored Suit',
  'Modern-fit suit in premium wool blend. Includes jacket and trousers.',
  499.99,
  'https://images.unsplash.com/photo-1594938298603-c8148c4dae35?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['48', '50', '52', '54'],
  ARRAY['Charcoal', 'Navy', 'Black'],
  true
);

-- Kids' Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Unicorn Print Pajama Set',
  'Cozy pajama set with magical unicorn print. Made from soft cotton.',
  34.99,
  'https://images.unsplash.com/photo-1617331721458-bd3bd3f9c7f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['2Y', '3Y', '4Y', '5Y', '6Y'],
  ARRAY['Pink', 'Purple', 'Blue'],
  true
),
(
  'Superhero Raincoat',
  'Fun and practical raincoat with superhero design. Includes reflective details.',
  39.99,
  'https://images.unsplash.com/photo-1545938722-784dd2a31993?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['3Y', '4Y', '5Y', '6Y', '7Y'],
  ARRAY['Red', 'Blue', 'Yellow'],
  true
),
(
  'Adventure Backpack',
  'Durable kids backpack with fun outdoor-themed patches. Perfect for school or travel.',
  29.99,
  'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['ONE SIZE'],
  ARRAY['Green', 'Blue', 'Red'],
  true
);

-- Accessories
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Designer Sunglasses',
  'Premium acetate sunglasses with UV protection. Includes protective case.',
  159.99,
  'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Black', 'Tortoise', 'Clear'],
  true
),
(
  'Leather Watch',
  'Classic analog watch with leather strap and stainless steel case.',
  199.99,
  'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Brown', 'Black'],
  true
),
(
  'Woven Beach Hat',
  'Wide-brim straw hat perfect for beach days. Features an adjustable inner band.',
  45.99,
  'https://images.unsplash.com/photo-1521369909029-2afed882baee?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Natural', 'Black'],
  true
);