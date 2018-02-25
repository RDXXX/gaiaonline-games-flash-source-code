.class Lcom/tapjoy/TapjoyVideoView$7;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->startVideo()V
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
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 835
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyVideoView;->access$5()Lcom/tapjoy/TapjoyVideoObject;

    move-result-object v2

    iget-object v2, v2, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    const-string v1, "VIDEO"

    const-string v2, "CLICK REQUEST SUCCESS!"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;Z)V

    .line 842
    :cond_0
    return-void
.end method
