/*
  # Add sample products for fashion store

  1. Sample Products
    - Women's clothing (dresses, tops, bottoms, etc.)
    - Men's clothing (shirts, pants, jackets, etc.)
    - Kids' clothing (dresses, sets, etc.)
    - Accessories (jewelry, bags, etc.)

  2. Categories
    - women
    - men
    - kids
    - accessories
*/

-- Women's Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Floral Summer Dress',
  'Beautiful floral print dress perfect for summer days. Features a flattering A-line silhouette and comfortable cotton blend fabric.',
  59.99,
  'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Blue', 'Pink', 'White'],
  true
),
(
  'Classic Denim Jacket',
  'Timeless denim jacket with a slightly oversized fit. Perfect for layering in any season.',
  79.99,
  'https://images.unsplash.com/photo-1527016021513-b09758b777bc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['S', 'M', 'L', 'XL'],
  ARRAY['Light Blue', 'Dark Blue', 'Black'],
  true
),
(
  'High-Waist Yoga Leggings',
  'High-performance yoga leggings with moisture-wicking fabric and high-waist design for maximum comfort.',
  49.99,
  'https://images.unsplash.com/photo-1506629082955-511b1aa562c8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L'],
  ARRAY['Black', 'Navy', 'Gray'],
  true
),
(
  'Silk Blouse',
  'Elegant silk blouse with a relaxed fit and subtle sheen. Perfect for both office and evening wear.',
  89.99,
  'https://images.unsplash.com/photo-1598554747436-c9293d6a588f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['White', 'Black', 'Blush'],
  true
);

-- Men's Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Classic Oxford Shirt',
  'Timeless Oxford shirt made from premium cotton. Features a regular fit and buttoned cuffs.',
  69.99,
  'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['S', 'M', 'L', 'XL', 'XXL'],
  ARRAY['White', 'Light Blue', 'Pink'],
  true
),
(
  'Slim Fit Chinos',
  'Modern slim fit chinos made from stretch cotton for comfort. Perfect for both casual and semi-formal occasions.',
  59.99,
  'https://images.unsplash.com/photo-1473966968600-fa801b869a1a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['28', '30', '32', '34', '36'],
  ARRAY['Khaki', 'Navy', 'Olive'],
  true
),
(
  'Wool Blend Blazer',
  'Sophisticated wool blend blazer with a modern cut. Perfect for formal occasions or business wear.',
  199.99,
  'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['S', 'M', 'L', 'XL'],
  ARRAY['Navy', 'Charcoal', 'Black'],
  true
),
(
  'Premium Denim Jeans',
  'Classic fit jeans made from premium denim with slight stretch for comfort.',
  89.99,
  'https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['28', '30', '32', '34', '36'],
  ARRAY['Dark Blue', 'Light Blue', 'Black'],
  true
);

-- Kids' Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Dinosaur Print T-Shirt',
  'Fun dinosaur print t-shirt made from soft cotton. Perfect for everyday wear.',
  24.99,
  'https://images.unsplash.com/photo-1519278409-1f56fdda7fe5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['2Y', '3Y', '4Y', '5Y', '6Y'],
  ARRAY['Blue', 'Green', 'Gray'],
  true
),
(
  'Floral Summer Dress Set',
  'Adorable floral print dress set including a matching headband. Perfect for special occasions.',
  39.99,
  'https://images.unsplash.com/photo-1518831959646-742c3a14ebf7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['2Y', '3Y', '4Y', '5Y', '6Y'],
  ARRAY['Pink', 'Yellow', 'Blue'],
  true
),
(
  'Comfortable Jogger Set',
  'Cozy jogger set including sweatshirt and pants. Perfect for active kids.',
  44.99,
  'https://images.unsplash.com/photo-1519457431-44ccd64a579b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['2Y', '3Y', '4Y', '5Y', '6Y'],
  ARRAY['Gray', 'Navy', 'Red'],
  true
);

-- Accessories
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Classic Leather Tote',
  'Spacious leather tote bag with internal pockets. Perfect for everyday use.',
  129.99,
  'https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Black', 'Brown', 'Tan'],
  true
),
(
  'Statement Necklace',
  'Eye-catching statement necklace perfect for adding elegance to any outfit.',
  39.99,
  'https://images.unsplash.com/photo-1599643478518-a784e5dc4c8f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Gold', 'Silver'],
  true
),
(
  'Silk Scarf',
  'Luxurious silk scarf with a beautiful print. Versatile accessory for any season.',
  49.99,
  'https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Multicolor'],
  true
);