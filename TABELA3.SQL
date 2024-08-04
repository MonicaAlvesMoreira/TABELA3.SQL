DELIMITER //

CREATE PROCEDURE LevantamentoDiario()
BEGIN
    SELECT 
        DataCompra, 
        ProdutoID, 
        SUM(Quantidade) AS QuantidadeTotal
    FROM 
        Compras
    GROUP BY 
        DataCompra, 
        ProdutoID
    ORDER BY 
        DataCompra;
END //

DELIMITER ;


CREATE PROCEDURE LevantamentoDiario
AS
BEGIN
    SELECT 
        DataCompra, 
        ProdutoID, 
        SUM(Quantidade) AS QuantidadeTotal
    FROM 
        Compras
    GROUP BY 
        DataCompra, 
        ProdutoID
    ORDER BY 
        DataCompra;
END