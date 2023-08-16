create table tipoProduto (
  idTipoProduto SERIAL primary key,
  descricao VARCHAR(255)
);

create table produto (
  idProduto serial primary key,
  nomeProduto varchar(255),
  ultimoPrecoPago numeric,
  saldoAtual numeric,
  idTipoProduto integer,
  idUnidadeMedida integer,	
  constraint fk_tipoProduto foreign key (idTipoProduto) references tipoProduto(idTipoProduto),
  constraint fk_unidadeMedida foreign key (idUnidadeMedida) references unidadeMedida(idUnidadeMedida)
);

create table unidadeMedida (
  idUnidadeMedida serial primary key,
  descricao varchar(255),
  sigla varchar(10)
 
);

create table movimentoEstoque (
  idMovimentoEstoque serial primary key,
  entradaSaida varchar(10),
  documento varchar(255),
  data varchar(60),
  quantidade numeric,
  valorMovimento numeric,
  idProduto integer,
  idTipoMovimento integer,
  idFuncionario integer,
  constraint fk_produto foreign key (idProduto) references produto(idProduto),
  constraint fk_tipoMovimento foreign key (idTipoMovimento) references tipoMovimento(idTipoMovimento),
  constraint fk_funcionario foreign key (idFuncionario) references funcionario(idFuncionario)
);

create table tipoMovimento (
  idTipoMovimento serial primary key,
  descricao varchar(255)
);

create table funcionario (
  idFuncionario serial primary key,
  nomeFuncionario varchar(255)
);


create or replace function atualizar_saldo_atual()
returns trigger as $$
begin
   
    update produto
    set saldoAtual = saldoAtual + new.quantidade
    where idProduto = new.idProduto; 
    return new;
end;
$$ language plpgsql;


create trigger atualizar_saldo_trigger
after insert or update on movimentoEstoque
for each row
execute function atualizar_saldo_atual();


insert into tipoProduto (descricao) values ('Ponta Fina');
insert into tipoProduto (descricao) values ('Capa Dura');

insert into funcionario (nomeFuncionario) values ('Lucas Silva');
insert into funcionario (nomeFuncionario) values ('Ana Santos');

insert into tipoMovimento (descricao) values ('Venda');
insert into tipoMovimento (descricao) values ('Compra');

insert into unidadeMedida (descricao, sigla) values ('Unidade', 'UN');
insert into unidadeMedida (descricao, sigla) values ('Pacote', 'PC');

insert into produto (nomeProduto, ultimoPrecoPago, saldoAtual, idTipoProduto, idUnidadeMedida) values ('Caneta Azul', 2.50, 100, 1, 1);
insert into produto (nomeProduto, ultimoPrecoPago, saldoAtual, idTipoProduto, idUnidadeMedida) values ('Caderno Grande', 10.99, 50, 2, 2);

insert into movimentoEstoque (entradaSaida, documento, data, quantidade, valorMovimento, idProduto, idTipoMovimento, idFuncionario) values ('Entrada', 'NF123', '12-06-2023', 50, 1000.00, 1, 1, 1);
insert into movimentoEstoque (entradaSaida, documento, data, quantidade, valorMovimento, idProduto, idTipoMovimento, idFuncionario) values ('Saída', 'NF456','12-06-2023' , 10, 250.00, 2, 2, 2);

