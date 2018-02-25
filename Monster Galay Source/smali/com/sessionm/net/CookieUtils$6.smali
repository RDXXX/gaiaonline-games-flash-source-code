.class final Lcom/sessionm/net/CookieUtils$6;
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
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assign(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 151
    :cond_0
    return-void
.end method
