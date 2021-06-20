

/*==============================================================*/
/* Table: ADQUISICION_LIBROS                                    */
/*==============================================================*/
create table ADQUISICION_LIBROS (
   ADQUI_CODE           INT4                 not null,
   LIBRO_CODE           INT8                 null,
   PROV_CODE            INT4                 null,
   ADQUI_FECHA          DATE                 not null,
   ADQUI_COSTO          DECIMAL(11,2)        not null,
   constraint PK_ADQUISICION_LIBROS primary key (ADQUI_CODE)
);

/*==============================================================*/
/* Index: ADQUISICION_LIBROS_PK                                 */
/*==============================================================*/
create unique index ADQUISICION_LIBROS_PK on ADQUISICION_LIBROS (
ADQUI_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on ADQUISICION_LIBROS (
LIBRO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on ADQUISICION_LIBROS (
PROV_CODE
);

/*==============================================================*/
/* Table: AUTOR                                                 */
/*==============================================================*/
create table AUTOR (
   AUTORCODE            INT4                 not null,
   AUTOR_NOMBRES        VARCHAR(50)          not null,
   AUTOR_APELLIDOS      VARCHAR(50)          not null,
   CIUDAD               VARCHAR(50)          null,
   PAIS                 VARCHAR(50)          null,
   constraint PK_AUTOR primary key (AUTORCODE)
);

/*==============================================================*/
/* Index: AUTOR_PK                                              */
/*==============================================================*/
create unique index AUTOR_PK on AUTOR (
AUTORCODE
);

/*==============================================================*/
/* Table: BIBLIOTECA                                            */
/*==============================================================*/
create table BIBLIOTECA (
   BIBLIOTECA_CODE      INT4                 not null,
   CIUDAD_CODE          INT4                 null,
   BLIBLOTECA_NAME      VARCHAR(50)          not null,
   BDIRECCION           VARCHAR(100)         not null,
   constraint PK_BIBLIOTECA primary key (BIBLIOTECA_CODE)
);

/*==============================================================*/
/* Index: BIBLIOTECA_PK                                         */
/*==============================================================*/
create unique index BIBLIOTECA_PK on BIBLIOTECA (
BIBLIOTECA_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on BIBLIOTECA (
CIUDAD_CODE
);

/*==============================================================*/
/* Table: BIBLIOTECARIO                                         */
/*==============================================================*/
create table BIBLIOTECARIO (
   BIBLI_CODE           INT2                 not null,
   BIBLIOTECA_CODE      INT4                 null,
   BIBLI_NOMBRE         VARCHAR(50)          not null,
   BIBLI_APELLIDO       VARCHAR(50)          not null,
   BIBLI_DIRECCION      VARCHAR(100)         not null,
   BIBLI_JORNADA        VARCHAR(50)          not null,
   BIBLI_TELEFONO       INT4                 not null,
   constraint PK_BIBLIOTECARIO primary key (BIBLI_CODE)
);

/*==============================================================*/
/* Index: BIBLIOTECARIO_PK                                      */
/*==============================================================*/
create unique index BIBLIOTECARIO_PK on BIBLIOTECARIO (
BIBLI_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on BIBLIOTECARIO (
BIBLIOTECA_CODE
);

/*==============================================================*/
/* Table: CENTROESTUDIO                                         */
/*==============================================================*/
create table CENTROESTUDIO (
   CENESTU_CODE         INT4                 not null,
   CENESTU_NOMBRE       VARCHAR(50)          not null,
   CENESTU_DIRECCION    VARCHAR(100)         not null,
   CENESTU_CIUDAD       VARCHAR(50)          not null,
   constraint PK_CENTROESTUDIO primary key (CENESTU_CODE)
);

/*==============================================================*/
/* Index: CENTROESTUDIO_PK                                      */
/*==============================================================*/
create unique index CENTROESTUDIO_PK on CENTROESTUDIO (
CENESTU_CODE
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIUDAD_CODE          INT4                 not null,
   CIUDAD_NOMBRE        VARCHAR(50)          not null,
   constraint PK_CIUDAD primary key (CIUDAD_CODE)
);

/*==============================================================*/
/* Index: CIUDAD_PK                                             */
/*==============================================================*/
create unique index CIUDAD_PK on CIUDAD (
CIUDAD_CODE
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CLIENTE_CODE         INT4                 not null,
   CLIENTE_CEDULA       INT4                 not null,
   CENESTU_CODE         INT4                 not null,
   CLIENTE_NOMBRES      CHAR(50)             not null,
   CLIENTE_APELLIDOS    CHAR(50)             not null,
   CLIENTE_TELEF        INT4                 not null,
   CLIENTE_DIRECCION    VARCHAR(100)         not null,
   CLIENTE_CIUDAD       VARCHAR(20)          not null,
   constraint PK_CLIENTE primary key (CLIENTE_CODE)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
CLIENTE_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on CLIENTE (
CENESTU_CODE
);

/*==============================================================*/
/* Table: DETALLEVENTA                                          */
/*==============================================================*/
create table DETALLEVENTA (
   DVENTA_CODE          INT4                 not null,
   VENTA_CODE           INT4                 null,
   LIBRO_CODE           INT8                 not null,
   CANTIDAD             INT4                 not null,
   PRECIO               DECIMAL(11,2)        not null,
   constraint PK_DETALLEVENTA primary key (DVENTA_CODE)
);

/*==============================================================*/
/* Index: DETALLEVENTA_PK                                       */
/*==============================================================*/
create unique index DETALLEVENTA_PK on DETALLEVENTA (
DVENTA_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on DETALLEVENTA (
VENTA_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on DETALLEVENTA (
LIBRO_CODE
);

/*==============================================================*/
/* Table: EDICIONES                                             */
/*==============================================================*/
create table EDICIONES (
   EDICION_CODE         INT4                 not null,
   EDICION              VARCHAR(100)         null,
   constraint PK_EDICIONES primary key (EDICION_CODE)
);

/*==============================================================*/
/* Index: EDICIONES_PK                                          */
/*==============================================================*/
create unique index EDICIONES_PK on EDICIONES (
EDICION_CODE
);

/*==============================================================*/
/* Table: EDITORIAL                                             */
/*==============================================================*/
create table EDITORIAL (
   EDITORIAL_CODE       INT4                 not null,
   EDITORIAL_NOMBRE     VARCHAR(50)          not null,
   constraint PK_EDITORIAL primary key (EDITORIAL_CODE)
);

/*==============================================================*/
/* Index: EDITORIAL_PK                                          */
/*==============================================================*/
create unique index EDITORIAL_PK on EDITORIAL (
EDITORIAL_CODE
);

/*==============================================================*/
/* Table: ESTADOPRESTAMO                                        */
/*==============================================================*/
create table ESTADOPRESTAMO (
   ESTADO_CODE          INT4                 not null,
   ESTADO               VARCHAR(50)          null,
   constraint PK_ESTADOPRESTAMO primary key (ESTADO_CODE)
);

/*==============================================================*/
/* Index: ESTADOPRESTAMO_PK                                     */
/*==============================================================*/
create unique index ESTADOPRESTAMO_PK on ESTADOPRESTAMO (
ESTADO_CODE
);

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   GENERO_CODE          INT2                 not null,
   GENERO_NOMBRE        VARCHAR(20)          not null,
   constraint PK_GENERO primary key (GENERO_CODE)
);

/*==============================================================*/
/* Index: GENERO_PK                                             */
/*==============================================================*/
create unique index GENERO_PK on GENERO (
GENERO_CODE
);

/*==============================================================*/
/* Table: LIBRO                                                 */
/*==============================================================*/
create table LIBRO (
   LIBRO_CODE           INT8                 not null,
   GENERO_CODE          INT2                 null,
   EDITORIAL_CODE       INT4                 null,
   BIBLIOTECA_CODE      INT4                 null,
   EDICION_CODE         INT4                 null,
   ISBN                 VARCHAR(15)          not null,
   LIBRO_NOMBRE         CHAR(50)             not null,
   LIBRO_FECHA_PUBLI    DATE                 not null,
   LIBRO_DESCRIP        VARCHAR(100)         not null,
   VERSIONDIGITAL       BOOL                 null,
   constraint PK_LIBRO primary key (LIBRO_CODE)
);

/*==============================================================*/
/* Index: LIBRO_PK                                              */
/*==============================================================*/
create unique index LIBRO_PK on LIBRO (
LIBRO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on LIBRO (
GENERO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on LIBRO (
EDITORIAL_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on LIBRO (
BIBLIOTECA_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on LIBRO (
EDICION_CODE
);

/*==============================================================*/
/* Table: MULTAS                                                */
/*==============================================================*/
create table MULTAS (
   MULTA_CODE           INT4                 not null,
   PRESTAMO_CODE        INT4                 not null,
   MULTA_DESCRIPCION    VARCHAR(200)         not null,
   PENALIZACION         DECIMAL(11,2)        null,
   constraint PK_MULTAS primary key (MULTA_CODE)
);

/*==============================================================*/
/* Index: MULTAS_PK                                             */
/*==============================================================*/
create unique index MULTAS_PK on MULTAS (
MULTA_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on MULTAS (
PRESTAMO_CODE
);

/*==============================================================*/
/* Table: PRESTAMO                                              */
/*==============================================================*/
create table PRESTAMO (
   PRESTAMO_CODE        INT4                 not null,
   LIBRO_CODE           INT8                 null,
   BIBLI_CODE           INT2                 null,
   ESTADO_CODE          INT4                 null,
   CLIENTE_CODE         INT4                 null,
   FECHA_PRESTAMO       DATE                 not null,
   FECHA_MAX_DEVOLUCION DATE                 not null,
   FECHA_REAL_DEVOLUCION DATE                 not null,
   PRECIO_PRESTAMO      DECIMAL(11,2)        not null,
   constraint PK_PRESTAMO primary key (PRESTAMO_CODE)
);

/*==============================================================*/
/* Index: PRESTAMO_PK                                           */
/*==============================================================*/
create unique index PRESTAMO_PK on PRESTAMO (
PRESTAMO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on PRESTAMO (
CLIENTE_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on PRESTAMO (
LIBRO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on PRESTAMO (
BIBLI_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on PRESTAMO (
ESTADO_CODE
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   PROV_CODE            INT4                 not null,
   PROV_NOMBRE          VARCHAR(50)          not null,
   PROV_DIRECCION       VARCHAR(100)         null,
   PROV_TELEFONO        INT4                 null,
   PROV_EMAIL           VARCHAR(100)         null,
   constraint PK_PROVEEDOR primary key (PROV_CODE)
);

/*==============================================================*/
/* Index: PROVEEDOR_PK                                          */
/*==============================================================*/
create unique index PROVEEDOR_PK on PROVEEDOR (
PROV_CODE
);

/*==============================================================*/
/* Table: RELATIONSHIP_13                                       */
/*==============================================================*/
create table RELATIONSHIP_13 (
   AUTORCODE            INT4                 not null,
   LIBRO_CODE           INT8                 not null,
   constraint PK_RELATIONSHIP_13 primary key (AUTORCODE, LIBRO_CODE)
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_PK                                    */
/*==============================================================*/
create unique index RELATIONSHIP_13_PK on RELATIONSHIP_13 (
AUTORCODE,
LIBRO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on RELATIONSHIP_13 (
LIBRO_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on RELATIONSHIP_13 (
AUTORCODE
);

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   VENTA_CODE           INT4                 not null,
   BIBLI_CODE           INT2                 null,
   VENTA_FECHA          DATE                 not null,
   constraint PK_VENTA primary key (VENTA_CODE)
);

/*==============================================================*/
/* Index: VENTA_PK                                              */
/*==============================================================*/
create unique index VENTA_PK on VENTA (
VENTA_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on VENTA (
BIBLI_CODE
);

alter table ADQUISICION_LIBROS
   add constraint FK_ADQUISIC_RELATIONS_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table ADQUISICION_LIBROS
   add constraint FK_ADQUISIC_RELATIONS_PROVEEDO foreign key (PROV_CODE)
      references PROVEEDOR (PROV_CODE)
      on delete restrict on update restrict;

alter table BIBLIOTECA
   add constraint FK_BIBLIOTE_RELATIONS_CIUDAD foreign key (CIUDAD_CODE)
      references CIUDAD (CIUDAD_CODE)
      on delete restrict on update restrict;

alter table BIBLIOTECARIO
   add constraint FK_BIBLIOTE_RELATIONS_BIBLIOTE foreign key (BIBLIOTECA_CODE)
      references BIBLIOTECA (BIBLIOTECA_CODE)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_CENTROES foreign key (CENESTU_CODE)
      references CENTROESTUDIO (CENESTU_CODE)
      on delete restrict on update restrict;

alter table DETALLEVENTA
   add constraint FK_DETALLEV_RELATIONS_VENTA foreign key (VENTA_CODE)
      references VENTA (VENTA_CODE)
      on delete restrict on update restrict;

alter table DETALLEVENTA
   add constraint FK_DETALLEV_RELATIONS_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_RELATIONS_GENERO foreign key (GENERO_CODE)
      references GENERO (GENERO_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_RELATIONS_BIBLIOTE foreign key (BIBLIOTECA_CODE)
      references BIBLIOTECA (BIBLIOTECA_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_RELATIONS_EDICIONE foreign key (EDICION_CODE)
      references EDICIONES (EDICION_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_RELATIONS_EDITORIA foreign key (EDITORIAL_CODE)
      references EDITORIAL (EDITORIAL_CODE)
      on delete restrict on update restrict;

alter table MULTAS
   add constraint FK_MULTAS_RELATIONS_PRESTAMO foreign key (PRESTAMO_CODE)
      references PRESTAMO (PRESTAMO_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_RELATIONS_ESTADOPR foreign key (ESTADO_CODE)
      references ESTADOPRESTAMO (ESTADO_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_RELATIONS_CLIENTE foreign key (CLIENTE_CODE)
      references CLIENTE (CLIENTE_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_RELATIONS_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_RELATIONS_BIBLIOTE foreign key (BIBLI_CODE)
      references BIBLIOTECARIO (BIBLI_CODE)
      on delete restrict on update restrict;

alter table RELATIONSHIP_13
   add constraint FK_RELATION_RELATIONS_AUTOR foreign key (AUTORCODE)
      references AUTOR (AUTORCODE)
      on delete restrict on update restrict;

alter table RELATIONSHIP_13
   add constraint FK_RELATION_RELATIONS_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table VENTA
   add constraint FK_VENTA_RELATIONS_BIBLIOTE foreign key (BIBLI_CODE)
      references BIBLIOTECARIO (BIBLI_CODE)
      on delete restrict on update restrict;

