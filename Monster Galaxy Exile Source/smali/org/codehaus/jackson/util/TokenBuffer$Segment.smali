.class public final Lorg/codehaus/jackson/util/TokenBuffer$Segment;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Segment"
.end annotation


# static fields
.field public static final TOKENS_PER_SEGMENT:I = 0x10

.field private static final TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;


# instance fields
.field protected _next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _tokenTypes:J

.field protected final _tokens:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1234
    const/16 v1, 0x10

    new-array v1, v1, [Lorg/codehaus/jackson/JsonToken;

    sput-object v1, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;

    .line 1235
    invoke-static {}, Lorg/codehaus/jackson/JsonToken;->values()[Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1236
    .local v0, "t":[Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;

    const/16 v2, 0xf

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    .line 1256
    return-void
.end method


# virtual methods
.method public append(ILorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lorg/codehaus/jackson/JsonToken;

    .prologue
    .line 1280
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1281
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;)V

    .line 1282
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return-object v0

    .line 1284
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 1285
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;)V

    .line 1286
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public append(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lorg/codehaus/jackson/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1291
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1292
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1293
    const/4 v0, 0x0

    .line 1297
    :goto_0
    return-object v0

    .line 1295
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 1296
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->set(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1297
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1271
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public next()Lorg/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    return-object v0
.end method

.method public set(ILorg/codehaus/jackson/JsonToken;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lorg/codehaus/jackson/JsonToken;

    .prologue
    .line 1302
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1306
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1307
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1309
    :cond_0
    iget-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1310
    return-void
.end method

.method public set(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lorg/codehaus/jackson/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1314
    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 1315
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1319
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1320
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1322
    :cond_0
    iget-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1323
    return-void
.end method

.method public type(I)Lorg/codehaus/jackson/JsonToken;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1262
    iget-wide v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1263
    .local v1, "l":J
    if-lez p1, :cond_0

    .line 1264
    shl-int/lit8 v3, p1, 0x2

    shr-long/2addr v1, v3

    .line 1266
    :cond_0
    long-to-int v3, v1

    and-int/lit8 v0, v3, 0xf

    .line 1267
    .local v0, "ix":I
    sget-object v3, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lorg/codehaus/jackson/JsonToken;

    aget-object v3, v3, v0

    return-object v3
.end method
