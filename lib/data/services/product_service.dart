import '../../core/models/product.dart';

class MockProductService {
  final List<Product> _products = [
    Product(
      id: '1',
      title: 'Wireless Headphones',
      description: 'High-quality wireless headphones with noise cancellation.',
      price: 99.99,
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
      category: 'Electronics',
      rating: 4.5,
    ),
    Product(
      id: '2',
      title: 'Smart Watch',
      description: 'Feature-rich smartwatch with health tracking.',
      price: 149.99,
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
      category: 'Electronics',
      rating: 4.2,
    ),
    Product(
      id: '3',
      title: 'Casual T-Shirt',
      description: 'Comfortable cotton t-shirt for everyday wear.',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=500',
      category: 'Clothing',
      rating: 3.8,
    ),
    Product(
      id: '4',
      title: 'Running Shoes',
      description: 'Lightweight running shoes for optimal performance.',
      price: 79.99,
      imageUrl:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
      category: 'Footwear',
      rating: 4.7,
    ),
    Product(
      id: '5',
      title: 'Backpack',
      description: 'Durable backpack with spacious compartments.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
      category: 'Accessories',
      rating: 4.0,
    ),
    Product(
      id: '6',
      title: 'Vintage Chair',
      description: 'Classic mid-century modern design chair.',
      price: 129.99,
      imageUrl:
          'https://images.unsplash.com/photo-1592078615290-033ee584e267?w=500',
      category: 'Furniture',
      rating: 4.8,
    ),
    Product(
      id: '7',
      title: 'Mechanical Keyboard',
      description: 'Clicky mechanical keyboard for precise typing.',
      price: 89.99,
      imageUrl:
          'https://images.unsplash.com/photo-1595225476474-87563907a212?w=500',
      category: 'Electronics',
      rating: 4.6,
    ),
    Product(
      id: '8',
      title: 'Sunglasses',
      description: 'Stylish UV protection sunglasses.',
      price: 29.99,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=500',
      category: 'Accessories',
      rating: 4.3,
    ),
    Product(
      id: '9',
      title: 'Coffee Maker',
      description: 'Programmable coffee maker for a perfect brew.',
      price: 59.99,
      imageUrl:
          'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=500',
      category: 'Home',
      rating: 4.4,
    ),
    Product(
      id: '11',
      title: 'Gaming Mouse',
      description: 'High-precision gaming mouse with RGB.',
      price: 49.99,
      imageUrl:
          'https://images.unsplash.com/photo-1527814050087-3793815479db?w=500',
      category: 'Electronics',
      rating: 4.5,
    ),
    Product(
      id: '13',
      title: 'Yoga Mat',
      description: 'Non-slip yoga mat for home workouts.',
      price: 24.99,
      imageUrl:
          'https://images.unsplash.com/photo-1575052814086-f385e2e2ad1b?w=500',
      category: 'Sports',
      rating: 4.2,
    ),
    Product(
      id: '14',
      title: 'Succulent Plant',
      description: 'Low-maintenance decorative indoor plant.',
      price: 14.99,
      imageUrl:
          'https://images.unsplash.com/photo-1485955900006-10f4d324d411?w=500',
      category: 'Home',
      rating: 4.9,
    ),
    Product(
      id: '15',
      title: 'Denim Jacket',
      description: 'Classic denim jacket style.',
      price: 89.99,
      imageUrl:
          'https://images.unsplash.com/photo-1576995853123-5a10305d93c0?w=500',
      category: 'Clothing',
      rating: 4.4,
    ),
  ];

  Future<List<Product>> getProducts() async {
    await Future.delayed(
      const Duration(milliseconds: 800),
    ); // Simulate network delay
    return _products;
  }

  Future<Product?> getProductById(String id) async {
    await Future.delayed(const Duration(milliseconds: 200));
    try {
      return _products.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }
}
