.class final Lcom/sessionm/net/CookieUtils$4;
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
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assign(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 134
    return-void
.end method
