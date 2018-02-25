.class Lcom/millennialmedia/android/MMMedia$1;
.super Ljava/lang/Object;
.source "MMMedia.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia;->scanMedia(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMMedia;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    iput-object p2, p0, Lcom/millennialmedia/android/MMMedia$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    iget-object v0, v0, Lcom/millennialmedia/android/MMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$1;->this$0:Lcom/millennialmedia/android/MMMedia;

    iget-object v0, v0, Lcom/millennialmedia/android/MMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$1;->val$path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 494
    if-nez p2, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to scan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method
