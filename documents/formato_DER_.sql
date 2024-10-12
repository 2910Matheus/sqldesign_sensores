-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-10-12 19:58:58 BRT
--   site:      SQL Server 2012
--   tipo:      SQL Server 2012



CREATE TABLE historico_ajustes 
    (
     id_ajuste INTEGER NOT NULL , 
     plantacao_id_plantacao INTEGER NOT NULL , 
     data_ajuste DATETIME NOT NULL , 
     tipo_ajuste VARCHAR (60) NOT NULL , 
     descricao_ajuste TEXT 
    )
GO

ALTER TABLE historico_ajustes ADD CONSTRAINT PK_historico_ajustes PRIMARY KEY CLUSTERED (id_ajuste)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE irrigacao 
    (
     id_ajuste_irrigacao INTEGER NOT NULL , 
     plantacao_id_plantacao INTEGER NOT NULL , 
     data_hora_ajuste DATETIME NOT NULL , 
     quantidade_agua BIGINT NOT NULL 
    )
GO

ALTER TABLE irrigacao ADD CONSTRAINT PK_irrigacao PRIMARY KEY CLUSTERED (id_ajuste_irrigacao)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE Nutrientes_npk 
    (
     id_nutrientes INTEGER NOT NULL , 
     plantacao_id_plantacao INTEGER NOT NULL , 
     data_hora_ajuste DATETIME NOT NULL , 
     quantidade_fosforo BIGINT NOT NULL , 
     quantidade_potassio BIGINT 
    )
GO

ALTER TABLE Nutrientes_npk ADD CONSTRAINT PK_Nutrientes_npk PRIMARY KEY CLUSTERED (id_nutrientes)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE ph_solo 
    (
     id_solo INTEGER NOT NULL , 
     plantacao_id_plantacao INTEGER NOT NULL , 
     data_hora_leitura_ph DATETIME NOT NULL , 
     valor_ph BIGINT 
    )
GO

ALTER TABLE ph_solo ADD CONSTRAINT PK_ph_solo PRIMARY KEY CLUSTERED (id_solo)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE plantacao 
    (
     id_plantacao INTEGER NOT NULL , 
     nome_cultura VARCHAR (60) NOT NULL , 
     area_plantio BIGINT NOT NULL , 
     localizacao VARCHAR (60) NOT NULL 
    )
GO

ALTER TABLE plantacao ADD CONSTRAINT PK_plantacao PRIMARY KEY CLUSTERED (id_plantacao)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE previsao_futura 
    (
     id_previsao INTEGER NOT NULL , 
     plantacao_id_plantacao INTEGER NOT NULL , 
     data_hora_previsto DATETIME NOT NULL , 
     tipo_previsto VARCHAR (60) NOT NULL , 
     valor_previsto BIGINT NOT NULL 
    )
GO

ALTER TABLE previsao_futura ADD CONSTRAINT PK_previsao_futura PRIMARY KEY CLUSTERED (id_previsao)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

CREATE TABLE sensor 
    (
     id_sensor INTEGER NOT NULL , 
     plantacao_id_plantacao INTEGER NOT NULL , 
     tipo_sensor VARCHAR (60) NOT NULL , 
     data_hora_leitura DATETIME , 
     valor_leitura BIGINT NOT NULL 
    )
GO

ALTER TABLE sensor ADD CONSTRAINT PK_sensor PRIMARY KEY CLUSTERED (id_sensor)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
GO

ALTER TABLE historico_ajustes 
    ADD CONSTRAINT FK_historico_ajustes_plantacao FOREIGN KEY 
    ( 
     plantacao_id_plantacao
    ) 
    REFERENCES plantacao 
    ( 
     id_plantacao 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE irrigacao 
    ADD CONSTRAINT FK_irrigacao_plantacao FOREIGN KEY 
    ( 
     plantacao_id_plantacao
    ) 
    REFERENCES plantacao 
    ( 
     id_plantacao 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Nutrientes_npk 
    ADD CONSTRAINT FK_Nutrientes_npk_plantacao FOREIGN KEY 
    ( 
     plantacao_id_plantacao
    ) 
    REFERENCES plantacao 
    ( 
     id_plantacao 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE ph_solo 
    ADD CONSTRAINT FK_ph_solo_plantacao FOREIGN KEY 
    ( 
     plantacao_id_plantacao
    ) 
    REFERENCES plantacao 
    ( 
     id_plantacao 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE previsao_futura 
    ADD CONSTRAINT FK_previsao_futura_plantacao FOREIGN KEY 
    ( 
     plantacao_id_plantacao
    ) 
    REFERENCES plantacao 
    ( 
     id_plantacao 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE sensor 
    ADD CONSTRAINT FK_sensor_plantacao FOREIGN KEY 
    ( 
     plantacao_id_plantacao
    ) 
    REFERENCES plantacao 
    ( 
     id_plantacao 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
