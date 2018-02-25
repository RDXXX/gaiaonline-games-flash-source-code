.class Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;
.source "ChartBoost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/ChartBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataConnection"
.end annotation


# instance fields
.field public hadError:Z

.field public location:Ljava/lang/String;

.field public shouldCache:Z

.field final synthetic this$0:Lcom/chartboost/sdk/ChartBoost;

.field public viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 262
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    .line 263
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    .line 257
    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    .line 258
    iput-boolean v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z

    .line 259
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    .line 260
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 264
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->validateJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 279
    :goto_0
    iget-boolean v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/chartboost/sdk/ChartBoost;->access$1(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 282
    iget-boolean v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/ChartBoost;->access$2(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/ChartBoost;->access$0(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->hadError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 276
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 277
    throw v1
.end method
