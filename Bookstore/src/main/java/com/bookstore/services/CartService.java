package com.bookstore.services;

import com.bookstore.dtos.CartDTO;
import com.bookstore.models.Book;
import com.bookstore.models.Cart;
import com.bookstore.repositories.BookRepository;
import com.bookstore.repositories.CartRepository;
import com.bookstore.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CartService {

    private final CartRepository cartRepository;
    private final UserRepository userRepository;
    private final BookRepository bookRepository;

    @Autowired
    public CartService(CartRepository cartRepository, UserRepository userRepository, BookRepository bookRepository) {
        this.cartRepository = cartRepository;
        this.userRepository = userRepository;
        this.bookRepository = bookRepository;
    }

    public CartDTO getCartByUserId(String userId) {
        // Check if user exists
        if (!userRepository.findById(userId).isPresent()) {
            throw new IllegalArgumentException("User not found");
        }

        // Get cart or create if not exists
        Optional<Cart> cartOpt = cartRepository.findByUserId(userId);
        Cart cart;

        if (cartOpt.isPresent()) {
            cart = cartOpt.get();
        } else {
            cart = new Cart(userId);
            cart = cartRepository.save(cart);
        }

        return convertToDTO(cart);
    }

    public CartDTO addItemToCart(String userId, String bookId, int quantity) {
        // Validate book
        Optional<Book> bookOpt = bookRepository.findById(bookId);
        if (!bookOpt.isPresent()) {
            throw new IllegalArgumentException("Book not found");
        }

        Book book = bookOpt.get();

        // Check stock
        if (book.getInStock() < quantity) {
            throw new IllegalArgumentException("Not enough books in stock");
        }

        // Get cart
        Optional<Cart> cartOpt = cartRepository.findByUserId(userId);
        Cart cart;

        if (cartOpt.isPresent()) {
            cart = cartOpt.get();
        } else {
            cart = new Cart(userId);
        }

        // Add item to cart
        cart.addItem(new Cart.CartItem(bookId, quantity));
        cart = cartRepository.save(cart);

        return convertToDTO(cart);
    }

    public CartDTO removeItemFromCart(String userId, String bookId) {
        // Get cart
        Optional<Cart> cartOpt = cartRepository.findByUserId(userId);

        if (!cartOpt.isPresent()) {
            throw new IllegalArgumentException("Cart not found");
        }

        Cart cart = cartOpt.get();

        // Remove item from cart
        cart.removeItem(bookId);
        cart = cartRepository.save(cart);

        return convertToDTO(cart);
    }

    public void clearCart(String userId) {
        cartRepository.clearCart(userId);
    }

    private CartDTO convertToDTO(Cart cart) {
        List<CartDTO.CartItemDTO> itemDTOs = cart.getItems().stream()
                .map(item -> new CartDTO.CartItemDTO(item.getBookId(), item.getQuantity()))
                .collect(Collectors.toList());

        return new CartDTO(cart.getId(), cart.getUserId(), itemDTOs);
    }
}