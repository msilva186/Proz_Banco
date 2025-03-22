---- Tabela de Clientes
--CREATE TABLE Clientes (
--    ClienteID INT PRIMARY KEY IDENTITY(1,1),
--    Nome VARCHAR(100),
--    Email VARCHAR(100),
--    DataCadastro DATETIME
--);

---- Tabela de Produtos
--CREATE TABLE Produtos (
--    ProdutoID INT PRIMARY KEY IDENTITY(1,1),
--    Nome VARCHAR(100),
--    Preco DECIMAL(10,2)
--);

---- Tabela de Vendas
--CREATE TABLE Vendas (
--    VendaID INT PRIMARY KEY IDENTITY(1,1),
--    ClienteID INT,
--    ProdutoID INT,
--    Quantidade INT,
--    DataVenda DATETIME,
--    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
--    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
--);

---- Inserir Clientes
--INSERT INTO Clientes (Nome, Email, DataCadastro)
--VALUES
--    ('Mauricio Silva', 'mauricio.silva@email.com', '2025-03-20T09:15:00'),
--    ('Marta Oliveira', 'marta.oliveira@email.com', '2025-03-20T10:30:00'),
--    ('Rodrigo Souza', 'rodrigo.souza@email.com', '2025-03-20T11:45:00'),
--    ('Fernanda Costa', 'fernanda.costa@email.com', '2025-03-21T14:00:00'),
--    ('Lucas Pereira', 'lucas.pereira@email.com', '2025-03-21T15:10:00');

-- Inserir Produtos
--INSERT INTO Produtos (Nome, Preco)
--VALUES
--    ('Camiseta Polo', 49.90),
--    ('Calça Jeans', 129.90),
--    ('Tênis Esportivo', 199.99),
--    ('Jaqueta de Couro', 299.90),
--    ('Boné', 29.90);

	-- Inserir Vendas
--INSERT INTO Vendas (ClienteID, ProdutoID, Quantidade, DataVenda)
--VALUES
--    (1, 2, 1, '2025-03-20T10:00:00'),  -- Mauricio comprou 1 Calça Jeans
--    (2, 1, 2, '2025-03-20T11:00:00'),  -- Marta comprou 2 Camisetas Polo
--    (3, 3, 1, '2025-03-20T12:00:00'),  -- Rodrigo comprou 1 Tênis Esportivo
--    (4, 4, 1, '2025-03-21T16:00:00'),  -- Fernanda comprou 1 Jaqueta de Couro
--    (5, 5, 3, '2025-03-21T17:00:00');  -- Lucas comprou 3 Bonés


---- Função para contar os clientes cadastrados em um dia específico
--CREATE FUNCTION dbo.ContarClientesPorDia (@DataCadastro DATE)
--RETURNS INT
--AS
--BEGIN
--    DECLARE @TotalClientes INT;

--    -- Contar o número de clientes cadastrados na data fornecida
--    SELECT @TotalClientes = COUNT(*) 
--    FROM Clientes
--    WHERE CAST(DataCadastro AS DATE) = @DataCadastro;

--    RETURN @TotalClientes;
--END;


-- Executar a função:
--SELECT dbo.ContarClientesPorDia('2025-03-20') AS TotalClientesCadastrados;
