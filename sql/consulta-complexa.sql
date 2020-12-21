SELECT pedidos.order_item_name produto,
  qtd.meta_value qtd,
  cor.meta_value cor,
  tamanho.meta_value tamanho,
  total.meta_value total
FROM wp_wc.wp_woocommerce_order_items pedidos
  LEFT JOIN wp_wc.wp_woocommerce_order_itemmeta qtd 
    ON pedidos.order_item_id = qtd.order_item_id
    AND qtd.meta_key = '_qty'
  LEFT JOIN wp_wc.wp_woocommerce_order_itemmeta cor 
    ON pedidos.order_item_id = cor.order_item_id
    AND cor.meta_key = 'pa_cor-da-camiseta'
  LEFT JOIN wp_wc.wp_woocommerce_order_itemmeta tamanho 
    ON pedidos.order_item_id = tamanho.order_item_id
    AND tamanho.meta_key = 'pa_tamanho'
  LEFT JOIN wp_wc.wp_woocommerce_order_itemmeta 
    total ON pedidos.order_item_id = total.order_item_id
    AND (
      total.meta_key = '_line_total'
      OR total.meta_key = 'cost'
    )
WHERE pedidos.order_id = 123