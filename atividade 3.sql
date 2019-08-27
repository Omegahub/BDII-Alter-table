 create database etec_has_func;
 go

 use etec_has_func;
 go

 create table cargo
	(
		cd_cargo	int,
		ds_cargo	varchar(40)
	);
go


create table departamento
	(
		cd_depto	int,
		nm_depto	varchar(40)
	);
go


create table funcionario
	(
		cd_func			int,
		nm_pnome_func	varchar(50),
		nm_unome_func	varchar(30),
		vl_salario		numeric(9,2),
		dt_inicio		date,
		qt_dependente	numeric(2),
		cd_cargo		int,
		cd_depto		int

	);
	
go




/*adicionando not null cargo*/

alter table funcionario
	add end_func	varchar(150)	not null;
go


alter table departamento
	add sg_depto	varchar(5);
go

alter table cargo
	alter column cd_cargo	int			not null;
go


alter table cargo 
	alter column ds_cargo	varchar(40)	not null;
go








/*adicionando not null funcionario*/
alter table funcionario
	alter column cd_func	int	not null;
go


alter table funcionario
	alter column nm_pnome_func	varchar(50)	not null;
go


alter table funcionario
	alter column nm_unome_func	varchar(30)	not null;
go


alter table funcionario
	alter column vl_salario		numeric(9,2)	not null;
go


alter table funcionario
	alter column dt_inicio		date	not null;
go


alter table funcionario
	alter column qt_dependente	numeric(2)	not null;
go




/*adicionando not null departamento*/
alter table departamento
	alter column cd_depto	int			not null;
go

alter table departamento
	alter column nm_depto	varchar(40)		not null;
go

alter table departamento
	alter column sg_depto	varchar(5)		not null;
go




/*adicionando primary key*/
alter table cargo 
	add constraint pk_cargo		primary key (cd_cargo);
go

alter table funcionario
	add constraint pk_func		primary key (cd_func);
go

alter table departamento
	add constraint pk_depto		primary key (cd_depto);
go




/*adicionando FK*/

alter table funcionario
	add constraint Cargo_cd_cargo	foreign key(cd_cargo) references cargo (cd_cargo);
go

alter table funcionario
	add constraint Cargo_cd_depto	foreign key(cd_depto) references departamento (cd_depto);
go



/*deletando coluna*/

alter table funcionario
	drop column qt_dependente;
go



sp_help cargo;
sp_help departamento;
sp_help funcionario;


drop database etec_has_func;