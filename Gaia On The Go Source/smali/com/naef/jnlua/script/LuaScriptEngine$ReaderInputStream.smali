.class Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/script/LuaScriptEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderInputStream"
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charBuffer:Ljava/nio/CharBuffer;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private flushed:Z

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/16 v2, 0x400

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->reader:Ljava/io/Reader;

    sget-object v0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encoding error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->flushed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encoding error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encoding error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-boolean v3, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->flushed:Z

    :cond_4
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_5
    iget-object v0, p0, Lcom/naef/jnlua/script/LuaScriptEngine$ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0
.end method
