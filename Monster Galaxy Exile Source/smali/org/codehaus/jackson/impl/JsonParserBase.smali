.class public abstract Lorg/codehaus/jackson/impl/JsonParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "JsonParserBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/JsonParserBase$1;
    }
.end annotation


# instance fields
.field protected _binaryValue:[B

.field protected _byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field protected _closed:Z

.field protected _currInputProcessed:J

.field protected _currInputRow:I

.field protected _currInputRowStart:I

.field protected _inputEnd:I

.field protected _inputPtr:I

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _nameCopied:Z

.field protected _nameCopyBuffer:[C

.field protected _nextToken:Lorg/codehaus/jackson/JsonToken;

.field protected _parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected final _textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

.field protected _tokenInputCol:I

.field protected _tokenInputRow:I

.field protected _tokenInputTotal:J


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .locals 5
    .param p1, "ctxt"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>()V

    .line 51
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    .line 56
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputEnd:I

    .line 68
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    .line 74
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    .line 82
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    .line 98
    iput-wide v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    .line 103
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    .line 109
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    .line 148
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 155
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    .line 161
    iput-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 180
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_features:I

    .line 181
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 182
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 183
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    invoke-static {v0, v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 184
    return-void
.end method


# virtual methods
.method protected abstract _closeInput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract _decodeBase64(Lorg/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method protected abstract _finishString()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public _getByteArrayBuilder()Lorg/codehaus/jackson/util/ByteArrayBuilder;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 384
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_byteArrayBuilder:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->reset()V

    goto :goto_0
.end method

.method protected _handleEOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->releaseBuffers()V

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 339
    .local v0, "buf":[C
    if-eqz v0, :cond_0

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopyBuffer:[C

    .line 341
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseNameCopyBuffer([C)V

    .line 343
    :cond_0
    return-void
.end method

.method protected _reportMismatchedEndMarker(IC)V
    .locals 4
    .param p1, "actCh"    # I
    .param p2, "expCh"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v3}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "startDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_closeInput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    .line 226
    :cond_0
    return-void

    .line 223
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_releaseBuffers()V

    throw v0
.end method

.method public getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    .prologue
    .line 258
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 259
    .local v5, "col":I
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputProcessed:J

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_inputPtr:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currInputRow:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    .line 208
    .local v0, "parent":Lorg/codehaus/jackson/impl/JsonReadContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 210
    .end local v0    # "parent":Lorg/codehaus/jackson/impl/JsonReadContext;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getParsingContext()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public getParsingContext()Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getTokenCharacterOffset()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputTotal:J

    return-wide v0
.end method

.method public final getTokenColumnNr()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputCol:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getTokenLineNr()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_tokenInputRow:I

    return v0
.end method

.method public getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
    .locals 6

    .prologue
    .line 245
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenCharacterOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenLineNr()I

    move-result v4

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->getTokenColumnNr()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lorg/codehaus/jackson/impl/JsonParserBase$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 277
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_nameCopied:Z

    goto :goto_0

    .line 279
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonParserBase;->_closed:Z

    return v0
.end method

.method protected abstract loadMore()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final loadMoreGuaranteed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonParserBase;->_reportInvalidEOF()V

    .line 307
    :cond_0
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
