.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x33

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x13

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x4e

.field static final json_start:I = 0x1


# instance fields
.field private current:Ljava/lang/Object;

.field private final elements:Lcom/badlogic/gdx/utils/Array;

.field private root:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 409
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 426
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 434
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 442
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 451
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 468
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 483
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 491
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private static init__json_actions_0()[B
    .locals 1

    .prologue
    .line 396
    const/16 v0, 0x37

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
        0x1t
        0x8t
        0x1t
        0x9t
        0x1t
        0xat
        0x1t
        0xbt
        0x2t
        0x0t
        0x2t
        0x2t
        0x0t
        0x3t
        0x2t
        0x4t
        0x9t
        0x2t
        0x4t
        0xbt
        0x2t
        0x5t
        0x9t
        0x2t
        0x5t
        0xbt
        0x2t
        0x6t
        0x9t
        0x2t
        0x6t
        0xbt
        0x2t
        0x7t
        0x9t
        0x2t
        0x7t
        0xbt
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .locals 1

    .prologue
    .line 486
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x9t
        0x9t
        0xdt
        0xft
        0xbt
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .locals 1

    .prologue
    .line 445
    const/16 v0, 0x58

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xcs
        0xfs
        0x12s
        0x1bs
        0x1es
        0x20s
        0x24s
        0x26s
        0x28s
        0x2as
        0x2cs
        0x2es
        0x30s
        0x32s
        0x34s
        0x36s
        0x38s
        0x3as
        0x40s
        0x43s
        0x46s
        0x4as
        0x56s
        0x59s
        0x5cs
        0x61s
        0x65s
        0x6es
        0x71s
        0x79s
        0x7bs
        0x83s
        0x87s
        0x89s
        0x8fs
        0x98s
        0x9as
        0x9cs
        0x9es
        0xa0s
        0xa5s
        0xa7s
        0xa9s
        0xabs
        0xb0s
        0xb2s
        0xb4s
        0xb6s
        0xbbs
        0xc4s
        0xd2s
        0xd5s
        0xd8s
        0xdds
        0xe9s
        0xecs
        0xf4s
        0xf6s
        0xfes
        0x102s
        0x104s
        0x10as
        0x113s
        0x115s
        0x117s
        0x119s
        0x11bs
        0x120s
        0x122s
        0x124s
        0x126s
        0x12bs
        0x12ds
        0x12fs
        0x131s
        0x136s
        0x13fs
        0x142s
        0x148s
        0x14es
        0x152s
        0x159s
        0x15cs
        0x15fs
        0x162s
        0x163s
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .locals 1

    .prologue
    .line 403
    const/16 v0, 0x58

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
        0xds
        0xfs
        0x11s
        0x1as
        0x1ds
        0x1fs
        0x23s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x35s
        0x37s
        0x39s
        0x3ds
        0x4as
        0x4cs
        0x4es
        0x53s
        0x57s
        0x60s
        0x63s
        0x6bs
        0x6ds
        0x76s
        0x7as
        0x7cs
        0x83s
        0x8ds
        0x8es
        0x8fs
        0x90s
        0x91s
        0x96s
        0x97s
        0x98s
        0x99s
        0x9es
        0x9fs
        0xa0s
        0xa1s
        0xa6s
        0xafs
        0xbes
        0xc0s
        0xc2s
        0xc7s
        0xd4s
        0xd7s
        0xdfs
        0xe1s
        0xeas
        0xees
        0xf0s
        0xf7s
        0x101s
        0x102s
        0x103s
        0x104s
        0x105s
        0x10as
        0x10bs
        0x10cs
        0x10ds
        0x112s
        0x113s
        0x114s
        0x115s
        0x11as
        0x123s
        0x126s
        0x12cs
        0x133s
        0x138s
        0x140s
        0x143s
        0x146s
        0x149s
        0x149s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .locals 1

    .prologue
    .line 437
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x1t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .locals 1

    .prologue
    .line 429
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x2t
        0x7t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x2t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x3t
        0x2t
        0x7t
        0x1t
        0x6t
        0x0t
        0x5t
        0x2t
        0x0t
        0x3t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x7t
        0xbt
        0x2t
        0x2t
        0x3t
        0x9t
        0x1t
        0x6t
        0x0t
        0x5t
        0x2t
        0x0t
        0x3t
        0x6t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x7t
        0x1t
        0x4t
        0x3t
        0x1t
        0x4t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .locals 1

    .prologue
    .line 471
    const/16 v0, 0x165

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x15t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x1t
        0x0t
        0x1ct
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x19t
        0x1t
        0x1t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x15t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x1t
        0x0t
        0x1ct
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x13t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xdt
        0x2bt
        0xdt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xft
        0xft
        0x31t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x25t
        0xbt
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x15t
        0x17t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x1t
        0x0t
        0x1ct
        0x1t
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x15t
        0x0t
        0x0t
        0x0t
        0x11t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x22t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x22t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x9t
        0x22t
        0x9t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x22t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xdt
        0x2et
        0xdt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xft
        0xft
        0x34t
        0xft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x28t
        0xbt
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x9t
        0x9t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        0x0t
        0xdt
        0xdt
        0x0t
        0xft
        0xft
        0x0t
        0xbt
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .locals 1

    .prologue
    .line 412
    const/16 v0, 0x14a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 2
        0x20s
        0x22s
        0x2ds
        0x30s
        0x5bs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x31s
        0x39s
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x30s
        0x31s
        0x39s
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x61s
        0x6cs
        0x73s
        0x65s
        0x75s
        0x6cs
        0x6cs
        0x72s
        0x75s
        0x65s
        0x20s
        0x22s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x20s
        0x3as
        0x9s
        0xds
        0x20s
        0x22s
        0x2ds
        0x30s
        0x5bs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x31s
        0x39s
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x20s
        0x22s
        0x9s
        0xds
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x30s
        0x31s
        0x39s
        0x20s
        0x2cs
        0x2es
        0x45s
        0x65s
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x45s
        0x65s
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x2es
        0x45s
        0x65s
        0x7ds
        0x9s
        0xds
        0x30s
        0x39s
        0x61s
        0x6cs
        0x73s
        0x65s
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x75s
        0x6cs
        0x6cs
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x72s
        0x75s
        0x65s
        0x20s
        0x2cs
        0x7ds
        0x9s
        0xds
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x20s
        0x22s
        0x2cs
        0x2ds
        0x30s
        0x5bs
        0x5ds
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x31s
        0x39s
        0x22s
        0x5cs
        0x22s
        0x5cs
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x20s
        0x22s
        0x2ds
        0x30s
        0x5bs
        0x66s
        0x6es
        0x74s
        0x7bs
        0x9s
        0xds
        0x31s
        0x39s
        0x30s
        0x31s
        0x39s
        0x20s
        0x2cs
        0x2es
        0x45s
        0x5ds
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x45s
        0x5ds
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x2bs
        0x2ds
        0x30s
        0x39s
        0x30s
        0x39s
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2cs
        0x2es
        0x45s
        0x5ds
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x61s
        0x6cs
        0x73s
        0x65s
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x75s
        0x6cs
        0x6cs
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x72s
        0x75s
        0x65s
        0x20s
        0x2cs
        0x5ds
        0x9s
        0xds
        0x22s
        0x2fs
        0x5cs
        0x62s
        0x66s
        0x6es
        0x72s
        0x74s
        0x75s
        0x20s
        0x9s
        0xds
        0x20s
        0x2es
        0x45s
        0x65s
        0x9s
        0xds
        0x20s
        0x45s
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x2es
        0x45s
        0x65s
        0x9s
        0xds
        0x30s
        0x39s
        0x20s
        0x9s
        0xds
        0x20s
        0x9s
        0xds
        0x20s
        0x9s
        0xds
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .locals 1

    .prologue
    .line 454
    const/16 v0, 0x165

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x5t
        0x4ft
        0x4et
        0x9t
        0xdt
        0x10t
        0x4et
        0x1t
        0x52t
        0x0t
        0x4et
        0x4t
        0x3t
        0x4et
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x4ft
        0x52t
        0x0t
        0x50t
        0x0t
        0x8t
        0x8t
        0x51t
        0x0t
        0x51t
        0x0t
        0xat
        0x0t
        0xbt
        0x0t
        0xct
        0x0t
        0x53t
        0x0t
        0xet
        0x0t
        0xft
        0x0t
        0x54t
        0x0t
        0x11t
        0x0t
        0x12t
        0x0t
        0x55t
        0x0t
        0x13t
        0x14t
        0x1bt
        0x56t
        0x13t
        0x0t
        0x16t
        0x32t
        0x15t
        0x16t
        0x32t
        0x15t
        0x16t
        0x17t
        0x16t
        0x0t
        0x17t
        0x18t
        0x1dt
        0x1et
        0x1at
        0x25t
        0x2at
        0x2et
        0x1at
        0x17t
        0x24t
        0x0t
        0x1at
        0x1ct
        0x19t
        0x1at
        0x1ct
        0x19t
        0x1at
        0x1bt
        0x56t
        0x1at
        0x0t
        0x1bt
        0x14t
        0x1bt
        0x0t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x0t
        0x1et
        0x24t
        0x0t
        0x1at
        0x1bt
        0x1ft
        0x21t
        0x21t
        0x56t
        0x1at
        0x0t
        0x20t
        0x0t
        0x1at
        0x1bt
        0x21t
        0x21t
        0x56t
        0x1at
        0x20t
        0x0t
        0x22t
        0x22t
        0x23t
        0x0t
        0x23t
        0x0t
        0x1at
        0x1bt
        0x56t
        0x1at
        0x23t
        0x0t
        0x1at
        0x1bt
        0x1ft
        0x21t
        0x21t
        0x56t
        0x1at
        0x24t
        0x0t
        0x26t
        0x0t
        0x27t
        0x0t
        0x28t
        0x0t
        0x29t
        0x0t
        0x1at
        0x1bt
        0x56t
        0x1at
        0x0t
        0x2bt
        0x0t
        0x2ct
        0x0t
        0x2dt
        0x0t
        0x1at
        0x1bt
        0x56t
        0x1at
        0x0t
        0x2ft
        0x0t
        0x30t
        0x0t
        0x31t
        0x0t
        0x1at
        0x1bt
        0x56t
        0x1at
        0x0t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x0t
        0x33t
        0x34t
        0x37t
        0x38t
        0x39t
        0x36t
        0x57t
        0x40t
        0x45t
        0x49t
        0x36t
        0x33t
        0x3ft
        0x0t
        0x36t
        0x4dt
        0x35t
        0x36t
        0x4dt
        0x35t
        0x36t
        0x37t
        0x57t
        0x36t
        0x0t
        0x37t
        0x34t
        0x38t
        0x39t
        0x36t
        0x40t
        0x45t
        0x49t
        0x36t
        0x37t
        0x3ft
        0x0t
        0x39t
        0x3ft
        0x0t
        0x36t
        0x37t
        0x3at
        0x3ct
        0x57t
        0x3ct
        0x36t
        0x0t
        0x3bt
        0x0t
        0x36t
        0x37t
        0x3ct
        0x57t
        0x3ct
        0x36t
        0x3bt
        0x0t
        0x3dt
        0x3dt
        0x3et
        0x0t
        0x3et
        0x0t
        0x36t
        0x37t
        0x57t
        0x36t
        0x3et
        0x0t
        0x36t
        0x37t
        0x3at
        0x3ct
        0x57t
        0x3ct
        0x36t
        0x3ft
        0x0t
        0x41t
        0x0t
        0x42t
        0x0t
        0x43t
        0x0t
        0x44t
        0x0t
        0x36t
        0x37t
        0x57t
        0x36t
        0x0t
        0x46t
        0x0t
        0x47t
        0x0t
        0x48t
        0x0t
        0x36t
        0x37t
        0x57t
        0x36t
        0x0t
        0x4at
        0x0t
        0x4bt
        0x0t
        0x4ct
        0x0t
        0x36t
        0x37t
        0x57t
        0x36t
        0x0t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x35t
        0x0t
        0x4et
        0x4et
        0x0t
        0x4et
        0x6t
        0x7t
        0x7t
        0x4et
        0x0t
        0x4et
        0x7t
        0x7t
        0x4et
        0x50t
        0x0t
        0x4et
        0x4et
        0x51t
        0x0t
        0x4et
        0x6t
        0x7t
        0x7t
        0x4et
        0x52t
        0x0t
        0x4et
        0x4et
        0x0t
        0x4et
        0x4et
        0x0t
        0x4et
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    instance-of v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    instance-of v0, v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 512
    :cond_1
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    goto :goto_0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 548
    .local v4, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x10

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 549
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 550
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 551
    .local v1, "c":C
    const/16 v5, 0x5c

    if-eq v1, v5, :cond_0

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    .line 553
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 555
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    if-ne v2, v4, :cond_1

    .line 587
    .end local v1    # "c":C
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 556
    .restart local v1    # "c":C
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 557
    const/16 v5, 0x75

    if-ne v1, v5, :cond_2

    .line 558
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 559
    add-int/lit8 v2, v3, 0x4

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v3, v2

    .line 560
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 562
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 583
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal escaped character: \\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 568
    :sswitch_0
    const/16 v1, 0x8

    .line 585
    :goto_2
    :sswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 571
    :sswitch_2
    const/16 v1, 0xc

    .line 572
    goto :goto_2

    .line 574
    :sswitch_3
    const/16 v1, 0xa

    .line 575
    goto :goto_2

    .line 577
    :sswitch_4
    const/16 v1, 0xd

    .line 578
    goto :goto_2

    .line 580
    :sswitch_5
    const/16 v1, 0x9

    .line 581
    goto :goto_2

    .end local v1    # "c":C
    :cond_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 562
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_0
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 543
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method protected number(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 539
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 8
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 43
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [C

    .line 44
    .local v0, "data":[C
    const/4 v4, 0x0

    .line 46
    .local v4, "offset":I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 47
    .local v2, "length":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 55
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 48
    :cond_0
    if-nez v2, :cond_1

    .line 49
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 50
    .local v3, "newData":[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    move-object v0, v3

    .line 52
    goto :goto_0

    .line 53
    .end local v3    # "newData":[C
    :cond_1
    add-int/2addr v4, v2

    goto :goto_0

    .line 56
    .end local v0    # "data":[C
    .end local v2    # "length":I
    .end local v4    # "offset":I
    :catch_0
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v5, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 38
    .local v0, "data":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Ljava/lang/Object;
    .locals 44
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 74
    move/from16 v31, p2

    .local v31, "p":I
    move/from16 v33, p3

    .local v33, "pe":I
    move/from16 v23, v33

    .local v23, "eof":I
    const/16 v37, 0x0

    .line 75
    .local v37, "top":I
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 77
    .local v36, "stack":[I
    const/16 v35, 0x0

    .line 78
    .local v35, "s":I
    new-instance v28, Lcom/badlogic/gdx/utils/Array;

    const/16 v40, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 79
    .local v28, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/16 v29, 0x0

    .line 80
    .local v29, "needsUnescape":Z
    const/16 v32, 0x0

    .line 82
    .local v32, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const/16 v21, 0x0

    .line 83
    .local v21, "debug":Z
    if-eqz v21, :cond_0

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v40 .. v40}, Ljava/io/PrintStream;->println()V

    .line 89
    :cond_0
    const/16 v20, 0x1

    .line 90
    .local v20, "cs":I
    const/16 v37, 0x0

    .line 96
    const/16 v18, 0x0

    .line 100
    .local v18, "_trans":I
    const/4 v11, 0x0

    .local v11, "_goto_targ":I
    move/from16 v38, v37

    .line 104
    .end local v37    # "top":I
    .local v38, "top":I
    :goto_0
    packed-switch v11, :pswitch_data_0

    :cond_1
    :pswitch_0
    move/from16 v37, v38

    .line 375
    .end local v38    # "top":I
    .restart local v37    # "top":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_2e

    .line 376
    const/16 v26, 0x1

    .line 377
    .local v26, "lineNumber":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_2d

    .line 378
    aget-char v40, p1, v25

    const/16 v41, 0xa

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    add-int/lit8 v26, v26, 0x1

    .line 377
    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 106
    .end local v25    # "i":I
    .end local v26    # "lineNumber":I
    .end local v37    # "top":I
    .restart local v38    # "top":I
    :pswitch_1
    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 107
    const/4 v11, 0x4

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    if-nez v20, :cond_4

    .line 111
    const/4 v11, 0x5

    .line 112
    goto :goto_0

    .line 117
    :cond_4
    :pswitch_2
    :try_start_0
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v12, v40, v20

    .line 118
    .local v12, "_keys":I
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v18, v40, v20

    .line 119
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v13, v40, v20

    .line 120
    .local v13, "_klen":I
    if-lez v13, :cond_5

    .line 121
    move v14, v12

    .line 123
    .local v14, "_lower":I
    add-int v40, v12, v13

    add-int/lit8 v19, v40, -0x1

    .line 125
    .local v19, "_upper":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 137
    add-int/2addr v12, v13

    .line 138
    add-int v18, v18, v13

    .line 141
    .end local v14    # "_lower":I
    .end local v19    # "_upper":I
    :cond_5
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v13, v40, v20

    .line 142
    if-lez v13, :cond_6

    .line 143
    move v14, v12

    .line 145
    .restart local v14    # "_lower":I
    shl-int/lit8 v40, v13, 0x1

    add-int v40, v40, v12

    add-int/lit8 v19, v40, -0x2

    .line 147
    .restart local v19    # "_upper":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_a

    .line 159
    add-int v18, v18, v13

    .line 163
    .end local v14    # "_lower":I
    .end local v19    # "_upper":I
    :cond_6
    :goto_5
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v20, v40, v18

    .line 165
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v40, v40, v18

    if-eqz v40, :cond_22

    .line 166
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v9, v40, v18

    .line 167
    .local v9, "_acts":I
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "_acts":I
    .local v10, "_acts":I
    aget-byte v16, v40, v9

    .local v16, "_nacts":I
    move/from16 v17, v16

    .line 168
    .end local v16    # "_nacts":I
    .local v17, "_nacts":I
    :goto_6
    add-int/lit8 v16, v17, -0x1

    .end local v17    # "_nacts":I
    .restart local v16    # "_nacts":I
    if-lez v17, :cond_22

    .line 169
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "_acts":I
    .restart local v9    # "_acts":I
    aget-byte v40, v40, v10

    packed-switch v40, :pswitch_data_1

    :goto_7
    move/from16 v17, v16

    .end local v16    # "_nacts":I
    .restart local v17    # "_nacts":I
    move v10, v9

    .line 300
    .end local v9    # "_acts":I
    .restart local v10    # "_acts":I
    goto :goto_6

    .line 127
    .end local v10    # "_acts":I
    .end local v17    # "_nacts":I
    .restart local v14    # "_lower":I
    .restart local v19    # "_upper":I
    :cond_7
    sub-int v40, v19, v14

    shr-int/lit8 v40, v40, 0x1

    add-int v15, v14, v40

    .line 128
    .local v15, "_mid":I
    aget-char v40, p1, v31

    sget-object v41, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v41, v41, v15

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_8

    .line 129
    add-int/lit8 v19, v15, -0x1

    goto :goto_3

    .line 130
    :cond_8
    aget-char v40, p1, v31

    sget-object v41, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v41, v41, v15

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_9

    .line 131
    add-int/lit8 v14, v15, 0x1

    goto :goto_3

    .line 133
    :cond_9
    sub-int v40, v15, v12

    add-int v18, v18, v40

    .line 134
    goto :goto_5

    .line 149
    .end local v15    # "_mid":I
    :cond_a
    sub-int v40, v19, v14

    shr-int/lit8 v40, v40, 0x1

    and-int/lit8 v40, v40, -0x2

    add-int v15, v14, v40

    .line 150
    .restart local v15    # "_mid":I
    aget-char v40, p1, v31

    sget-object v41, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v41, v41, v15

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 151
    add-int/lit8 v19, v15, -0x2

    goto :goto_4

    .line 152
    :cond_b
    aget-char v40, p1, v31

    sget-object v41, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v42, v15, 0x1

    aget-char v41, v41, v42

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_c

    .line 153
    add-int/lit8 v14, v15, 0x2

    goto :goto_4

    .line 155
    :cond_c
    sub-int v40, v15, v12

    shr-int/lit8 v40, v40, 0x1

    add-int v18, v18, v40

    .line 156
    goto :goto_5

    .line 173
    .end local v14    # "_lower":I
    .end local v15    # "_mid":I
    .end local v19    # "_upper":I
    .restart local v9    # "_acts":I
    .restart local v16    # "_nacts":I
    :pswitch_3
    move/from16 v35, v31

    .line 174
    const/16 v29, 0x0

    .line 176
    goto :goto_7

    .line 180
    :pswitch_4
    const/16 v29, 0x1

    .line 182
    goto :goto_7

    .line 186
    :pswitch_5
    new-instance v27, Ljava/lang/String;

    sub-int v40, v31, v35

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 187
    .local v27, "name":Ljava/lang/String;
    move/from16 v35, v31

    .line 188
    if-eqz v29, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 189
    :cond_d
    if-eqz v21, :cond_e

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "name: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_e
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 371
    .end local v9    # "_acts":I
    .end local v12    # "_keys":I
    .end local v13    # "_klen":I
    .end local v16    # "_nacts":I
    .end local v27    # "name":Ljava/lang/String;
    :catch_0
    move-exception v24

    move/from16 v37, v38

    .line 372
    .end local v38    # "top":I
    .local v24, "ex":Ljava/lang/RuntimeException;
    .restart local v37    # "top":I
    :goto_8
    move-object/from16 v32, v24

    goto/16 :goto_1

    .line 196
    .end local v24    # "ex":Ljava/lang/RuntimeException;
    .end local v37    # "top":I
    .restart local v9    # "_acts":I
    .restart local v12    # "_keys":I
    .restart local v13    # "_klen":I
    .restart local v16    # "_nacts":I
    .restart local v38    # "top":I
    :pswitch_6
    new-instance v39, Ljava/lang/String;

    sub-int v40, v31, v35

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 197
    .local v39, "value":Ljava/lang/String;
    move/from16 v35, v31

    .line 198
    if-eqz v29, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 199
    :cond_f
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_11

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 200
    .restart local v27    # "name":Ljava/lang/String;
    :goto_9
    if-eqz v21, :cond_10

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "string: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 199
    .end local v27    # "name":Ljava/lang/String;
    :cond_11
    const/16 v27, 0x0

    goto :goto_9

    .line 207
    .end local v39    # "value":Ljava/lang/String;
    :pswitch_7
    new-instance v39, Ljava/lang/String;

    sub-int v40, v31, v35

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 208
    .restart local v39    # "value":Ljava/lang/String;
    move/from16 v35, v31

    .line 209
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_13

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 210
    .restart local v27    # "name":Ljava/lang/String;
    :goto_a
    if-eqz v21, :cond_12

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "number: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_12
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;F)V

    goto/16 :goto_7

    .line 209
    .end local v27    # "name":Ljava/lang/String;
    :cond_13
    const/16 v27, 0x0

    goto :goto_a

    .line 217
    .end local v39    # "value":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_15

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 218
    .restart local v27    # "name":Ljava/lang/String;
    :goto_b
    if-eqz v21, :cond_14

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "boolean: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=true"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    :cond_14
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 217
    .end local v27    # "name":Ljava/lang/String;
    :cond_15
    const/16 v27, 0x0

    goto :goto_b

    .line 225
    :pswitch_9
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_17

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 226
    .restart local v27    # "name":Ljava/lang/String;
    :goto_c
    if-eqz v21, :cond_16

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "boolean: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=false"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    :cond_16
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 225
    .end local v27    # "name":Ljava/lang/String;
    :cond_17
    const/16 v27, 0x0

    goto :goto_c

    .line 233
    :pswitch_a
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_19

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 234
    .restart local v27    # "name":Ljava/lang/String;
    :goto_d
    if-eqz v21, :cond_18

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "null: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    :cond_18
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 233
    .end local v27    # "name":Ljava/lang/String;
    :cond_19
    const/16 v27, 0x0

    goto :goto_d

    .line 241
    :pswitch_b
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_1c

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 242
    .restart local v27    # "name":Ljava/lang/String;
    :goto_e
    if-eqz v21, :cond_1a

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "startObject: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_1b

    .line 246
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v40, v0

    mul-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 247
    .local v30, "newStack":[I
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v36

    move/from16 v1, v40

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    move-object/from16 v36, v30

    .line 251
    .end local v30    # "newStack":[I
    :cond_1b
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "top":I
    .restart local v37    # "top":I
    :try_start_1
    aput v20, v36, v38
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    const/16 v20, 0x13

    .line 253
    const/4 v11, 0x2

    move/from16 v38, v37

    .line 254
    .end local v37    # "top":I
    .restart local v38    # "top":I
    goto/16 :goto_0

    .line 241
    .end local v27    # "name":Ljava/lang/String;
    :cond_1c
    const/16 v27, 0x0

    goto :goto_e

    .line 262
    :pswitch_c
    if-eqz v21, :cond_1d

    :try_start_2
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v41, "endObject"

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    add-int/lit8 v37, v38, -0x1

    .end local v38    # "top":I
    .restart local v37    # "top":I
    :try_start_3
    aget v20, v36, v37
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    const/4 v11, 0x2

    move/from16 v38, v37

    .line 267
    .end local v37    # "top":I
    .restart local v38    # "top":I
    goto/16 :goto_0

    .line 274
    :pswitch_d
    :try_start_4
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_20

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 275
    .restart local v27    # "name":Ljava/lang/String;
    :goto_f
    if-eqz v21, :cond_1e

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "startArray: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_1f

    .line 279
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v40, v0

    mul-int/lit8 v40, v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 280
    .restart local v30    # "newStack":[I
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v36

    move/from16 v1, v40

    move-object/from16 v2, v30

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 281
    move-object/from16 v36, v30

    .line 284
    .end local v30    # "newStack":[I
    :cond_1f
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "top":I
    .restart local v37    # "top":I
    :try_start_5
    aput v20, v36, v38
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 285
    const/16 v20, 0x33

    .line 286
    const/4 v11, 0x2

    move/from16 v38, v37

    .line 287
    .end local v37    # "top":I
    .restart local v38    # "top":I
    goto/16 :goto_0

    .line 274
    .end local v27    # "name":Ljava/lang/String;
    :cond_20
    const/16 v27, 0x0

    goto :goto_f

    .line 295
    :pswitch_e
    if-eqz v21, :cond_21

    :try_start_6
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v41, "endArray"

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 298
    add-int/lit8 v37, v38, -0x1

    .end local v38    # "top":I
    .restart local v37    # "top":I
    :try_start_7
    aget v20, v36, v37
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 299
    const/4 v11, 0x2

    move/from16 v38, v37

    .line 300
    .end local v37    # "top":I
    .restart local v38    # "top":I
    goto/16 :goto_0

    .line 310
    .end local v9    # "_acts":I
    .end local v12    # "_keys":I
    .end local v13    # "_klen":I
    .end local v16    # "_nacts":I
    :cond_22
    :pswitch_f
    if-nez v20, :cond_23

    .line 311
    const/4 v11, 0x5

    .line 312
    goto/16 :goto_0

    .line 314
    :cond_23
    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    .line 315
    const/4 v11, 0x1

    .line 316
    goto/16 :goto_0

    .line 319
    :cond_24
    :pswitch_10
    move/from16 v0, v31

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 320
    :try_start_8
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v5, v40, v20

    .line 321
    .local v5, "__acts":I
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "__acts":I
    .local v6, "__acts":I
    aget-byte v7, v40, v5

    .local v7, "__nacts":I
    move v8, v7

    .line 322
    .end local v7    # "__nacts":I
    .local v8, "__nacts":I
    :goto_10
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "__nacts":I
    .restart local v7    # "__nacts":I
    if-lez v8, :cond_1

    .line 323
    sget-object v40, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "__acts":I
    .restart local v5    # "__acts":I
    aget-byte v40, v40, v6

    packed-switch v40, :pswitch_data_2

    :goto_11
    move v8, v7

    .end local v7    # "__nacts":I
    .restart local v8    # "__nacts":I
    move v6, v5

    .line 357
    .end local v5    # "__acts":I
    .restart local v6    # "__acts":I
    goto :goto_10

    .line 327
    .end local v6    # "__acts":I
    .end local v8    # "__nacts":I
    .restart local v5    # "__acts":I
    .restart local v7    # "__nacts":I
    :pswitch_11
    new-instance v39, Ljava/lang/String;

    sub-int v40, v31, v35

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 328
    .restart local v39    # "value":Ljava/lang/String;
    move/from16 v35, v31

    .line 329
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_26

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 330
    .restart local v27    # "name":Ljava/lang/String;
    :goto_12
    if-eqz v21, :cond_25

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "number: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    :cond_25
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;F)V

    goto :goto_11

    .line 329
    .end local v27    # "name":Ljava/lang/String;
    :cond_26
    const/16 v27, 0x0

    goto :goto_12

    .line 337
    .end local v39    # "value":Ljava/lang/String;
    :pswitch_12
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_28

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 338
    .restart local v27    # "name":Ljava/lang/String;
    :goto_13
    if-eqz v21, :cond_27

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "boolean: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=true"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    :cond_27
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto/16 :goto_11

    .line 337
    .end local v27    # "name":Ljava/lang/String;
    :cond_28
    const/16 v27, 0x0

    goto :goto_13

    .line 345
    :pswitch_13
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_2a

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 346
    .restart local v27    # "name":Ljava/lang/String;
    :goto_14
    if-eqz v21, :cond_29

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "boolean: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "=false"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :cond_29
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    goto/16 :goto_11

    .line 345
    .end local v27    # "name":Ljava/lang/String;
    :cond_2a
    const/16 v27, 0x0

    goto :goto_14

    .line 353
    :pswitch_14
    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-lez v40, :cond_2c

    invoke-virtual/range {v28 .. v28}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    move-object/from16 v27, v40

    .line 354
    .restart local v27    # "name":Ljava/lang/String;
    :goto_15
    if-eqz v21, :cond_2b

    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "null: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    :cond_2b
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_11

    .line 353
    .end local v27    # "name":Ljava/lang/String;
    :cond_2c
    const/16 v27, 0x0

    goto :goto_15

    .line 379
    .end local v5    # "__acts":I
    .end local v7    # "__nacts":I
    .end local v38    # "top":I
    .restart local v25    # "i":I
    .restart local v26    # "lineNumber":I
    .restart local v37    # "top":I
    :cond_2d
    new-instance v40, Ljava/lang/IllegalArgumentException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Error parsing JSON on line "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " near: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    new-instance v42, Ljava/lang/String;

    sub-int v43, v33, v31

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v40

    .line 381
    .end local v25    # "i":I
    .end local v26    # "lineNumber":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v40, v0

    if-eqz v40, :cond_30

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v22

    .line 383
    .local v22, "element":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 384
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;

    move/from16 v40, v0

    if-eqz v40, :cond_2f

    .line 385
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "Error parsing JSON, unmatched brace."

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 387
    :cond_2f
    new-instance v40, Ljava/lang/IllegalArgumentException;

    const-string v41, "Error parsing JSON, unmatched bracket."

    invoke-direct/range {v40 .. v41}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v40

    .line 389
    .end local v22    # "element":Ljava/lang/Object;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    move-object/from16 v34, v0

    .line 390
    .local v34, "root":Ljava/lang/Object;
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    .line 391
    return-object v34

    .line 371
    .end local v34    # "root":Ljava/lang/Object;
    .restart local v9    # "_acts":I
    .restart local v12    # "_keys":I
    .restart local v13    # "_klen":I
    .restart local v16    # "_nacts":I
    :catch_1
    move-exception v24

    goto/16 :goto_8

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 323
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method protected pop()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    .line 531
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    .line 532
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startArray(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 523
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 524
    .local v0, "value":Lcom/badlogic/gdx/utils/Array;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 526
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    .line 527
    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 516
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 517
    .local v0, "value":Lcom/badlogic/gdx/utils/ObjectMap;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 519
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    .line 520
    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    return-void
.end method
