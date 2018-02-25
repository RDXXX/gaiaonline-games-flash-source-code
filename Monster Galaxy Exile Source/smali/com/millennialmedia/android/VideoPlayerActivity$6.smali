.class Lcom/millennialmedia/android/VideoPlayerActivity$6;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->logEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

.field final synthetic val$logString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->this$0:Lcom/millennialmedia/android/VideoPlayerActivity;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->val$logString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 657
    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 660
    .local v1, "getRequest":Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$6;->val$logString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
