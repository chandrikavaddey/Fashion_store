import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { ShoppingCart, Heart, User, Search } from 'lucide-react';
import { useAuth } from '../context/AuthContext';
import { useCart } from '../context/CartContext';

export default function Navbar() {
  const { user } = useAuth();
  const { items } = useCart();
  const [searchQuery, setSearchQuery] = useState('');

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    // Implement search functionality
  };

  return (
    <nav className="bg-white shadow-md sticky top-0 z-50">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between h-16">
          <div className="flex items-center">
            <Link to="/" className="text-xl font-bold text-gray-800">
              FASHION
            </Link>
            <div className="hidden sm:ml-6 sm:flex sm:space-x-8">
              <Link to="/" className="text-gray-600 hover:text-gray-900 px-3 py-2">
                Home
              </Link>
              <Link to="/products" className="text-gray-600 hover:text-gray-900 px-3 py-2">
                Shop
              </Link>
              <Link to="/products?category=new" className="text-gray-600 hover:text-gray-900 px-3 py-2">
                New Arrivals
              </Link>
              <Link to="/products?category=sale" className="text-gray-600 hover:text-gray-900 px-3 py-2">
                Sale
              </Link>
            </div>
          </div>

          <div className="flex items-center space-x-4">
            <form onSubmit={handleSearch} className="relative">
              <input
                type="text"
                placeholder="Search..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-10 pr-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <Search className="absolute left-3 top-2.5 h-5 w-5 text-gray-400" />
            </form>

            <Link to="/wishlist" className="text-gray-600 hover:text-gray-900 relative">
              <Heart className="h-6 w-6" />
            </Link>

            <Link to="/cart" className="text-gray-600 hover:text-gray-900 relative">
              <ShoppingCart className="h-6 w-6" />
              {items.length > 0 && (
                <span className="absolute -top-2 -right-2 bg-blue-500 text-white rounded-full w-5 h-5 flex items-center justify-center text-xs">
                  {items.length}
                </span>
              )}
            </Link>

            {user ? (
              <Link to="/profile" className="text-gray-600 hover:text-gray-900">
                <User className="h-6 w-6" />
              </Link>
            ) : (
              <Link to="/signin" className="text-gray-600 hover:text-gray-900">
                Sign In
              </Link>
            )}
          </div>
        </div>
      </div>
    </nav>
  );
}