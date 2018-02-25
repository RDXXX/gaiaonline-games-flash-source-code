.class public final Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final proxy:Ljava/net/Proxy;

.field private final requiresTunnel:Z

.field private final socketHost:Ljava/lang/String;

.field private final socketPort:I

.field private final uriHost:Ljava/lang/String;

.field private final uriPort:I


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    .line 307
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URIs;->getEffectivePort(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    .line 309
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 310
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketPort:I

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;Z)V
    .locals 4

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 321
    iput-boolean p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    .line 322
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 323
    invoke-static {p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URIs;->getEffectivePort(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    .line 325
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 326
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_0
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 331
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 332
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketPort:I

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->socketPort:I

    return v0
.end method

.method static synthetic access$300(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;)I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    return v0
.end method


# virtual methods
.method public connect(I)Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection;-><init>(Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;ILcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    instance-of v1, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    if-eqz v1, :cond_0

    .line 341
    check-cast p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;

    .line 342
    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    iget v2, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    iget-boolean v2, p1, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 347
    :cond_0
    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 351
    .line 352
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 353
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->uriPort:I

    add-int/2addr v0, v2

    .line 354
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 355
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 356
    return v0

    :cond_1
    move v0, v1

    .line 354
    goto :goto_0
.end method
