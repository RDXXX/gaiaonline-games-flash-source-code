.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;
.source "ProGuard"


# instance fields
.field private inputExhausted:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p3, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 32
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->checkNotClosed()V

    .line 52
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

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
    .line 56
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->closed:Z

    .line 60
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->unexpectedEndOfInput()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 35
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/Arrays;->checkOffsetAndCount(III)V

    .line 36
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->checkNotClosed()V

    .line 37
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 41
    if-ne v1, v0, :cond_2

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->inputExhausted:Z

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->endOfInput(Z)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/UnknownLengthHttpInputStream;->cacheWrite([BII)V

    move v0, v1

    .line 47
    goto :goto_0
.end method
