.class Lcom/sessionm/core/UserImpl$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/net/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/core/UserImpl;->setOptedOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/UserImpl;


# direct methods
.method constructor <init>(Lcom/sessionm/core/UserImpl;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sessionm/core/UserImpl$1;->this$0:Lcom/sessionm/core/UserImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyReceived(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onRequestSent(Lcom/sessionm/net/Request;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
