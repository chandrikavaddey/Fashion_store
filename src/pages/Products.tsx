import React, { useState, useEffect } from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { Heart, SlidersHorizontal } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { Product } from '../types';
import { useAuth } from '../context/AuthContext';
import toast from 'react-hot-toast';
import { Helmet } from 'react-helmet-async';

export default function Products() {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchParams] = useSearchParams();
  const { user } = useAuth();
  const [wishlist, setWishlist] = useState<string[]>([]);
  const category = searchParams.get('category');

  useEffect(() => {
    fetchProducts();
    if (user) {
      fetchWishlist();
    }
  }, [category, user]);

  const fetchProducts = async () => {
    try {
      let query = supabase.from('products').select('*');
      
      if (category && category !== 'all') {
        query = query.eq('category', category);
      }

      const { data, error } = await query;
      if (error) throw error;
      setProducts(data || []);
    } catch (error) {
      console.error('Error fetching products:', error);
      toast.error('Failed to load products');
    } finally {
      setLoading(false);
    }
  };

  const fetchWishlist = async () => {
    try {
      const { data, error } = await supabase
        .from('wishlists')
        .select('product_id')
        .eq('user_id', user?.id);

      if (error) throw error;
      setWishlist(data.map(item => item.product_id));
    } catch (error) {
      console.error('Error fetching wishlist:', error);
    }
  };

  const toggleWishlist = async (productId: string) => {
    if (!user) {
      toast.error('Please sign in to add items to your wishlist');
      return;
    }

    try {
      const isInWishlist = wishlist.includes(productId);

      if (isInWishlist) {
        // Remove from wishlist
        const { error } = await supabase
          .from('wishlists')
          .delete()
          .eq('user_id', user.id)
          .eq('product_id', productId);

        if (error) throw error;
        setWishlist(prev => prev.filter(id => id !== productId));
        toast.success('Removed from wishlist');
      } else {
        // Add to wishlist
        const { error } = await supabase
          .from('wishlists')
          .insert([{ user_id: user.id, product_id: productId }]);

        if (error) throw error;
        setWishlist(prev => [...prev, productId]);
        toast.success('Added to wishlist');
      }
    } catch (error) {
      console.error('Error updating wishlist:', error);
      toast.error('Failed to update wishlist');
    }
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center h-64">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-gray-900"></div>
      </div>
    );
  }

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <Helmet>
        <title>{category ? `${category.charAt(0).toUpperCase() + category.slice(1)} Products` : 'All Products'} - Fashion Store</title>
      </Helmet>

      <div className="flex justify-between items-center mb-8">
        <h1 className="text-3xl font-bold text-gray-900">
          {category ? `${category.charAt(0).toUpperCase() + category.slice(1)} Products` : 'All Products'}
        </h1>
        <button className="flex items-center text-gray-600 hover:text-gray-900">
          <SlidersHorizontal className="h-5 w-5 mr-2" />
          Filter
        </button>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
        {products.map((product) => (
          <div key={product.id} className="group relative">
            <div className="relative aspect-[3/4] overflow-hidden rounded-lg bg-gray-100">
              <img
                src={product.image_url}
                alt={product.name}
                className="h-full w-full object-cover object-center transition-transform duration-300 group-hover:scale-105"
              />
              <button
                onClick={(e) => {
                  e.preventDefault();
                  toggleWishlist(product.id);
                }}
                className={`absolute top-4 right-4 p-2 rounded-full ${
                  wishlist.includes(product.id)
                    ? 'bg-red-500 text-white'
                    : 'bg-white text-gray-900'
                } hover:scale-110 transition-transform`}
              >
                <Heart className={`h-5 w-5 ${wishlist.includes(product.id) ? 'fill-current' : ''}`} />
              </button>
            </div>

            <div className="mt-4">
              <Link to={`/product/${product.id}`}>
                <h3 className="text-sm text-gray-700">{product.name}</h3>
                <p className="mt-1 text-lg font-medium text-gray-900">
                  {product.sale_price ? (
                    <>
                      <span className="text-red-600">₹{product.sale_price.toFixed(2)}</span>
                      <span className="ml-2 line-through text-gray-500">₹{product.price.toFixed(2)}</span>
                    </>
                  ) : (
                    <span>₹{product.price.toFixed(2)}</span>
                  )}
                </p>
              </Link>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}