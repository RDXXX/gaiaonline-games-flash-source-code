.class public Lcom/sessionm/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x7d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sessionm/a/a;->a:[C

    return-void

    :array_0
    .array-data 2
        0x81s
        0xfes
        0x93s
        0x80s
        0x6cs
        0xbcs
        0x75s
        0x81s
        0xfds
        0x49s
        0x59s
        0xc0s
        0x8ds
        0xads
        0x81s
        0x5cs
        0xd1s
        0xdcs
        0x6bs
        0xccs
        0x49s
        0x43s
        0xads
        0xe7s
        0x59s
        0xd4s
        0xcas
        0x99s
        0x20s
        0x43s
        0xccs
        0x6s
        0xbes
        0xcas
        0x4bs
        0xb0s
        0xb5s
        0x7s
        0x4bs
        0x4ds
        0x6s
        0x69s
        0x49s
        0x18s
        0x4as
        0x27s
        0xf9s
        0x12s
        0xcfs
        0x49s
        0x25s
        0x9s
        0xe2s
        0x8fs
        0xdes
        0xf1s
        0xeds
        0xe1s
        0x51s
        0x9ds
        0x25s
        0x86s
        0x41s
        0x2as
        0xdas
        0x6ds
        0x61s
        0x67s
        0x89s
        0x68s
        0x26s
        0x84s
        0xd0s
        0xb2s
        0x9cs
        0x5cs
        0x7as
        0x94s
        0xd3s
        0x43s
        0xfas
        0xf1s
        0x32s
        0x24s
        0x2ds
        0x80s
        0x36s
        0xf4s
        0xeds
        0x9es
        0x6s
        0x3es
        0x2bs
        0x91s
        0x71s
        0xbds
        0xeds
        0x3es
        0xb6s
        0x6es
        0x83s
        0x54s
        0x78s
        0xbfs
        0x56s
        0x66s
        0xes
        0xffs
        0xd4s
        0x3ds
        0xfas
        0x7cs
        0x69s
        0xbes
        0xdds
        0x1bs
        0xa8s
        0xa5s
        0x99s
        0x53s
        0x22s
        0x98s
        0x90s
        0xb9s
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[C[C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/sessionm/a/a;->a:[C

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {p1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 39
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/sessionm/a/a;->a([C)[B

    move-result-object v0

    const-string v2, "HmacSHA256"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 43
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 47
    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 49
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([C)[B
    .locals 3

    .prologue
    .line 23
    array-length v0, p0

    new-array v1, v0, [B

    .line 24
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 25
    aget-char v2, p0, v0

    xor-int/lit16 v2, v2, 0x7c5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-object v1
.end method
