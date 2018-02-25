.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;
.source "ProGuard"


# instance fields
.field private bytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p3, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 32
    iput p4, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    .line 33
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->endOfInput(Z)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->checkNotClosed()V

    .line 59
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->closed:Z

    .line 67
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->unexpectedEndOfInput()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 39
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/Arrays;->checkOffsetAndCount(III)V

    .line 40
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->checkNotClosed()V

    .line 41
    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 45
    if-ne v1, v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    .line 50
    invoke-virtual {p0, p1, p2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->cacheWrite([BII)V

    .line 51
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_2

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthInputStream;->endOfInput(Z)V

    :cond_2
    move v0, v1

    .line 54
    goto :goto_0
.end method
