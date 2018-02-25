.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;
.super Ljava/lang/Exception;
.source "ProGuard"


# instance fields
.field public final errno:I

.field private final functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->functionName:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->errno:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->functionName:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->errno:I

    .line 40
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->errno:I

    invoke-static {v0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errno "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->functionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rethrowAsIOException()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 58
    throw v0
.end method

.method public rethrowAsSocketException()Ljava/net/SocketException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/SocketException;

    invoke-virtual {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/java/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
