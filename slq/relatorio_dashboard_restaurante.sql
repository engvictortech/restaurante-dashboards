use restaurantes;

SELECT 
    pd.id_pedido,
    pd.data_pedido,
    pd.status,
    
    c.id_cliente,
    c.nome AS cliente,
    c.cpf,
    c.telefone,
    c.email,
    
    f.id_funcionario,
    f.nome AS funcionario,
    f.cargo,
    
    p.id_produto,
    p.nome AS produto,
    p.categoria,
    p.preco,
    
    ip.ingredientes,
    ip.fornecedor,
    
    pd.quantidade,
    (pd.preco * pd.quantidade) AS total_pedido,
    
    -- Total gasto por cliente até agora
    SUM(pd.preco * pd.quantidade) OVER (PARTITION BY c.id_cliente) AS total_gasto_cliente,
    
    -- Total vendido por funcionário até agora
    SUM(pd.preco * pd.quantidade) OVER (PARTITION BY f.id_funcionario) AS total_vendido_funcionario,
    
    -- Total vendido por produto até agora
    SUM(pd.quantidade) OVER (PARTITION BY p.id_produto) AS total_vendido_produto
FROM pedidos pd
JOIN clientes c ON pd.id_cliente = c.id_cliente
JOIN funcionarios f ON pd.id_funcionario = f.id_funcionario
JOIN produtos p ON pd.id_produto = p.id_produto
JOIN info_produtos ip ON p.id_produto = ip.id_produto
ORDER BY pd.data_pedido DESC;
