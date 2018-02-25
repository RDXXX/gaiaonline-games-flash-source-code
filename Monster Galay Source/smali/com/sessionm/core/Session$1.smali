.class Lcom/sessionm/core/Session$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/core/Session;->stopSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/Session;


# direct methods
.method constructor <init>(Lcom/sessionm/core/Session;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sessionm/core/Session$1;->this$0:Lcom/sessionm/core/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 252
    const-string v0, "Session"

    const-string v1, "Session end reply received"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/sessionm/net/Request;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "Session"

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method
