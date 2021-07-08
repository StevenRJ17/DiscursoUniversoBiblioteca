

/*==============================================================*/
/* Table: ADQUISICION_LIBRO                                     */
/*==============================================================*/
create table ADQUISICION_LIBRO (
   ADQUI_CODE           INT4                 not null,
   LIBRO_CODE           INT4                 not null,
   PROV_CODE            INT4                 not null,
   ADQUI_FECHA          DATE                 not null,
   ADQUI_COSTO          DECIMAL(11,2)        not null,
   constraint PK_ADQUISICION_LIBRO primary key (ADQUI_CODE)
);

/*==============================================================*/
/* Index: ADQUISICION_LIBRO_PK                                  */
/*==============================================================*/
create unique index ADQUISICION_LIBRO_PK on ADQUISICION_LIBRO (
ADQUI_CODE
);

/*==============================================================*/
/* Index: LIBRO_ADQUISICIONL_FK                                 */
/*==============================================================*/
create  index LIBRO_ADQUISICIONL_FK on ADQUISICION_LIBRO (
LIBRO_CODE
);

/*==============================================================*/
/* Index: PROVEEDOR_ADQUISICIONL_FK                             */
/*==============================================================*/
create  index PROVEEDOR_ADQUISICIONL_FK on ADQUISICION_LIBRO (
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
   CIUDAD_CODE          INT4                 not null,
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
/* Index: CIUDAD_BIBLIOTECA_FK                                  */
/*==============================================================*/
create  index CIUDAD_BIBLIOTECA_FK on BIBLIOTECA (
CIUDAD_CODE
);

/*==============================================================*/
/* Table: BIBLIOTECARIO                                         */
/*==============================================================*/
create table BIBLIOTECARIO (
   BIBLI_CODE           INT4                 not null,
   BIBLIOTECA_CODE      INT4                 not null,
   BIBLI_NOMBRE         VARCHAR(50)          not null,
   BIBLI_APELLIDO       VARCHAR(50)          not null,
   BIBLI_DIRECCION      VARCHAR(100)         not null,
   BIBLI_JORNADA        VARCHAR(50)          not null,
   BIBLI_TELEFONO       VARCHAR(20)          not null,
   constraint PK_BIBLIOTECARIO primary key (BIBLI_CODE)
);

/*==============================================================*/
/* Index: BIBLIOTECARIO_PK                                      */
/*==============================================================*/
create unique index BIBLIOTECARIO_PK on BIBLIOTECARIO (
BIBLI_CODE
);

/*==============================================================*/
/* Index: BIBLIOTECA_BIBLIOTECARIO_FK                           */
/*==============================================================*/
create  index BIBLIOTECA_BIBLIOTECARIO_FK on BIBLIOTECARIO (
BIBLIOTECA_CODE
);

/*==============================================================*/
/* Table: CENTROESTUDIO                                         */
/*==============================================================*/
create table CENTROESTUDIO (
   CENESTU_CODE         INT4                 not null,
   CENESTU_NOMBRE       VARCHAR(50)          not null,
   CENESTU_DIRECCION    VARCHAR(100)         not null,
   CENESTU_TELEF        VARCHAR(20)          null,
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
   CENESTU_CODE         INT4                 not null,
   CIUDAD_CODE          INT4                 not null,
   CLIENTE_CEDULA       VARCHAR(50)          not null,
   CLIENTE_NOMBRES      VARCHAR(50)          not null,
   CLIENTE_APELLIDOS    VARCHAR(50)          not null,
   CLIENTE_TELEF        VARCHAR(20)          not null,
   CLIENTE_DIRECCION    VARCHAR(100)         not null,
   constraint PK_CLIENTE primary key (CLIENTE_CODE)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
CLIENTE_CODE
);

/*==============================================================*/
/* Index: CENTROE_CLIENTE_FK                                    */
/*==============================================================*/
create  index CENTROE_CLIENTE_FK on CLIENTE (
CENESTU_CODE
);

/*==============================================================*/
/* Index: CIUDAD_CLIENTE_FK                                     */
/*==============================================================*/
create  index CIUDAD_CLIENTE_FK on CLIENTE (
CIUDAD_CODE
);

/*==============================================================*/
/* Table: DETALLEVENTA                                          */
/*==============================================================*/
create table DETALLEVENTA (
   DVENTA_CODE          INT4                 not null,
   VENTA_CODE           INT4                 not null,
   LIBRO_CODE           INT4                 not null,
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
/* Index: VENTA_DETALLEVENTA_FK                                 */
/*==============================================================*/
create  index VENTA_DETALLEVENTA_FK on DETALLEVENTA (
VENTA_CODE
);

/*==============================================================*/
/* Index: LIBRO_DETALLEVENTA_FK                                 */
/*==============================================================*/
create  index LIBRO_DETALLEVENTA_FK on DETALLEVENTA (
LIBRO_CODE
);

/*==============================================================*/
/* Table: EDICION                                               */
/*==============================================================*/
create table EDICION (
   EDICION_CODE         INT4                 not null,
   EDITORIAL_CODE       INT4                 not null,
   EDICION              VARCHAR(100)         null,
   constraint PK_EDICION primary key (EDICION_CODE)
);

/*==============================================================*/
/* Index: EDICION_PK                                            */
/*==============================================================*/
create unique index EDICION_PK on EDICION (
EDICION_CODE
);

/*==============================================================*/
/* Index: EDITORIAL_EDICION_FK                                  */
/*==============================================================*/
create  index EDITORIAL_EDICION_FK on EDICION (
EDITORIAL_CODE
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
   LIBRO_CODE           INT4                 not null,
   GENERO_CODE          INT2                 not null,
   EDITORIAL_CODE       INT4                 not null,
   BIBLIOTECA_CODE      INT4                 not null,
   EDICION_CODE         INT4                 not null,
   ISBN                 VARCHAR(15)          not null,
   LIBRO_NOMBRE         VARCHAR(50)          not null,
   LIBRO_FECHA_PUBLI    DATE                 not null,
   LIBRO_DESCRIP        VARCHAR(100)         not null,
   VERSIONDIGITAL       VARCHAR(50)          null,
   constraint PK_LIBRO primary key (LIBRO_CODE)
);

/*==============================================================*/
/* Index: LIBRO_PK                                              */
/*==============================================================*/
create unique index LIBRO_PK on LIBRO (
LIBRO_CODE
);

/*==============================================================*/
/* Index: GENERO_LIBRO_FK                                       */
/*==============================================================*/
create  index GENERO_LIBRO_FK on LIBRO (
GENERO_CODE
);

/*==============================================================*/
/* Index: EDITORIAL_LIBRO_FK                                    */
/*==============================================================*/
create  index EDITORIAL_LIBRO_FK on LIBRO (
EDITORIAL_CODE
);

/*==============================================================*/
/* Index: BIBLIOTECA_LIBRO_FK                                   */
/*==============================================================*/
create  index BIBLIOTECA_LIBRO_FK on LIBRO (
BIBLIOTECA_CODE
);

/*==============================================================*/
/* Index: EDICION_LIBRO_FK                                      */
/*==============================================================*/
create  index EDICION_LIBRO_FK on LIBRO (
EDICION_CODE
);

/*==============================================================*/
/* Table: LIBRO_AUTOR                                           */
/*==============================================================*/
create table LIBRO_AUTOR (
   LIBAUT               INT4                 not null,
   LIBRO_CODE           INT4                 not null,
   AUTORCODE            INT4                 not null,
   constraint PK_LIBRO_AUTOR primary key (LIBAUT)
);

/*==============================================================*/
/* Index: LIBRO_AUTOR_PK                                        */
/*==============================================================*/
create unique index LIBRO_AUTOR_PK on LIBRO_AUTOR (
LIBAUT
);

/*==============================================================*/
/* Index: LIBRO_LIBROAUTOR_FK                                   */
/*==============================================================*/
create  index LIBRO_LIBROAUTOR_FK on LIBRO_AUTOR (
LIBRO_CODE
);

/*==============================================================*/
/* Index: AUTOR_LIBROAUTOR_FK                                   */
/*==============================================================*/
create  index AUTOR_LIBROAUTOR_FK on LIBRO_AUTOR (
AUTORCODE
);

/*==============================================================*/
/* Table: MULTAS                                               */
/*==============================================================*/
create table MULTAS (
   MULTA_CODE           INT4                 not null,
   PRESTAMO_CODE        INT4                 not null,
   MULTA_DESCRIPCION    VARCHAR(200)         not null,
   MULTA_VALOR          DECIMAL(11,2)        null,
   MULTA_FECHA          DATE                 null,
   constraint PK_MULTAS primary key (MULTA_CODE)
);

/*==============================================================*/
/* Index: MULTAS_PK                                             */
/*==============================================================*/
create unique index MULTAS_PK on MULTAS (
MULTA_CODE
);

/*==============================================================*/
/* Index: PRESTAMO_MULTA_FK                                     */
/*==============================================================*/
create  index PRESTAMO_MULTA_FK on MULTAS (
PRESTAMO_CODE
);

/*==============================================================*/
/* Table: PRESTAMO                                              */
/*==============================================================*/
create table PRESTAMO (
   PRESTAMO_CODE        INT4                 not null,
   CLIENTE_CODE         INT4                 not null,
   LIBRO_CODE           INT4                 not null,
   BIBLI_CODE           INT4                 not null,
   ESTADO_CODE          INT4                 not null,
   FECHA_PRESTAMO       DATE                 not null,
   FECHA_MAX_DEVOLUCION DATE                 not null,
   FECHA_REAL_DEVOLUCION DATE                 null,
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
/* Index: CLIENTE_PRESTAMO_FK                                   */
/*==============================================================*/
create  index CLIENTE_PRESTAMO_FK on PRESTAMO (
CLIENTE_CODE
);

/*==============================================================*/
/* Index: LIBRO_PRESTAMO_FK                                     */
/*==============================================================*/
create  index LIBRO_PRESTAMO_FK on PRESTAMO (
LIBRO_CODE
);

/*==============================================================*/
/* Index: BIBLIOTECARIO_PRESTAMO_FK                             */
/*==============================================================*/
create  index BIBLIOTECARIO_PRESTAMO_FK on PRESTAMO (
BIBLI_CODE
);

/*==============================================================*/
/* Index: ESTADOPRE_PRESTAMO_FK                                 */
/*==============================================================*/
create  index ESTADOPRE_PRESTAMO_FK on PRESTAMO (
ESTADO_CODE
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   PROV_CODE            INT4                 not null,
   PROV_NOMBRE          VARCHAR(50)          not null,
   PROV_DIRECCION       VARCHAR(100)         null,
   PROV_TELEFONO        VARCHAR(50)          null,
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
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   VENTA_CODE           INT4                 not null,
   BIBLI_CODE           INT4                 not null,
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
/* Index: BIBLIOTECARIO_VENTA_FK                                */
/*==============================================================*/
create  index BIBLIOTECARIO_VENTA_FK on VENTA (
BIBLI_CODE
);

alter table ADQUISICION_LIBRO
   add constraint FK_ADQUISIC_LIBRO_ADQ_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table ADQUISICION_LIBRO
   add constraint FK_ADQUISIC_PROVEEDOR_PROVEEDO foreign key (PROV_CODE)
      references PROVEEDOR (PROV_CODE)
      on delete restrict on update restrict;

alter table BIBLIOTECA
   add constraint FK_BIBLIOTE_CIUDAD_BI_CIUDAD foreign key (CIUDAD_CODE)
      references CIUDAD (CIUDAD_CODE)
      on delete restrict on update restrict;

alter table BIBLIOTECARIO
   add constraint FK_BIBLIOTE_BIBLIOTEC_BIBLIOTE foreign key (BIBLIOTECA_CODE)
      references BIBLIOTECA (BIBLIOTECA_CODE)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_CENTROE_C_CENTROES foreign key (CENESTU_CODE)
      references CENTROESTUDIO (CENESTU_CODE)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_CIUDAD_CL_CIUDAD foreign key (CIUDAD_CODE)
      references CIUDAD (CIUDAD_CODE)
      on delete restrict on update restrict;

alter table DETALLEVENTA
   add constraint FK_DETALLEV_LIBRO_DET_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table DETALLEVENTA
   add constraint FK_DETALLEV_VENTA_DET_VENTA foreign key (VENTA_CODE)
      references VENTA (VENTA_CODE)
      on delete restrict on update restrict;

alter table EDICION
   add constraint FK_EDICION_EDITORIAL_EDITORIA foreign key (EDITORIAL_CODE)
      references EDITORIAL (EDITORIAL_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_BIBLIOTEC_BIBLIOTE foreign key (BIBLIOTECA_CODE)
      references BIBLIOTECA (BIBLIOTECA_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_EDICION_L_EDICION foreign key (EDICION_CODE)
      references EDICION (EDICION_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_EDITORIAL_EDITORIA foreign key (EDITORIAL_CODE)
      references EDITORIAL (EDITORIAL_CODE)
      on delete restrict on update restrict;

alter table LIBRO
   add constraint FK_LIBRO_GENERO_LI_GENERO foreign key (GENERO_CODE)
      references GENERO (GENERO_CODE)
      on delete restrict on update restrict;

alter table LIBRO_AUTOR
   add constraint FK_LIBRO_AU_AUTOR_LIB_AUTOR foreign key (AUTORCODE)
      references AUTOR (AUTORCODE)
      on delete restrict on update restrict;

alter table LIBRO_AUTOR
   add constraint FK_LIBRO_AU_LIBRO_LIB_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table MULTAS
   add constraint FK_MULTAS_PRESTAMO__PRESTAMO foreign key (PRESTAMO_CODE)
      references PRESTAMO (PRESTAMO_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_BIBLIOTEC_BIBLIOTE foreign key (BIBLI_CODE)
      references BIBLIOTECARIO (BIBLI_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_CLIENTE_P_CLIENTE foreign key (CLIENTE_CODE)
      references CLIENTE (CLIENTE_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_ESTADOPRE_ESTADOPR foreign key (ESTADO_CODE)
      references ESTADOPRESTAMO (ESTADO_CODE)
      on delete restrict on update restrict;

alter table PRESTAMO
   add constraint FK_PRESTAMO_LIBRO_PRE_LIBRO foreign key (LIBRO_CODE)
      references LIBRO (LIBRO_CODE)
      on delete restrict on update restrict;

alter table VENTA
   add constraint FK_VENTA_BIBLIOTEC_BIBLIOTE foreign key (BIBLI_CODE)
      references BIBLIOTECARIO (BIBLI_CODE)
      on delete restrict on update restrict;

