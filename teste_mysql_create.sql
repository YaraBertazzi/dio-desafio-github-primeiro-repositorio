CRIAR TABELA `Cliente` (
	`idCliente` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`idCliente`)
);

CRIAR TABELA `Pedido` (
	`idPedido` INT NOT NULL AUTO_INCREMENT,
	`cliente` INT NOT NULL AUTO_INCREMENT,
	`Status` varchar(45) NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`idPedido`)
);

CRIAR TABELA `Produto` (
	`idProduto` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`idProduto`)
);

CRIAR TABELA `Estoque` (
	`idEstoque` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`idEstoque`)
);

CREATE TABLE `Fornecedor` (
	`idFornecedor` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`idFornecedor`)
);

CREATE TABLE `Fornecedor` (
	`idVendedor` INT NOT NULL
);

CRIAR TABELA `Cadastro_CNPJ` (
	`cnpj` INT NOT NULL AUTO_INCREMENT,
	`cliente` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`cnpj`)
);

CRIAR TABELA `Cadastro_CPF` (
	`cpf` INT NOT NULL AUTO_INCREMENT,
	`cliente` INT NOT NULL AUTO_INCREMENT,
	CHAVE PRIMÁRIA (`cpf`)
);

CRIAR TABELA `Produto_Pedido` (
	`Produto` INT NOT NULL,
	`Pedido` INT NÃO NULO,
	`Cliente` INT NOT NULL
);

CREATE TABLE `Em_Estoque` (
	`Estoque` INT NOT NULL,
	`Produto` INT NOT NULL
);

CRIAR TABELA `Produto_Fornecedor` (
	`Produto` INT NOT NULL,
	`Fornecedor` INT NOT NULL
);

CRIAR TABELA `Produto_vendedor` (
	`Produto` INT NOT NULL,
	`Fornecedor` INT NOT NULL
);

CRIAR TABELA `Cancelado` (
	`Poduto_Pedido` BOOLEAN NOT NULL,
	`cancelado` varchar(45) NOT NULL UNIQUE
);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk0` FOREIGN KEY (`cliente`) REFERÊNCIAS `Cliente`(`idCliente`);

ALTER TABLE `Cadastro_CNPJ` ADD CONSTRAINT `Cadastro_CNPJ_fk0` FOREIGN KEY (`cliente`) REFERÊNCIAS `Cliente`(`idCliente`);

ALTER TABLE `Cadastro_CPF` ADD CONSTRAINT `Cadastro_CPF_fk0` FOREIGN KEY (`cliente`) REFERÊNCIAS `Cliente`(`idCliente`);

ALTER TABLE `Produto_Pedido` ADD CONSTRAINT `Produto_Pedido_fk0` FOREIGN KEY (`Produto`) REFERÊNCIAS `Produto`(`idProduto`);

ALTER TABLE `Produto_Pedido` ADD CONSTRAINT `Produto_Pedido_fk1` FOREIGN KEY (`Pedido`) REFERÊNCIAS `Pedido`(`idPedido`);

ALTER TABLE `Produto_Pedido` ADD CONSTRAINT `Produto_Pedido_fk2` FOREIGN KEY (`Cliente`) REFERÊNCIAS `Cliente`(`idCliente`);

ALTER TABLE `Em_Estoque` ADD CONSTRAINT `Em_Estoque_fk0` FOREIGN KEY (`Estoque`) REFERÊNCIAS `Estoque`(`idEstoque`);

ALTER TABLE `Em_Estoque` ADD CONSTRAINT `Em_Estoque_fk1` FOREIGN KEY (`Produto`) REFERÊNCIAS `Produto`(`idProduto`);

ALTER TABLE `Produto_Fornecedor` ADD CONSTRAINT `Produto_Fornecedor_fk0` FOREIGN KEY (`Produto`) REFERÊNCIAS `Produto`(`idProduto`);

ALTER TABLE `Produto_Fornecedor` ADD CONSTRAINT `Produto_Fornecedor_fk1` FOREIGN KEY (`Fornecedor`) REFERÊNCIAS `Fornecedor`(`idFornecedor`);

ALTER TABLE `Produto_vendedor` ADD CONSTRAINT `Produto_vendedor_fk0` FOREIGN KEY (`Produto`) REFERÊNCIAS `Produto`(`idProduto`);

ALTER TABLE `Produto_vendedor` ADD CONSTRAINT `Produto_vendedor_fk1` FOREIGN KEY (`Vendedor`) REFERÊNCIAS `Vendedor`(`idVendedor`);

ALTER TABLE `Cancelado` ADD CONSTRAINT `Cancelado_fk0` FOREIGN KEY (`Poduto_Pedido`) REFERÊNCIAS `Produto_Pedido`(`Produto`);














