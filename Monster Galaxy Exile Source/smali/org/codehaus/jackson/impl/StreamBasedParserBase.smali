.class public abstract Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.super Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.source "StreamBasedParserBase.java"


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "inputBuffer"    # [B
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "bufferRecyclable"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 67
    iput-object p3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 68
    iput-object p4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 69
    iput p5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 70
    iput p6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 71
    iput-boolean p7, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    .line 72
    return-void
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 179
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    .line 181
    :cond_2
    return-void
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 9
    .param p1, "minAvailable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-nez v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 142
    :cond_1
    iget v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    iget v5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    sub-int v0, v4, v5

    .line 143
    .local v0, "amount":I
    if-lez v0, :cond_2

    iget v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    if-lez v4, :cond_2

    .line 144
    iget-wide v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    iget v6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    .line 145
    iget v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    iget v5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    .line 146
    iget-object v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    invoke-static {v4, v5, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iput v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 151
    :goto_1
    iput v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 152
    :goto_2
    iget v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    if-ge v4, p1, :cond_4

    .line 153
    iget-object v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    iget-object v7, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v7, v7

    iget v8, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 154
    .local v1, "count":I
    if-ge v1, v3, :cond_3

    .line 156
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    .line 158
    if-nez v1, :cond_0

    .line 159
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v1    # "count":I
    :cond_2
    iput v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    goto :goto_1

    .line 163
    .restart local v1    # "count":I
    :cond_3
    iget v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    goto :goto_2

    .end local v1    # "count":I
    :cond_4
    move v2, v3

    .line 165
    goto :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_releaseBuffers()V

    .line 193
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_bufferRecyclable:Z

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 195
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    .line 197
    iget-object v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 200
    .end local v0    # "buf":[B
    :cond_0
    return-void
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected final loadMore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-wide v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputProcessed:J

    .line 109
    iget v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    iget v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_currInputRowStart:I

    .line 111
    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    iget-object v4, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 113
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 114
    iput v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 115
    iput v0, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    .line 116
    const/4 v1, 0x1

    .line 125
    .end local v0    # "count":I
    :cond_0
    return v1

    .line 119
    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_closeInput()V

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    sub-int v0, v2, v3

    .line 84
    .local v0, "count":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 90
    .end local v0    # "count":I
    :goto_0
    return v0

    .line 88
    .restart local v0    # "count":I
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputPtr:I

    .line 89
    .local v1, "origPtr":I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->_inputBuffer:[B

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
