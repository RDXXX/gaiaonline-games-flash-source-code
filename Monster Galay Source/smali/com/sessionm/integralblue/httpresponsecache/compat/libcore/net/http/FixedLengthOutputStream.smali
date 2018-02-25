.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;
.source "ProGuard"


# instance fields
.field private bytesRemaining:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 31
    iput p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->closed:Z

    .line 56
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    if-lez v0, :cond_0

    .line 57
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->checkNotClosed()V

    .line 36
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/Arrays;->checkOffsetAndCount(III)V

    .line 37
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    if-le p3, v0, :cond_0

    .line 38
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/FixedLengthOutputStream;->bytesRemaining:I

    .line 42
    return-void
.end method
