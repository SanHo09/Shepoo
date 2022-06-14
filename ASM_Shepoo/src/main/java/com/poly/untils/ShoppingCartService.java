package com.poly.untils;

import java.util.HashMap;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.model.SanPham;


@SuppressWarnings("serial")
@SessionScope
@Service
public class ShoppingCartService extends HashMap<Integer, SanPham>{}