import express from 'express';
import Wishlist from '../models/Wishlist.js';
import { auth } from '../middleware/auth.js';

const router = express.Router();

// Get user's wishlist
router.get('/', auth, async (req, res) => {
  try {
    const wishlist = await Wishlist.find({ userId: req.userId })
      .populate('productId')
      .sort({ createdAt: -1 });
    res.json(wishlist);
  } catch (error) {
    res.status(500).json({ message: 'Error fetching wishlist' });
  }
});

// Add to wishlist
router.post('/', auth, async (req, res) => {
  try {
    const { productId } = req.body;
    const wishlistItem = new Wishlist({
      userId: req.userId,
      productId
    });
    await wishlistItem.save();
    res.status(201).json(wishlistItem);
  } catch (error) {
    if (error.code === 11000) {
      return res.status(400).json({ message: 'Item already in wishlist' });
    }
    res.status(500).json({ message: 'Error adding to wishlist' });
  }
});

// Remove from wishlist
router.delete('/:productId', auth, async (req, res) => {
  try {
    await Wishlist.findOneAndDelete({
      userId: req.userId,
      productId: req.params.productId
    });
    res.json({ message: 'Removed from wishlist' });
  } catch (error) {
    res.status(500).json({ message: 'Error removing from wishlist' });
  }
});

export default router;