.class public Lcom/sessionm/integralblue/httpresponsecache/compat/URIs;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 17
    if-eq p1, v0, :cond_0

    .line 26
    :goto_0
    return p1

    .line 21
    :cond_0
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    const/16 p1, 0x50

    goto :goto_0

    .line 23
    :cond_1
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    const/16 p1, 0x1bb

    goto :goto_0

    :cond_2
    move p1, v0

    .line 26
    goto :goto_0
.end method

.method public static final getEffectivePort(Ljava/net/URI;)I
    .locals 2

    .prologue
    .line 7
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/URIs;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
