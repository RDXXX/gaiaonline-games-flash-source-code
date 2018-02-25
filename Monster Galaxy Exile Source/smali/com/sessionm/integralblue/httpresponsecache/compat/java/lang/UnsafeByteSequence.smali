.class public Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 39
    return-void
.end method


# virtual methods
.method public rewind()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    .line 51
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    new-array v0, v0, [B

    .line 78
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v0, v1, v2, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/Strings;->construct([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 65
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 66
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 55
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 56
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->bytes:[B

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/lang/UnsafeByteSequence;->count:I

    .line 61
    return-void
.end method
