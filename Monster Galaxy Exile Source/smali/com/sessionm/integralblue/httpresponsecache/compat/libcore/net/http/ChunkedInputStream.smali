.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;
.source "ProGuard"


# static fields
.field private static final MIN_LAST_CHUNK_LENGTH:I

.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "\r\n0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 37
    return-void
.end method

.method private readChunkSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 76
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eq v0, v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 81
    if-eq v1, v2, :cond_1

    .line 82
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v0, :cond_2

    .line 90
    iput-boolean v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    .line 91
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->readTrailers()V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->endOfInput(Z)V

    .line 94
    :cond_2
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a hex chunk size, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 97
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->checkNotClosed()V

    .line 98
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

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
    .line 105
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->closed:Z

    .line 110
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

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

    .line 40
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/Arrays;->checkOffsetAndCount(III)V

    .line 41
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->checkNotClosed()V

    .line 43
    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-ne v1, v0, :cond_3

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->readChunkSize()V

    .line 48
    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v1, :cond_0

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 53
    if-ne v1, v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->unexpectedEndOfInput()V

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_4
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    .line 58
    invoke-virtual {p0, p1, p2, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->cacheWrite([BII)V

    .line 67
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    sget v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->MIN_LAST_CHUNK_LENGTH:I

    if-lt v0, v2, :cond_5

    .line 68
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedInputStream;->readChunkSize()V

    :cond_5
    move v0, v1

    .line 71
    goto :goto_0
.end method
