.class Lcom/tapjoy/TapjoyVideoView$8;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$8;->this$0:Lcom/tapjoy/TapjoyVideoView;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$8;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$7(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyVideoView;->access$5()Lcom/tapjoy/TapjoyVideoObject;

    move-result-object v1

    iget-object v1, v1, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 935
    :cond_0
    return-void
.end method
