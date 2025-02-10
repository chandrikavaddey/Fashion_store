// Update the post function in api.ts
export async function post<T>(endpoint: string, data: any): Promise<ApiResponse<T>> {
  try {
    if (endpoint.startsWith('/wishlist')) {
      const { data: result, error } = await supabase
        .from('wishlists')
        .insert([{
          user_id: (await supabase.auth.getUser()).data.user?.id,
          product_id: data.productId
        }])
        .select()
        .single();
      
      return { data: result, error: error?.message };
    }
    
    if (endpoint.startsWith('/auth')) {
      if (endpoint.includes('/signup')) {
        const { data: result, error } = await supabase.auth.signUp({
          email: data.email,
          password: data.password
        });
        return { data: result, error: error?.message };
      }
      
      if (endpoint.includes('/signin')) {
        const { data: result, error } = await supabase.auth.signInWithPassword({
          email: data.email,
          password: data.password
        });
        return { data: result, error: error?.message };
      }
    }
    
    return { error: 'Endpoint not implemented' };
  } catch (error: any) {
    return { error: error.message };
  }
}