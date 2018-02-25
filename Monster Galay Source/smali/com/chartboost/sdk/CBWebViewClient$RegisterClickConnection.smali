.class Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;
.source "CBWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/CBWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterClickConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBWebViewClient;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    .line 244
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    .line 245
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->validateJson(Lorg/json/JSONObject;)V

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/CBWebViewClient;->access$0(Lcom/chartboost/sdk/CBWebViewClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    iget-object v0, v0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getState()Lcom/chartboost/sdk/CBWebView$CBViewState;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    if-ne v0, v1, :cond_1

    .line 260
    const-string v0, "cb"

    const-string v1, "closing interstitial ad"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->this$0:Lcom/chartboost/sdk/CBWebViewClient;

    invoke-static {v0}, Lcom/chartboost/sdk/CBWebViewClient;->access$1(Lcom/chartboost/sdk/CBWebViewClient;)V

    .line 263
    :cond_1
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 255
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 256
    throw v0
.end method
