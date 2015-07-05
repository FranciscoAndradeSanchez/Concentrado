
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/23/2015 21:13:09
-- Generated from EDMX file: C:\Users\Scherman\Documents\Visual Studio 2015\Projects\CajaPopular\CajaPopular\CajaPopular\ProyectoCajaPopularModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [caja_popular];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[fk_aval_persona]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[aval] DROP CONSTRAINT [fk_aval_persona];
GO
IF OBJECT_ID(N'[dbo].[fk_balance_solicitante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[balance] DROP CONSTRAINT [fk_balance_solicitante];
GO
IF OBJECT_ID(N'[dbo].[fk_balance_usuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[balance] DROP CONSTRAINT [fk_balance_usuario];
GO
IF OBJECT_ID(N'[dbo].[fk_contrato_rel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[contrato] DROP CONSTRAINT [fk_contrato_rel];
GO
IF OBJECT_ID(N'[dbo].[fk_sa_aval]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[rel_solicitante_aval] DROP CONSTRAINT [fk_sa_aval];
GO
IF OBJECT_ID(N'[dbo].[fk_sa_solicitante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[rel_solicitante_aval] DROP CONSTRAINT [fk_sa_solicitante];
GO
IF OBJECT_ID(N'[dbo].[fk_solicitante_cotizacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[cotizacions] DROP CONSTRAINT [fk_solicitante_cotizacion];
GO
IF OBJECT_ID(N'[dbo].[fk_solicitante_persona]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[solicitante] DROP CONSTRAINT [fk_solicitante_persona];
GO
IF OBJECT_ID(N'[dbo].[fk_solicitud_solicitante]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[solicitud] DROP CONSTRAINT [fk_solicitud_solicitante];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[aval]', 'U') IS NOT NULL
    DROP TABLE [dbo].[aval];
GO
IF OBJECT_ID(N'[dbo].[balance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[balance];
GO
IF OBJECT_ID(N'[dbo].[contrato]', 'U') IS NOT NULL
    DROP TABLE [dbo].[contrato];
GO
IF OBJECT_ID(N'[dbo].[cotizacions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[cotizacions];
GO
IF OBJECT_ID(N'[dbo].[persona]', 'U') IS NOT NULL
    DROP TABLE [dbo].[persona];
GO
IF OBJECT_ID(N'[dbo].[plazo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[plazo];
GO
IF OBJECT_ID(N'[dbo].[rel_solicitante_aval]', 'U') IS NOT NULL
    DROP TABLE [dbo].[rel_solicitante_aval];
GO
IF OBJECT_ID(N'[dbo].[solicitante]', 'U') IS NOT NULL
    DROP TABLE [dbo].[solicitante];
GO
IF OBJECT_ID(N'[dbo].[solicitud]', 'U') IS NOT NULL
    DROP TABLE [dbo].[solicitud];
GO
IF OBJECT_ID(N'[dbo].[tasa]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tasa];
GO
IF OBJECT_ID(N'[dbo].[usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'avals'
CREATE TABLE [dbo].[avals] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [id_persona] int  NULL,
    [num_socio] varchar(20)  NULL
);
GO

-- Creating table 'balances'
CREATE TABLE [dbo].[balances] (
    [id_solicitante] int  NOT NULL,
    [factura] int  NOT NULL,
    [num_documento] int  NOT NULL,
    [descripcion] varchar(120)  NULL,
    [cantidad] decimal(19,4)  NULL,
    [fecha_captura] datetime  NULL,
    [fecha_vencimiento] datetime  NULL,
    [fecha_pago] datetime  NULL,
    [capturista] int  NULL,
    [borrado] bit  NULL,
    [cubierto] bit  NULL
);
GO

-- Creating table 'contratoes'
CREATE TABLE [dbo].[contratoes] (
    [uid] varchar(5)  NOT NULL,
    [id_solicitud] int  NOT NULL,
    [id_solicitante] int  NOT NULL,
    [id_aval] int  NOT NULL
);
GO

-- Creating table 'cotizacions'
CREATE TABLE [dbo].[cotizacions] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [num_solicitante] int  NULL,
    [monto_solicitado] decimal(19,4)  NULL,
    [plazo] int  NULL,
    [fecha_captura] datetime  NULL,
    [fecha_entrega] datetime  NULL,
    [monto_asignado] decimal(19,4)  NULL,
    [tasa] float  NULL
);
GO

-- Creating table 'personas'
CREATE TABLE [dbo].[personas] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(100)  NULL,
    [paterno] varchar(75)  NULL,
    [materno] varchar(75)  NULL,
    [fecha_nacimiento] datetime  NULL,
    [domicilio] varchar(125)  NULL,
    [colonia] varchar(75)  NULL,
    [cruce1] varchar(75)  NULL,
    [cruce2] varchar(75)  NULL,
    [sector] varchar(75)  NULL,
    [cp] varchar(10)  NULL,
    [ciudad] varchar(35)  NULL,
    [estado] varchar(35)  NULL,
    [municipio] varchar(35)  NULL,
    [edo_civil] varchar(25)  NULL,
    [reg_matrimonial] varchar(25)  NULL,
    [telefono_casa] varchar(12)  NULL,
    [telefono_celular] varchar(12)  NULL,
    [tipo_vivienda] varchar(25)  NULL,
    [tiempo_residiendo] int  NULL,
    [conyuge] varchar(125)  NULL,
    [ocupacion_conyuge] varchar(120)  NULL
);
GO

-- Creating table 'plazoes'
CREATE TABLE [dbo].[plazoes] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [plazo1] int  NOT NULL,
    [descripcion] varchar(120)  NULL
);
GO

-- Creating table 'rel_solicitante_aval'
CREATE TABLE [dbo].[rel_solicitante_aval] (
    [id_solicitante] int  NOT NULL,
    [id_aval] int  NOT NULL,
    [cantidad] decimal(19,4)  NOT NULL,
    [ingresos_mensuales] decimal(19,4)  NULL,
    [ingresos_extra] decimal(19,4)  NULL,
    [gastos_mensuales] decimal(19,4)  NULL,
    [otras_deudas] decimal(19,4)  NULL
);
GO

-- Creating table 'solicitantes'
CREATE TABLE [dbo].[solicitantes] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [num_solicitante] varchar(20)  NULL,
    [id_persona] int  NULL,
    [numero_socio] varchar(20)  NULL,
    [dependientes] int  NULL,
    [sueldo] decimal(19,4)  NULL,
    [sueldo_diario] decimal(19,4)  NOT NULL,
    [departamento] varchar(50)  NULL
);
GO

-- Creating table 'solicituds'
CREATE TABLE [dbo].[solicituds] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [id_solicitante] int  NOT NULL,
    [fecha] datetime  NOT NULL,
    [cantidad_solicitada] decimal(19,4)  NULL,
    [plazo_solicitado] int  NULL,
    [cantidad_maxima] decimal(19,4)  NULL,
    [finalidad] varchar(120)  NULL,
    [entrega_prestamo] varchar(30)  NULL,
    [clave_interbancaria] varchar(30)  NULL,
    [tipo_prestamo] char(2)  NULL,
    [estatus] varchar(25)  NOT NULL,
    [monto_autorizado] decimal(19,4)  NULL,
    [plazo_autorizado] int  NULL,
    [fecha_resolucion] datetime  NULL,
    [responsable_autorizacion] int  NULL
);
GO

-- Creating table 'tasas'
CREATE TABLE [dbo].[tasas] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [tasa1] float  NOT NULL,
    [descripcioin] varchar(120)  NULL
);
GO

-- Creating table 'usuarios'
CREATE TABLE [dbo].[usuarios] (
    [uid] int IDENTITY(1,1) NOT NULL,
    [id_persona] int  NULL,
    [departamento] varchar(100)  NULL,
    [usuario1] varchar(60)  NULL,
    [contraseña] varchar(8)  NULL,
    [grupo] varchar(10)  NULL,
    [rol] varchar(10)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [uid] in table 'avals'
ALTER TABLE [dbo].[avals]
ADD CONSTRAINT [PK_avals]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [id_solicitante], [factura], [num_documento] in table 'balances'
ALTER TABLE [dbo].[balances]
ADD CONSTRAINT [PK_balances]
    PRIMARY KEY CLUSTERED ([id_solicitante], [factura], [num_documento] ASC);
GO

-- Creating primary key on [uid] in table 'contratoes'
ALTER TABLE [dbo].[contratoes]
ADD CONSTRAINT [PK_contratoes]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [uid] in table 'cotizacions'
ALTER TABLE [dbo].[cotizacions]
ADD CONSTRAINT [PK_cotizacions]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [uid] in table 'personas'
ALTER TABLE [dbo].[personas]
ADD CONSTRAINT [PK_personas]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [uid] in table 'plazoes'
ALTER TABLE [dbo].[plazoes]
ADD CONSTRAINT [PK_plazoes]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [id_solicitante], [id_aval] in table 'rel_solicitante_aval'
ALTER TABLE [dbo].[rel_solicitante_aval]
ADD CONSTRAINT [PK_rel_solicitante_aval]
    PRIMARY KEY CLUSTERED ([id_solicitante], [id_aval] ASC);
GO

-- Creating primary key on [uid] in table 'solicitantes'
ALTER TABLE [dbo].[solicitantes]
ADD CONSTRAINT [PK_solicitantes]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [uid] in table 'solicituds'
ALTER TABLE [dbo].[solicituds]
ADD CONSTRAINT [PK_solicituds]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [uid] in table 'tasas'
ALTER TABLE [dbo].[tasas]
ADD CONSTRAINT [PK_tasas]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- Creating primary key on [uid] in table 'usuarios'
ALTER TABLE [dbo].[usuarios]
ADD CONSTRAINT [PK_usuarios]
    PRIMARY KEY CLUSTERED ([uid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_persona] in table 'avals'
ALTER TABLE [dbo].[avals]
ADD CONSTRAINT [fk_aval_persona]
    FOREIGN KEY ([id_persona])
    REFERENCES [dbo].[personas]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_aval_persona'
CREATE INDEX [IX_fk_aval_persona]
ON [dbo].[avals]
    ([id_persona]);
GO

-- Creating foreign key on [id_aval] in table 'rel_solicitante_aval'
ALTER TABLE [dbo].[rel_solicitante_aval]
ADD CONSTRAINT [fk_sa_aval]
    FOREIGN KEY ([id_aval])
    REFERENCES [dbo].[avals]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_sa_aval'
CREATE INDEX [IX_fk_sa_aval]
ON [dbo].[rel_solicitante_aval]
    ([id_aval]);
GO

-- Creating foreign key on [id_solicitante] in table 'balances'
ALTER TABLE [dbo].[balances]
ADD CONSTRAINT [fk_balance_solicitante]
    FOREIGN KEY ([id_solicitante])
    REFERENCES [dbo].[solicitantes]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [capturista] in table 'balances'
ALTER TABLE [dbo].[balances]
ADD CONSTRAINT [fk_balance_usuario]
    FOREIGN KEY ([capturista])
    REFERENCES [dbo].[usuarios]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_balance_usuario'
CREATE INDEX [IX_fk_balance_usuario]
ON [dbo].[balances]
    ([capturista]);
GO

-- Creating foreign key on [id_solicitante], [id_aval] in table 'contratoes'
ALTER TABLE [dbo].[contratoes]
ADD CONSTRAINT [fk_contrato_rel]
    FOREIGN KEY ([id_solicitante], [id_aval])
    REFERENCES [dbo].[rel_solicitante_aval]
        ([id_solicitante], [id_aval])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_contrato_rel'
CREATE INDEX [IX_fk_contrato_rel]
ON [dbo].[contratoes]
    ([id_solicitante], [id_aval]);
GO

-- Creating foreign key on [num_solicitante] in table 'cotizacions'
ALTER TABLE [dbo].[cotizacions]
ADD CONSTRAINT [fk_solicitante_cotizacion]
    FOREIGN KEY ([num_solicitante])
    REFERENCES [dbo].[solicitantes]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_solicitante_cotizacion'
CREATE INDEX [IX_fk_solicitante_cotizacion]
ON [dbo].[cotizacions]
    ([num_solicitante]);
GO

-- Creating foreign key on [id_persona] in table 'solicitantes'
ALTER TABLE [dbo].[solicitantes]
ADD CONSTRAINT [fk_solicitante_persona]
    FOREIGN KEY ([id_persona])
    REFERENCES [dbo].[personas]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_solicitante_persona'
CREATE INDEX [IX_fk_solicitante_persona]
ON [dbo].[solicitantes]
    ([id_persona]);
GO

-- Creating foreign key on [id_solicitante] in table 'rel_solicitante_aval'
ALTER TABLE [dbo].[rel_solicitante_aval]
ADD CONSTRAINT [fk_sa_solicitante]
    FOREIGN KEY ([id_solicitante])
    REFERENCES [dbo].[solicitantes]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [id_solicitante] in table 'solicituds'
ALTER TABLE [dbo].[solicituds]
ADD CONSTRAINT [fk_solicitud_solicitante]
    FOREIGN KEY ([id_solicitante])
    REFERENCES [dbo].[solicitantes]
        ([uid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_solicitud_solicitante'
CREATE INDEX [IX_fk_solicitud_solicitante]
ON [dbo].[solicituds]
    ([id_solicitante]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------