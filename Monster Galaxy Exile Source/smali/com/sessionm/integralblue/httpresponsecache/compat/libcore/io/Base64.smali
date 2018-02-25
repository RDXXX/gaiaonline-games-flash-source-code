.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final map:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static decode([B)[B
    .locals 1

    .prologue
    .line 38
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 14

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v1, 0x0

    .line 43
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 45
    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/util/EmptyArray;->BYTE:[B

    .line 127
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-array v7, v0, [B

    move v0, v1

    .line 56
    :goto_1
    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    .line 58
    if-eq v2, v10, :cond_1

    if-eq v2, v11, :cond_1

    if-eq v2, v12, :cond_1

    if-ne v2, v9, :cond_2

    .line 55
    :cond_1
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 62
    :cond_2
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v6, v1

    move v4, v1

    move v5, v1

    move v3, v1

    .line 76
    :goto_3
    if-ge v6, p1, :cond_a

    .line 77
    aget-byte v2, p0, v6

    .line 79
    if-eq v2, v10, :cond_e

    if-eq v2, v11, :cond_e

    if-eq v2, v12, :cond_e

    if-ne v2, v9, :cond_4

    move v2, v4

    move v4, v3

    move v3, v5

    .line 76
    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v4

    move v4, v2

    goto :goto_3

    .line 83
    :cond_4
    const/16 v8, 0x41

    if-lt v2, v8, :cond_5

    const/16 v8, 0x5a

    if-gt v2, v8, :cond_5

    .line 87
    add-int/lit8 v2, v2, -0x41

    .line 106
    :goto_5
    shl-int/lit8 v4, v4, 0x6

    int-to-byte v2, v2

    or-int/2addr v4, v2

    .line 107
    rem-int/lit8 v2, v5, 0x4

    const/4 v8, 0x3

    if-ne v2, v8, :cond_d

    .line 109
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 110
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 111
    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v4

    aput-byte v8, v7, v3

    .line 113
    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v13, v4

    move v4, v2

    move v2, v13

    goto :goto_4

    .line 88
    :cond_5
    const/16 v8, 0x61

    if-lt v2, v8, :cond_6

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_6

    .line 92
    add-int/lit8 v2, v2, -0x47

    goto :goto_5

    .line 93
    :cond_6
    const/16 v8, 0x30

    if-lt v2, v8, :cond_7

    const/16 v8, 0x39

    if-gt v2, v8, :cond_7

    .line 97
    add-int/lit8 v2, v2, 0x4

    goto :goto_5

    .line 98
    :cond_7
    const/16 v8, 0x2b

    if-ne v2, v8, :cond_8

    .line 99
    const/16 v2, 0x3e

    goto :goto_5

    .line 100
    :cond_8
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_9

    .line 101
    const/16 v2, 0x3f

    goto :goto_5

    .line 103
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 115
    :cond_a
    if-lez v0, :cond_b

    .line 117
    mul-int/lit8 v2, v0, 0x6

    shl-int/2addr v4, v2

    .line 119
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    .line 120
    const/4 v3, 0x1

    if-ne v0, v3, :cond_c

    .line 121
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v0, v4, 0x8

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    .line 125
    :cond_b
    :goto_7
    new-array v0, v3, [B

    .line 126
    invoke-static {v7, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_c
    move v3, v2

    goto :goto_7

    :cond_d
    move v2, v3

    goto :goto_6

    :cond_e
    move v2, v4

    move v4, v3

    move v3, v5

    goto :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x3d

    const/4 v2, 0x0

    .line 138
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 139
    new-array v4, v0, [B

    .line 140
    array-length v0, p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    sub-int v5, v0, v1

    move v1, v2

    move v0, v2

    .line 141
    :goto_0
    if-ge v1, v5, :cond_0

    .line 142
    add-int/lit8 v3, v0, 0x1

    sget-object v6, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v0

    .line 143
    add-int/lit8 v0, v3, 0x1

    sget-object v6, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v4, v3

    .line 144
    add-int/lit8 v6, v0, 0x1

    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v3, v3, v7

    aput-byte v3, v4, v0

    .line 145
    add-int/lit8 v3, v6, 0x1

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v0, v0, v7

    aput-byte v0, v4, v6

    .line 141
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 147
    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v4, v2, v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->construct([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    aput-byte v3, v4, v0

    .line 150
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    aget-byte v3, v3, v5

    aput-byte v3, v4, v1

    .line 151
    add-int/lit8 v1, v0, 0x1

    aput-byte v9, v4, v0

    .line 152
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_1

    .line 155
    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    aput-byte v3, v4, v0

    .line 156
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    aget-byte v6, p0, v5

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v3, v3, v6

    aput-byte v3, v4, v1

    .line 157
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Base64;->map:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v4, v0

    .line 158
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
