import React from 'react';
import { Link } from 'react-router-dom';

export default function Home() {
  const featuredProducts = [
    {
      id: 1,
      name: 'Summer Dress',
      price: 59.99,
      image: 'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'New'
    },
    {
      id: 2,
      name: 'Leather Jacket',
      price: 89.99,
      image: 'https://images.unsplash.com/photo-1551028719-00167b16eac5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'Best Seller'
    },
    {
      id: 3,
      name: 'Classic Oxford Shirt',
      price: 69.99,
      image: 'https://images.unsplash.com/photo-1602810318383-e386cc2a3ccf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'Sale'
    },
    {
      id: 4,
      name: 'Floral Maxi Dress',
      price: 89.99,
      image: 'https://images.unsplash.com/photo-1496747611176-843222e1e57c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'New'
    },
    {
      id: 5,
      name: 'Leather Crossbody Bag',
      price: 129.99,
      image: 'https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'Best Seller'
    },
    {
      id: 6,
      name: 'Casual Sneakers',
      price: 69.99,
      image: 'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'Sale'
    },
    {
      id: 7,
      name: 'Designer Watch',
      price: 199.99,
      image: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'Luxury'
    },
    {
      id: 8,
      name: 'Silk Scarf Collection',
      price: 45.99,
      image: 'https://images.unsplash.com/photo-1601924994987-69e26d50dc26?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'Trending'
    },
    {
      id: 9,
      name: 'Premium Sunglasses',
      price: 159.99,
      image: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80',
      tag: 'New'
    }
  ];

  return (
    <div className="min-h-screen">
      {/* Header Banner */}
      <div className="relative h-[500px] bg-cover bg-center" style={{ backgroundImage: 'url("https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")' }}>
        <div className="absolute inset-0 bg-black bg-opacity-30" />
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-full flex items-center justify-center text-center">
          <div className="text-white">
            <h1 className="text-5xl font-bold mb-6">Summer Collection 2025</h1>
            <Link
              to="/products"
              className="inline-block bg-white text-black px-8 py-3 rounded-none font-medium hover:bg-gray-100 transition-colors"
            >
              SHOP NOW
            </Link>
          </div>
        </div>
      </div>

      {/* Shop by Category */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        <h2 className="text-2xl font-bold text-center mb-12">Shop by Category</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          <Link to="/products?category=women" className="group relative">
            <div className="aspect-[3/4] overflow-hidden">
              <img
                src="https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
                alt="Women"
                className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
              />
              <div className="absolute inset-0 bg-black bg-opacity-20" />
              <div className="absolute bottom-0 left-0 p-4">
                <span className="bg-black text-white text-xs px-2 py-1">20% OFF</span>
                <h3 className="text-white text-xl font-bold mt-2">Women</h3>
              </div>
            </div>
          </Link>

          <Link to="/products?category=men" className="group relative">
            <div className="aspect-[3/4] overflow-hidden">
              <img
                src="https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
                alt="Men"
                className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
              />
              <div className="absolute inset-0 bg-black bg-opacity-20" />
              <div className="absolute bottom-0 left-0 p-4">
                <span className="bg-black text-white text-xs px-2 py-1">NEW</span>
                <h3 className="text-white text-xl font-bold mt-2">Men</h3>
              </div>
            </div>
          </Link>

          <Link to="/products?category=kids" className="group relative">
            <div className="aspect-[3/4] overflow-hidden">
              <img
                src="https://images.unsplash.com/photo-1518831959646-742c3a14ebf7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
                alt="Kids"
                className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
              />
              <div className="absolute inset-0 bg-black bg-opacity-20" />
              <div className="absolute bottom-0 left-0 p-4">
                <span className="bg-black text-white text-xs px-2 py-1">30% OFF</span>
                <h3 className="text-white text-xl font-bold mt-2">Kids</h3>
              </div>
            </div>
          </Link>

          <Link to="/products?category=accessories" className="group relative">
            <div className="aspect-[3/4] overflow-hidden">
              <img
                src="https://images.unsplash.com/photo-1492707892479-7bc8d5a4ee93?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"
                alt="Accessories"
                className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
              />
              <div className="absolute inset-0 bg-black bg-opacity-20" />
              <div className="absolute bottom-0 left-0 p-4">
                <h3 className="text-white text-xl font-bold">Accessories</h3>
              </div>
            </div>
          </Link>
        </div>
      </div>

      {/* Featured Products */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 bg-gray-50">
        <h2 className="text-2xl font-bold text-center mb-12">Featured Products</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
          {featuredProducts.map((product) => (
            <div key={product.id} className="group">
              <div className="relative aspect-[3/4] overflow-hidden">
                <img
                  src={product.image}
                  alt={product.name}
                  className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
                />
                <span className="absolute top-4 left-4 bg-black text-white text-xs px-2 py-1">
                  {product.tag}
                </span>
              </div>
              <div className="mt-4">
                <h3 className="text-lg font-medium">{product.name}</h3>
                <p className="text-gray-600">${product.price}</p>
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Newsletter */}
      <div className="bg-white py-16">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-2xl font-bold mb-4">Join Our Newsletter</h2>
          <p className="text-gray-600 mb-8">Subscribe to get special offers and sale updates!</p>
          <form className="max-w-md mx-auto flex gap-4">
            <input
              type="email"
              placeholder="Enter your email"
              className="flex-1 px-4 py-2 border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <button
              type="submit"
              className="bg-black text-white px-6 py-2 hover:bg-gray-800 transition-colors"
            >
              Subscribe
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}