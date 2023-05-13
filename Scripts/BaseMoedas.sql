CREATE DATABASE BaseMoedas
GO

USE BaseMoedas
GO

CREATE TABLE dbo.Cotacoes(
    Id INT IDENTITY(1,1) NOT NULL,
    Sigla char(3) NOT NULL,
    Horario datetime NOT NULL,
    Valor NUMERIC (18,4) NOT NULL,
    Excluir BIT NOT NULL DEFAULT 0,
    CONSTRAINT PK_Cotacoes PRIMARY KEY (Id)
)
GO

ALTER DATABASE BaseMoedas
SET CHANGE_TRACKING = ON
(CHANGE_RETENTION = 2 DAYS, AUTO_CLEANUP = ON);

ALTER TABLE dbo.Cotacoes
ENABLE CHANGE_TRACKING;