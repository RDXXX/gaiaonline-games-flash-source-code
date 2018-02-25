.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final DIGITS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x24

    .line 11
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->DIGITS:[C

    .line 18
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->UPPER_CASE_DIGITS:[C

    return-void

    .line 11
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 18
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->UPPER_CASE_DIGITS:[C

    .line 67
    :goto_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [C

    .line 69
    array-length v4, p0

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_1

    aget-byte v5, p0, v1

    .line 70
    add-int/lit8 v6, v2, 0x1

    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v3, v2

    .line 71
    add-int/lit8 v2, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v3, v6

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_0
    sget-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->DIGITS:[C

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final construct([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
