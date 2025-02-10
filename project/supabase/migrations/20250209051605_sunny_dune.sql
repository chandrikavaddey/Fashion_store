/*
  # Update Currency to Rupees

  1. Changes
    - Update all product prices to rupees (conversion rate: 1 USD = 83 INR)
    - Update sale prices to rupees
*/

-- Update regular prices
UPDATE products 
SET price = price * 83
WHERE price IS NOT NULL;

-- Update sale prices
UPDATE products 
SET sale_price = sale_price * 83
WHERE sale_price IS NOT NULL;