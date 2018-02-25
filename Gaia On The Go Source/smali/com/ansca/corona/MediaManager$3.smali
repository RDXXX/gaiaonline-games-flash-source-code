.class Lcom/ansca/corona/MediaManager$3;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MediaManager;->playVideo(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MediaManager;

.field final synthetic val$mediaControlsEnabled:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MediaManager;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    iput-object p2, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ansca/corona/MediaManager$3;->val$mediaControlsEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 254
    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v3}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/CoronaActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 258
    .local v2, "videoUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rtsp:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 271
    :goto_0
    if-eqz v2, :cond_1

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v3}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    const-class v4, Lcom/ansca/corona/VideoActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "video_uri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v3, "video_id"

    iget-object v4, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v4}, Lcom/ansca/corona/MediaManager;->access$200(Lcom/ansca/corona/MediaManager;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v3, "media_controls_enabled"

    iget-boolean v4, p0, Lcom/ansca/corona/MediaManager$3;->val$mediaControlsEnabled:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v3}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ansca/corona/CoronaActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 267
    :cond_2
    iget-object v3, p0, Lcom/ansca/corona/MediaManager$3;->this$0:Lcom/ansca/corona/MediaManager;

    invoke-static {v3}, Lcom/ansca/corona/MediaManager;->access$100(Lcom/ansca/corona/MediaManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/ansca/corona/MediaManager$3;->val$path:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method
