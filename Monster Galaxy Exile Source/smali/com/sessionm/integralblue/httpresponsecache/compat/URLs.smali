.class public Lcom/sessionm/integralblue/httpresponsecache/compat/URLs;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEffectivePort(Ljava/net/URL;)I
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URIs;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final toURILenient(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
