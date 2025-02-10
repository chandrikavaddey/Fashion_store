import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Trash2 } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { useAuth } from '../context/AuthContext';
import { Product } from '../types';
import toast from 'react-hot-toast';

export default function Wishlist() {
  const { user } = useAuth();
  const navigate = useNavigate();
  const [wishlistItems, setWishlistItems] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!user) {
      navigate('/signin');
      return;
    }

    fetchWishlistItems();
  }, [user, navigate]);

  const fetchWishlistItems = async () => {
    try {
      const { data, error } = await supabase
        .from('wishlists')
        .select(`
          product_id,
          products (*)
        `)
        .eq('user_id', user?.id);

      if (error) throw error;

      const products = data.map(item => item.products) as Product[];
      setWishlistItems(products);
    } catch (error) {
      console.error('Error fetching wishlist:', error);
      toast.error('Failed to load wishlist');
    } finally {
      setLoading(false);
    }
  };

  const removeFromWishlist = async (productId: string) => {
    try {
      const { error } = await supabase
        .from('wishlists')
        .delete()
        .eq('user_id', user?.id)
        .eq('product_id', productId);

      if (error) throw error;

      setWishlistItems(prev => prev.filter(item => item.id !== productId));
      toast.success('Removed from wishlist');
    } catch (error) {
      console.error('Error removing from wishlist:', error);
      toast.error('Failed to remove item');
    }
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center h-64">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-gray-900"></div>
      </div>
    );
  }

  if (wishlistItems.length === 0) {
    return (
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        <div className="text-center">
          <h2 className="text-2xl font-bold text-gray-900 mb-4">Your wishlist is empty</h2>
          <p className="text-gray-600 mb-8">Browse our products and add your favorites to the wishlist!</p>
          <Link
            to="/products"
            className="inline-block bg-gray-900 text-white px-6 py-3 rounded-md hover:bg-gray-800 transition-colors"
          >
            Browse Products
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <h1 className="text-3xl font-bold text-gray-900 mb-8">My Wishlist</h1>
      <div className="grid grid-cols-1 gap-6">
        {wishlistItems.map((item) => (
          <div key={item.id} className="flex items-center space-x-4 bg-white p-4 rounded-lg shadow-sm">
            <Link to={`/product/${item.id}`} className="flex-shrink-0">
              <img
                src={item.image_url}
                alt={item.name}
                className="w-24 h-24 object-cover rounded-md"
              />
            </Link>
            <div className="flex-1">
              <Link to={`/product/${item.id}`}>
                <h3 className="text-lg font-medium text-gray-900">{item.name}</h3>
              </Link>
              <p className="text-sm text-gray-600">{item.description}</p>
              <p className="text-lg font-medium text-gray-900 mt-2">${item.price}</p>
            </div>
            <div className="flex items-center space-x-4">
              <Link
                to={`/product/${item.id}`}
                className="bg-gray-900 text-white px-4 py-2 rounded-md hover:bg-gray-800 transition-colors"
              >
                View Details
              </Link>
              <button
                onClick={() => removeFromWishlist(item.id)}
                className="text-red-600 hover:text-red-700 p-2"
              >
                <Trash2 className="h-5 w-5" />
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}