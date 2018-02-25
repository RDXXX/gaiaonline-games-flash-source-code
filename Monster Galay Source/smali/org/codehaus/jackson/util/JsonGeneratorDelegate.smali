.class public Lorg/codehaus/jackson/util/JsonGeneratorDelegate;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "JsonGeneratorDelegate.java"


# instance fields
.field protected delegate:Lorg/codehaus/jackson/JsonGenerator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .param p1, "d"    # Lorg/codehaus/jackson/JsonGenerator;

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    .line 19
    return-void
.end method


# virtual methods
.method public canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z
    .locals 1
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    .line 24
    return-void
.end method

.method public copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->copyCurrentEvent(Lorg/codehaus/jackson/JsonParser;)V

    .line 29
    return-void
.end method

.method public copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .param p1, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 34
    return-void
.end method

.method public disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->disable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->enable(Lorg/codehaus/jackson/JsonGenerator$Feature;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    .line 49
    return-void
.end method

.method public getCodec()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->getOutputContext()Lorg/codehaus/jackson/JsonStreamContext;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->getOutputTarget()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .param p1, "oc"    # Lorg/codehaus/jackson/ObjectCodec;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonGenerator;

    .line 94
    return-object p0
.end method

.method public setSchema(Lorg/codehaus/jackson/FormatSchema;)V
    .locals 1
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 64
    return-void
.end method

.method public useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    .line 100
    return-object p0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->version()Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 1
    .param p1, "b64variant"    # Lorg/codehaus/jackson/Base64Variant;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/codehaus/jackson/JsonGenerator;->writeBinary(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 108
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 113
    return-void
.end method

.method public writeEndArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 118
    return-void
.end method

.method public writeEndObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 123
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .param p1, "name"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/SerializableString;)V

    .line 144
    return-void
.end method

.method public writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 1
    .param p1, "name"    # Lorg/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 137
    return-void
.end method

.method public writeNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 149
    return-void
.end method

.method public writeNumber(D)V
    .locals 1
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    .line 171
    return-void
.end method

.method public writeNumber(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    .line 177
    return-void
.end method

.method public writeNumber(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 154
    return-void
.end method

.method public writeNumber(J)V
    .locals 1
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 159
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 183
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    .line 165
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "pojo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public writeRaw(C)V
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 213
    return-void
.end method

.method public writeRaw(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public writeRaw(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;II)V

    .line 203
    return-void
.end method

.method public writeRaw([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    .line 208
    return-void
.end method

.method public writeRawUTF8String([BII)V
    .locals 1
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRawUTF8String([BII)V

    .line 260
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public writeRawValue(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRawValue(Ljava/lang/String;II)V

    .line 223
    return-void
.end method

.method public writeRawValue([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeRawValue([CII)V

    .line 228
    return-void
.end method

.method public writeStartArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 233
    return-void
.end method

.method public writeStartObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 238
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public writeString(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .param p1, "text"    # Lorg/codehaus/jackson/SerializableString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Lorg/codehaus/jackson/SerializableString;)V

    .line 253
    return-void
.end method

.method public writeString([CII)V
    .locals 1
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeString([CII)V

    .line 248
    return-void
.end method

.method public writeTree(Lorg/codehaus/jackson/JsonNode;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonGenerator;->writeTree(Lorg/codehaus/jackson/JsonNode;)V

    .line 272
    return-void
.end method

.method public writeUTF8String([BII)V
    .locals 1
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonGeneratorDelegate;->delegate:Lorg/codehaus/jackson/JsonGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->writeUTF8String([BII)V

    .line 267
    return-void
.end method
