# Normalização de Base de Dados — Sistema de Gestão de Funcionários

## 📘 Contexto
Este projeto foi desenvolvido para o **Curso de Licenciatura em Informática — Universidade Licungo**, com o objetivo de aplicar o processo de **normalização de base de dados** até à **4ª Forma Normal (4FN)**, utilizando os dados de funcionários de uma empresa moçambicana.

---

## 🧩 Etapas da Normalização

### 🔹 0FN — Tabela não normalizada
A tabela original continha:
- Dados pessoais, morada, cargo, função, filhos e telefones.
- Grupos repetitivos (Filho1, Filho2, Filho3; Celular1, Celular2, Celular3).
- Dependências parciais e transitivas.

### 🔹 1FN — Eliminação de grupos repetitivos
Criação das tabelas:
- `Funcionario`
- `Filho`
- `Telefone`

### 🔹 2FN — Eliminação de dependências parciais
Criação das tabelas:
- `Cargo`
- `Funcao`

### 🔹 3FN — Eliminação de dependências transitivas
Criação das tabelas:
- `Pais`
- `Provincia`
- `Cidade`

### 🔹 4FN — Eliminação de dependências multivaloradas
Separação completa das relações 1:N (funcionário-filho, funcionário-telefone).

---

## 🧱 Estrutura das Tabelas

| Tabela | Descrição | Chave Primária | Chaves Estrangeiras |
|--------|------------|----------------|---------------------|
| **Funcionario** | Dados pessoais e profissionais | id_funcionario | id_cidade, cod_cargo, cod_funcao |
| **Cargo** | Tipos de cargos | cod_cargo | — |
| **Funcao** | Áreas de atuação | cod_funcao | — |
| **Pais** | Países | id_pais | — |
| **Provincia** | Províncias | id_provincia | id_pais |
| **Cidade** | Cidades | id_cidade | id_provincia |
| **Filho** | Filhos dos funcionários | id_filho | id_funcionario |
| **Telefone** | Telefones dos funcionários | id_telefone | id_funcionario |

---

## ⚙️ Execução no XAMPP

1. Iniciar **Apache** e **MySQL** no painel do XAMPP.  
2. Aceder a `http://localhost/phpmyadmin`.  
3. Criar a base de dados `empresa_funcionarios`.  
4. Executar os scripts SQL:
   - Criação das tabelas (DDL)
   - Inserção dos dados (DML)
5. Testar as queries de exemplo.

---

## 🔍 Queries de Exemplo

```sql
-- Funcionário + Cargo + Função
SELECT f.nome, c.nome_cargo, fn.nome_funcao
FROM Funcionario f
JOIN Cargo c ON f.cod_cargo = c.cod_cargo
JOIN Funcao fn ON f.cod_funcao = fn.cod_funcao;

-- Funcionário + Cidade + Província + País
SELECT f.nome, ci.nome AS cidade, p.nome AS provincia, pa.nome AS pais
FROM Funcionario f
JOIN Cidade ci ON f.id_cidade = ci.id_cidade
JOIN Provincia p ON ci.id_provincia = p.id_provincia
JOIN Pais pa ON p.id_pais = pa.id_pais;

-- Funcionário + Filhos + Telefones
SELECT f.nome AS funcionario, fi.nome AS filho, t.numero AS telefone
FROM Funcionario f
LEFT JOIN Filho fi ON f.id_funcionario = fi.id_funcionario
LEFT JOIN Telefone t ON f.id_funcionario = t.id_funcionario
ORDER BY f.nome;


![Modelo ER](diagramas/Modelo_ER.png)

