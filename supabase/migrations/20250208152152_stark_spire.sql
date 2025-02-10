/*
  # Add More Fashion Products

  This migration adds a variety of new products across all categories.
  
  1. New Products Added
    - Women's: Dresses, tops, pants, and outerwear
    - Men's: Casual wear, formal wear, and accessories
    - Kids': Clothing and accessories for all seasons
    - Accessories: Bags, jewelry, and seasonal items
*/

-- Women's Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Bohemian Maxi Dress',
  'Flowing maxi dress with intricate floral patterns. Perfect for summer events.',
  129.99,
  'https://images.unsplash.com/photo-1495385794356-15371f348c31?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Blue', 'Orange', 'Green'],
  true
),
(
  'Tailored Blazer',
  'Professional blazer with modern cut. Perfect for office wear.',
  179.99,
  'https://images.unsplash.com/photo-1548624313-0396c75d8671?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L'],
  ARRAY['Black', 'Navy', 'Beige'],
  true
),
(
  'Wide-Leg Palazzo Pants',
  'Elegant palazzo pants with flowing silhouette. High-waisted design.',
  89.99,
  'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L', 'XL'],
  ARRAY['Black', 'White', 'Navy'],
  true
),
(
  'Silk Camisole Top',
  'Luxurious silk camisole with adjustable straps. Perfect for layering.',
  69.99,
  'https://images.unsplash.com/photo-1602573991155-21f0143bb45c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'women',
  ARRAY['XS', 'S', 'M', 'L'],
  ARRAY['Ivory', 'Black', 'Rose'],
  true
);

-- Men's Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Casual Linen Shirt',
  'Breathable linen shirt perfect for summer. Relaxed fit.',
  79.99,
  'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['S', 'M', 'L', 'XL', 'XXL'],
  ARRAY['White', 'Blue', 'Beige'],
  true
),
(
  'Quilted Winter Jacket',
  'Warm quilted jacket with premium insulation. Water-resistant.',
  199.99,
  'https://images.unsplash.com/photo-1544923246-77307dd654cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['S', 'M', 'L', 'XL'],
  ARRAY['Navy', 'Black', 'Olive'],
  true
),
(
  'Stretch Chino Shorts',
  'Comfortable chino shorts with stretch fabric. Perfect for casual wear.',
  49.99,
  'https://images.unsplash.com/photo-1591195853828-11db59a44f6b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['28', '30', '32', '34', '36'],
  ARRAY['Khaki', 'Navy', 'Gray'],
  true
),
(
  'Merino Wool Cardigan',
  'Classic cardigan in fine merino wool. Perfect for layering.',
  149.99,
  'https://images.unsplash.com/photo-1621072156002-e2fccdc0b176?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'men',
  ARRAY['S', 'M', 'L', 'XL'],
  ARRAY['Gray', 'Navy', 'Brown'],
  true
);

-- Kids' Products
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Cartoon Print T-Shirt Set',
  'Fun t-shirt set with playful cartoon prints. Pack of three.',
  39.99,
  'https://images.unsplash.com/photo-1622290291468-a28f7a7dc6a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['2Y', '3Y', '4Y', '5Y', '6Y'],
  ARRAY['Multi'],
  true
),
(
  'Winter Puffer Jacket',
  'Warm and cozy puffer jacket with hood. Water-resistant.',
  69.99,
  'https://images.unsplash.com/photo-1503919545889-aef636e10ad4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['3Y', '4Y', '5Y', '6Y', '7Y'],
  ARRAY['Blue', 'Pink', 'Yellow'],
  true
),
(
  'School Uniform Set',
  'Complete school uniform set including shirt, pants/skirt, and tie.',
  79.99,
  'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['4Y', '5Y', '6Y', '7Y', '8Y'],
  ARRAY['Navy', 'Gray'],
  true
),
(
  'Summer Play Set',
  'Comfortable cotton play set with shorts and t-shirt.',
  34.99,
  'https://images.unsplash.com/photo-1519457431-44ccd64a579b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'kids',
  ARRAY['2Y', '3Y', '4Y', '5Y', '6Y'],
  ARRAY['Blue', 'Green', 'Orange'],
  true
);

-- Accessories
INSERT INTO products (name, description, price, image_url, category, size, color, in_stock) VALUES
(
  'Leather Crossbody Bag',
  'Compact leather crossbody bag with adjustable strap. Multiple compartments.',
  129.99,
  'https://images.unsplash.com/photo-1594223274512-ad4803739b7c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Black', 'Brown', 'Tan'],
  true
),
(
  'Pearl Necklace Set',
  'Elegant freshwater pearl necklace and earring set. Perfect for special occasions.',
  89.99,
  'https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['White', 'Pink'],
  true
),
(
  'Winter Scarf and Gloves Set',
  'Warm knitted scarf and gloves set. Made from soft wool blend.',
  49.99,
  'https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Gray', 'Navy', 'Red'],
  true
),
(
  'Summer Beach Tote',
  'Spacious straw beach tote with leather handles. Includes inner zip pocket.',
  69.99,
  'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
  'accessories',
  ARRAY['ONE SIZE'],
  ARRAY['Natural', 'Black/Natural'],
  true
);