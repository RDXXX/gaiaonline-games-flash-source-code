.class final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;
.super Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;
.source "ProGuard"


# static fields
.field private static final CRLF:[B

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B


# instance fields
.field private final bufferedChunk:Ljava/io/ByteArrayOutputStream;

.field private final hex:[B

.field private final maxChunkLength:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->CRLF:[B

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->HEX_DIGITS:[B

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->FINAL_CHUNK:[B

    return-void

    .line 29
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 30
    nop

    :array_1
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 33
    :array_2
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpOutputStream;-><init>()V

    .line 36
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->hex:[B

    .line 44
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->dataLength(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->maxChunkLength:I

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    .line 47
    return-void

    .line 36
    nop

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
        0xdt
        0xat
    .end array-data
.end method

.method private dataLength(I)I
    .locals 2

    .prologue
    .line 55
    const/4 v1, 0x4

    .line 56
    sub-int v0, p1, v1

    :goto_0
    if-lez v0, :cond_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 56
    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 59
    :cond_0
    sub-int v0, p1, v1

    return v0
.end method

.method private writeBufferedChunkToSocket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 123
    if-gtz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->writeHex(I)V

    .line 128
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 129
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 130
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private writeHex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/16 v0, 0x8

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->hex:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->HEX_DIGITS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 100
    ushr-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->hex:[B

    iget-object v3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->hex:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 102
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->closed:Z

    .line 117
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 118
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->FINAL_CHUNK:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 109
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->checkNotClosed()V

    .line 65
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/util/Arrays;->checkOffsetAndCount(III)V

    .line 67
    :goto_0
    if-lez p3, :cond_3

    .line 70
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->maxChunkLength:I

    if-ge p3, v0, :cond_2

    .line 72
    :cond_0
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->maxChunkLength:I

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 75
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->maxChunkLength:I

    if-ne v1, v2, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 87
    :cond_1
    :goto_1
    add-int/2addr p2, v0

    .line 88
    sub-int/2addr p3, v0

    .line 89
    goto :goto_0

    .line 81
    :cond_2
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->maxChunkLength:I

    .line 82
    invoke-direct {p0, v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->writeHex(I)V

    .line 83
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_3
    monitor-exit p0

    return-void
.end method
