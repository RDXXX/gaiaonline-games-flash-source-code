.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/XmlReader$Element;
    }
.end annotation


# static fields
.field private static final _xml_actions:[B

.field private static final _xml_index_offsets:[S

.field private static final _xml_indicies:[B

.field private static final _xml_key_offsets:[B

.field private static final _xml_range_lengths:[B

.field private static final _xml_single_lengths:[B

.field private static final _xml_trans_actions:[B

.field private static final _xml_trans_keys:[C

.field private static final _xml_trans_targs:[B

.field static final xml_en_elementBody:I = 0xf

.field static final xml_en_main:I = 0x1

.field static final xml_error:I = 0x0

.field static final xml_first_final:I = 0x22

.field static final xml_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final textBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    .line 332
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_key_offsets_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    .line 341
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    .line 348
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    .line 355
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    .line 362
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    .line 372
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    .line 380
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    .line 387
    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    .line 429
    return-void
.end method

.method private static init__xml_actions_0()[B
    .locals 1

    .prologue
    .line 322
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x2t
        0x0t
        0x6t
        0x2t
        0x1t
        0x4t
        0x2t
        0x2t
        0x4t
    .end array-data
.end method

.method private static init__xml_index_offsets_0()[S
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0x24

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x4s
        0x9s
        0xes
        0x14s
        0x1as
        0x1es
        0x23s
        0x25s
        0x27s
        0x2cs
        0x30s
        0x34s
        0x36s
        0x38s
        0x3cs
        0x3es
        0x43s
        0x48s
        0x4es
        0x54s
        0x58s
        0x5ds
        0x5fs
        0x61s
        0x66s
        0x6as
        0x6es
        0x70s
        0x74s
        0x76s
        0x78s
        0x7as
        0x7cs
        0x7fs
    .end array-data
.end method

.method private static init__xml_indicies_0()[B
    .locals 1

    .prologue
    .line 365
    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        0x5t
        0x6t
        0x7t
        0x5t
        0x4t
        0x9t
        0xat
        0x1t
        0xbt
        0x9t
        0x8t
        0xdt
        0x1t
        0xet
        0x1t
        0xdt
        0xct
        0xft
        0x10t
        0xft
        0x1t
        0x10t
        0x11t
        0x12t
        0x10t
        0x1t
        0x14t
        0x13t
        0x16t
        0x15t
        0x9t
        0xat
        0xbt
        0x9t
        0x1t
        0x17t
        0x18t
        0x17t
        0x1t
        0x19t
        0xbt
        0x19t
        0x1t
        0x14t
        0x1at
        0x16t
        0x1bt
        0x1dt
        0x1et
        0x1dt
        0x1ct
        0x20t
        0x1ft
        0x1et
        0x22t
        0x1t
        0x1et
        0x21t
        0x24t
        0x25t
        0x26t
        0x24t
        0x23t
        0x28t
        0x29t
        0x1t
        0x2at
        0x28t
        0x27t
        0x2ct
        0x1t
        0x2dt
        0x1t
        0x2ct
        0x2bt
        0x2et
        0x2ft
        0x2et
        0x1t
        0x2ft
        0x30t
        0x31t
        0x2ft
        0x1t
        0x33t
        0x32t
        0x35t
        0x34t
        0x28t
        0x29t
        0x2at
        0x28t
        0x1t
        0x36t
        0x37t
        0x36t
        0x1t
        0x38t
        0x2at
        0x38t
        0x1t
        0x39t
        0x1t
        0x39t
        0x22t
        0x39t
        0x1t
        0x1t
        0x3at
        0x3bt
        0x3at
        0x33t
        0x3ct
        0x35t
        0x3dt
        0x3et
        0x3et
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_key_offsets_0()[B
    .locals 1

    .prologue
    .line 328
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x4t
        0x9t
        0xet
        0x14t
        0x1at
        0x1et
        0x23t
        0x24t
        0x25t
        0x2at
        0x2et
        0x32t
        0x33t
        0x34t
        0x38t
        0x39t
        0x3et
        0x43t
        0x49t
        0x4ft
        0x53t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x63t
        0x67t
        0x68t
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x73t
    .end array-data
.end method

.method private static init__xml_range_lengths_0()[B
    .locals 1

    .prologue
    .line 351
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_single_lengths_0()[B
    .locals 1

    .prologue
    .line 344
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x3t
        0x4t
        0x4t
        0x2t
        0x3t
        0x1t
        0x1t
        0x3t
        0x2t
        0x2t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_actions_0()[B
    .locals 1

    .prologue
    .line 383
    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xft
        0x1t
        0x0t
        0x0t
        0x3t
        0x3t
        0x14t
        0x1t
        0x0t
        0x0t
        0x9t
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x11t
        0x0t
        0xdt
        0x5t
        0x17t
        0x0t
        0x0t
        0x0t
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__xml_trans_keys_0()[C
    .locals 1

    .prologue
    .line 335
    const/16 v0, 0x74

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x3cs
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x27s
        0x27s
        0x20s
        0x3cs
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x9s
        0xds
        0x20s
        0x3ds
        0x9s
        0xds
        0x20s
        0x22s
        0x27s
        0x9s
        0xds
        0x22s
        0x22s
        0x20s
        0x2fs
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x20s
        0x3es
        0x9s
        0xds
        0x3cs
        0x20s
        0x2fs
        0x9s
        0xds
        0x3es
        0x3es
        0x27s
        0x27s
        0x20s
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method private static init__xml_trans_targs_0()[B
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x3t
        0x3t
        0x4t
        0xbt
        0x22t
        0x5t
        0x4t
        0xbt
        0x22t
        0x5t
        0x6t
        0x7t
        0x6t
        0x7t
        0x8t
        0xdt
        0x9t
        0xat
        0x9t
        0xat
        0xct
        0x22t
        0xct
        0xet
        0xet
        0x10t
        0xft
        0x11t
        0x10t
        0x11t
        0x12t
        0x1et
        0x12t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x13t
        0x1at
        0x1ct
        0x14t
        0x15t
        0x16t
        0x15t
        0x16t
        0x17t
        0x20t
        0x18t
        0x19t
        0x18t
        0x19t
        0x1bt
        0x1ct
        0x1bt
        0x1dt
        0x1ft
        0x23t
        0x21t
        0x21t
        0x22t
    .end array-data
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 426
    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 427
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected entity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<"

    .line 416
    :goto_0
    return-object v0

    .line 412
    :cond_0
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ">"

    goto :goto_0

    .line 413
    :cond_1
    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&"

    goto :goto_0

    .line 414
    :cond_2
    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\'"

    goto :goto_0

    .line 415
    :cond_3
    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\""

    goto :goto_0

    .line 416
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 400
    .local v0, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 401
    .local v1, "parent":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 403
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 404
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 6
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 48
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 49
    .local v0, "data":[C
    const/4 v3, 0x0

    .line 51
    .local v3, "offset":I
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 52
    .local v1, "length":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 60
    invoke-virtual {p0, v0, v5, v3}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    return-object v4

    .line 53
    :cond_0
    if-nez v1, :cond_1

    .line 54
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [C

    .line 55
    .local v2, "newData":[C
    array-length v4, v0

    invoke-static {v0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    move-object v0, v2

    .line 57
    goto :goto_0

    .line 58
    .end local v2    # "newData":[C
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 3
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 44
    .local v0, "data":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 38
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 72
    move/from16 v28, p2

    .local v28, "p":I
    move/from16 v29, p3

    .line 74
    .local v29, "pe":I
    const/16 v31, 0x0

    .line 75
    .local v31, "s":I
    const/4 v15, 0x0

    .line 76
    .local v15, "attributeName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 80
    .local v24, "hasBody":Z
    const/16 v17, 0x1

    .line 86
    .local v17, "cs":I
    const/4 v13, 0x0

    .line 90
    .local v13, "_trans":I
    const/4 v6, 0x0

    .line 94
    .local v6, "_goto_targ":I
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 304
    :cond_0
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1d

    .line 305
    const/16 v26, 0x1

    .line 306
    .local v26, "lineNumber":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    .line 307
    aget-char v33, p1, v25

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    add-int/lit8 v26, v26, 0x1

    .line 306
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 96
    .end local v25    # "i":I
    .end local v26    # "lineNumber":I
    :pswitch_0
    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 97
    const/4 v6, 0x4

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    if-nez v17, :cond_3

    .line 101
    const/4 v6, 0x5

    .line 102
    goto :goto_0

    .line 107
    :cond_3
    :pswitch_1
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    aget-byte v7, v33, v17

    .line 108
    .local v7, "_keys":I
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    aget-short v13, v33, v17

    .line 109
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    aget-byte v8, v33, v17

    .line 110
    .local v8, "_klen":I
    if-lez v8, :cond_4

    .line 111
    move v9, v7

    .line 113
    .local v9, "_lower":I
    add-int v33, v7, v8

    add-int/lit8 v14, v33, -0x1

    .line 115
    .local v14, "_upper":I
    :goto_2
    if-ge v14, v9, :cond_7

    .line 127
    add-int/2addr v7, v8

    .line 128
    add-int/2addr v13, v8

    .line 131
    .end local v9    # "_lower":I
    .end local v14    # "_upper":I
    :cond_4
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    aget-byte v8, v33, v17

    .line 132
    if-lez v8, :cond_5

    .line 133
    move v9, v7

    .line 135
    .restart local v9    # "_lower":I
    shl-int/lit8 v33, v8, 0x1

    add-int v33, v33, v7

    add-int/lit8 v14, v33, -0x2

    .line 137
    .restart local v14    # "_upper":I
    :goto_3
    if-ge v14, v9, :cond_a

    .line 149
    add-int/2addr v13, v8

    .line 153
    .end local v9    # "_lower":I
    .end local v14    # "_upper":I
    :cond_5
    :goto_4
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    aget-byte v13, v33, v13

    .line 154
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    aget-byte v17, v33, v13

    .line 156
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v33, v33, v13

    if-eqz v33, :cond_1a

    .line 157
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v4, v33, v13

    .line 158
    .local v4, "_acts":I
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "_acts":I
    .local v5, "_acts":I
    aget-byte v11, v33, v4

    .local v11, "_nacts":I
    move v12, v11

    .line 159
    .end local v11    # "_nacts":I
    .local v12, "_nacts":I
    :goto_5
    add-int/lit8 v11, v12, -0x1

    .end local v12    # "_nacts":I
    .restart local v11    # "_nacts":I
    if-lez v12, :cond_1a

    .line 160
    sget-object v33, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "_acts":I
    .restart local v4    # "_acts":I
    aget-byte v33, v33, v5

    packed-switch v33, :pswitch_data_1

    :cond_6
    :goto_6
    move v12, v11

    .end local v11    # "_nacts":I
    .restart local v12    # "_nacts":I
    move v5, v4

    .line 280
    .end local v4    # "_acts":I
    .restart local v5    # "_acts":I
    goto :goto_5

    .line 117
    .end local v5    # "_acts":I
    .end local v12    # "_nacts":I
    .restart local v9    # "_lower":I
    .restart local v14    # "_upper":I
    :cond_7
    sub-int v33, v14, v9

    shr-int/lit8 v33, v33, 0x1

    add-int v10, v9, v33

    .line 118
    .local v10, "_mid":I
    aget-char v33, p1, v28

    sget-object v34, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v34, v34, v10

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 119
    add-int/lit8 v14, v10, -0x1

    goto :goto_2

    .line 120
    :cond_8
    aget-char v33, p1, v28

    sget-object v34, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v34, v34, v10

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_9

    .line 121
    add-int/lit8 v9, v10, 0x1

    goto :goto_2

    .line 123
    :cond_9
    sub-int v33, v10, v7

    add-int v13, v13, v33

    .line 124
    goto :goto_4

    .line 139
    .end local v10    # "_mid":I
    :cond_a
    sub-int v33, v14, v9

    shr-int/lit8 v33, v33, 0x1

    and-int/lit8 v33, v33, -0x2

    add-int v10, v9, v33

    .line 140
    .restart local v10    # "_mid":I
    aget-char v33, p1, v28

    sget-object v34, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v34, v34, v10

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    .line 141
    add-int/lit8 v14, v10, -0x2

    goto :goto_3

    .line 142
    :cond_b
    aget-char v33, p1, v28

    sget-object v34, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    add-int/lit8 v35, v10, 0x1

    aget-char v34, v34, v35

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_c

    .line 143
    add-int/lit8 v9, v10, 0x2

    goto :goto_3

    .line 145
    :cond_c
    sub-int v33, v10, v7

    shr-int/lit8 v33, v33, 0x1

    add-int v13, v13, v33

    .line 146
    goto :goto_4

    .line 164
    .end local v9    # "_lower":I
    .end local v10    # "_mid":I
    .end local v14    # "_upper":I
    .restart local v4    # "_acts":I
    .restart local v11    # "_nacts":I
    :pswitch_2
    move/from16 v31, v28

    .line 166
    goto :goto_6

    .line 170
    :pswitch_3
    aget-char v16, p1, v31

    .line 171
    .local v16, "c":C
    const/16 v33, 0x3f

    move/from16 v0, v16

    move/from16 v1, v33

    if-eq v0, v1, :cond_d

    const/16 v33, 0x21

    move/from16 v0, v16

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 172
    :cond_d
    add-int/lit8 v33, v31, 0x1

    aget-char v33, p1, v33

    const/16 v34, 0x5b

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    add-int/lit8 v33, v31, 0x2

    aget-char v33, p1, v33

    const/16 v34, 0x43

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    add-int/lit8 v33, v31, 0x3

    aget-char v33, p1, v33

    const/16 v34, 0x44

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    add-int/lit8 v33, v31, 0x4

    aget-char v33, p1, v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    add-int/lit8 v33, v31, 0x5

    aget-char v33, p1, v33

    const/16 v34, 0x54

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    add-int/lit8 v33, v31, 0x6

    aget-char v33, p1, v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    add-int/lit8 v33, v31, 0x7

    aget-char v33, p1, v33

    const/16 v34, 0x5b

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    .line 179
    add-int/lit8 v31, v31, 0x8

    .line 180
    add-int/lit8 v28, v31, 0x2

    .line 181
    :goto_7
    add-int/lit8 v33, v28, -0x2

    aget-char v33, p1, v33

    const/16 v34, 0x5d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    add-int/lit8 v33, v28, -0x1

    aget-char v33, p1, v33

    const/16 v34, 0x5d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    aget-char v33, p1, v28

    const/16 v34, 0x3e

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_f

    .line 182
    :cond_e
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 183
    :cond_f
    new-instance v33, Ljava/lang/String;

    sub-int v34, v28, v31

    add-int/lit8 v34, v34, -0x2

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    .line 188
    :cond_10
    const/16 v17, 0xf

    .line 189
    const/4 v6, 0x2

    .line 190
    goto/16 :goto_0

    .line 185
    :cond_11
    :goto_8
    aget-char v33, p1, v28

    const/16 v34, 0x3e

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    .line 186
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 193
    :cond_12
    const/16 v24, 0x1

    .line 194
    new-instance v33, Ljava/lang/String;

    sub-int v34, v28, v31

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->open(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 200
    .end local v16    # "c":C
    :pswitch_4
    const/16 v24, 0x0

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    .line 203
    const/16 v17, 0xf

    .line 204
    const/4 v6, 0x2

    .line 205
    goto/16 :goto_0

    .line 212
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    .line 214
    const/16 v17, 0xf

    .line 215
    const/4 v6, 0x2

    .line 216
    goto/16 :goto_0

    .line 223
    :pswitch_6
    if-eqz v24, :cond_6

    .line 224
    const/16 v17, 0xf

    .line 225
    const/4 v6, 0x2

    .line 226
    goto/16 :goto_0

    .line 233
    :pswitch_7
    new-instance v15, Ljava/lang/String;

    .end local v15    # "attributeName":Ljava/lang/String;
    sub-int v33, v28, v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 235
    .restart local v15    # "attributeName":Ljava/lang/String;
    goto/16 :goto_6

    .line 239
    :pswitch_8
    new-instance v33, Ljava/lang/String;

    sub-int v34, v28, v31

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v15, v1}, Lcom/badlogic/gdx/utils/XmlReader;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 245
    :pswitch_9
    move/from16 v21, v28

    .line 246
    .local v21, "end":I
    :goto_9
    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_13

    .line 247
    add-int/lit8 v33, v21, -0x1

    aget-char v33, p1, v33

    sparse-switch v33, :sswitch_data_0

    .line 257
    :cond_13
    move/from16 v18, v31

    .line 258
    .local v18, "current":I
    const/16 v22, 0x0

    .local v22, "entityFound":Z
    move/from16 v19, v18

    .line 259
    .end local v18    # "current":I
    .local v19, "current":I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    .line 260
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "current":I
    .restart local v18    # "current":I
    aget-char v33, p1, v19

    const/16 v34, 0x26

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_14

    move/from16 v19, v18

    .end local v18    # "current":I
    .restart local v19    # "current":I
    goto :goto_a

    .line 252
    .end local v19    # "current":I
    .end local v22    # "entityFound":Z
    :sswitch_0
    add-int/lit8 v21, v21, -0x1

    .line 253
    goto :goto_9

    .line 261
    .restart local v18    # "current":I
    .restart local v22    # "entityFound":Z
    :cond_14
    move/from16 v23, v18

    .local v23, "entityStart":I
    move/from16 v19, v18

    .line 262
    .end local v18    # "current":I
    .restart local v19    # "current":I
    :goto_b
    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    .line 263
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "current":I
    .restart local v18    # "current":I
    aget-char v33, p1, v19

    const/16 v34, 0x3b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_15

    move/from16 v19, v18

    .end local v18    # "current":I
    .restart local v19    # "current":I
    goto :goto_b

    .line 264
    .end local v19    # "current":I
    .restart local v18    # "current":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    sub-int v34, v23, v31

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 265
    new-instance v27, Ljava/lang/String;

    sub-int v33, v18, v23

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 266
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 267
    .local v32, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    if-eqz v32, :cond_16

    .end local v32    # "value":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    move/from16 v31, v18

    .line 269
    const/16 v22, 0x1

    .end local v27    # "name":Ljava/lang/String;
    :goto_d
    move/from16 v19, v18

    .line 272
    .end local v18    # "current":I
    .restart local v19    # "current":I
    goto :goto_a

    .end local v19    # "current":I
    .restart local v18    # "current":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v32    # "value":Ljava/lang/String;
    :cond_16
    move-object/from16 v32, v27

    .line 267
    goto :goto_c

    .line 273
    .end local v18    # "current":I
    .end local v23    # "entityStart":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    .restart local v19    # "current":I
    :cond_17
    if-eqz v22, :cond_19

    .line 274
    move/from16 v0, v31

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    sub-int v34, v21, v31

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 275
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_6

    .line 278
    :cond_19
    new-instance v33, Ljava/lang/String;

    sub-int v34, v21, v31

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 287
    .end local v4    # "_acts":I
    .end local v7    # "_keys":I
    .end local v8    # "_klen":I
    .end local v11    # "_nacts":I
    .end local v19    # "current":I
    .end local v21    # "end":I
    .end local v22    # "entityFound":Z
    :cond_1a
    :pswitch_a
    if-nez v17, :cond_1b

    .line 288
    const/4 v6, 0x5

    .line 289
    goto/16 :goto_0

    .line 291
    :cond_1b
    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 292
    const/4 v6, 0x1

    .line 293
    goto/16 :goto_0

    .line 308
    .restart local v25    # "i":I
    .restart local v26    # "lineNumber":I
    :cond_1c
    new-instance v33, Ljava/lang/IllegalArgumentException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Error parsing XML on line "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " near: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    new-instance v35, Ljava/lang/String;

    const/16 v36, 0x20

    sub-int v37, v29, v28

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 310
    .end local v25    # "i":I
    .end local v26    # "lineNumber":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v33, v0

    if-eqz v33, :cond_1e

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 312
    .local v20, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 313
    new-instance v33, Ljava/lang/IllegalArgumentException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Error parsing XML, unclosed element: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 315
    .end local v20    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-object/from16 v30, v0

    .line 316
    .local v30, "root":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 317
    return-object v30

    .end local v30    # "root":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v4    # "_acts":I
    .restart local v7    # "_keys":I
    .restart local v8    # "_klen":I
    .restart local v11    # "_nacts":I
    .restart local v19    # "current":I
    .restart local v21    # "end":I
    .restart local v22    # "entityFound":Z
    .restart local v23    # "entityStart":I
    :cond_1f
    move/from16 v18, v19

    .end local v19    # "current":I
    .restart local v18    # "current":I
    goto/16 :goto_d

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected text(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "existing":Ljava/lang/String;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    .line 422
    return-void
.end method
