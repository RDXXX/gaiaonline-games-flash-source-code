.class final Lcom/sessionm/net/CookieUtils$1;
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
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assign(Lorg/apache/http/impl/cookie/BasicClientCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method
