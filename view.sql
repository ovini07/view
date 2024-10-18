#CRIAR
create view VW_LISTA_FUNCIONARIOS AS
SELECT nome, especialidade
from fun;

#UTILIZAR
select * from VW_LISTA_FUNCIONARIOS;



#CRIAR
create view VW_LISTA_DEPENDENTES as 
select nome
from dependente;

#UTILIZAR
select * from VW_LISTA_DEPENDENTES;




create view View_Funcionario_Dependentes_Inner as
select fun.nome as funcionario, dependente.nome as dependente
from Fun 
inner join Dependente 
on fun.cod_fun=dependente.cod_fun
where  fun.cod_fun = 1;

#UTILIZANDO VIEW
select * from View_Funcionario_Dependentes_Inner;



#CRIAR VIEW
create view View_Funcionario_Sem_Dependentes as
select fun.nome,dependente.nome as funcionario, dependente.nome as dependente
from Fun 
left join dependente 
on fun.cod_fun=dependente.cod_fun
where dependente.nome is null ;

#UTILIZANDO VIEW
SELECT * FROM View_Funcionario_Sem_Dependentes;




#CRIAR VIEW
CREATE VIEW View_Dependentes_Sem_Funcionarios AS
SELECT fun.nome,dependente.nome AS funcionario, dependente.nome AS dependente
FROM Fun 
RIGHT JOIN Dependente 
ON fun.cod_fun=dependente.cod_fun
WHERE dependente.nome IS NULL;

#UTILIZANDO VIEW
SELECT * FROM View_Dependentes_Sem_Funcionarios;