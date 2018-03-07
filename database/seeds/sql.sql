
SELECT categorias.nome, sub_categorias.nome
FROM categorias_sub_categorias
INNER JOIN categorias ON (categorias.id = categorias_sub_categorias.categoria_id)
INNER JOIN sub_categorias ON (sub_categorias.id = categorias_sub_categorias.sub_categoria_id)



SELECT productos.nome, productos.preco, categorias.nome, sub_categorias.nome
FROM categorias_productos
INNER JOIN categorias ON (categorias.id = categorias_productos.categoria_id)
INNER JOIN sub_categorias ON (sub_categorias.id = categorias_productos.sub_categoria_id)
INNER JOIN productos ON (productos.id = categorias_productos.producto_id)

WHERE (categorias.slug = "para-elas") AND (sub_categorias.nome = "brincos")