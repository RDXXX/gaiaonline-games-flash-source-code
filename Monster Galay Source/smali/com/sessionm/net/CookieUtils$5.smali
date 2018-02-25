.class final Lcom/sessionm/net/CookieUtils$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/CookieUtils$CookieAttributeAssignor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/net/CookieUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assign(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal cookie version attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
