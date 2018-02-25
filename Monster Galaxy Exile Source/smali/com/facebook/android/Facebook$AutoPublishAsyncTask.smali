.class Lcom/facebook/android/Facebook$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPublishAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mApplicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/android/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/android/Facebook;

    .line 1070
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1071
    iput-object p2, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    .line 1072
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/android/Facebook;

    iget-object v2, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/facebook/android/Facebook;->access$1(Lcom/facebook/android/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Facebook-publish"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/android/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/android/Facebook;

    monitor-enter v1

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/facebook/android/Facebook$AutoPublishAsyncTask;->this$0:Lcom/facebook/android/Facebook;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/android/Facebook;->access$2(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$AutoPublishAsyncTask;)V

    .line 1088
    monitor-exit v1

    .line 1091
    return-void

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
