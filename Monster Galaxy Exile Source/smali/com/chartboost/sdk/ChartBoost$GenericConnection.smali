.class Lcom/chartboost/sdk/ChartBoost$GenericConnection;
.super Lcom/chartboost/sdk/CBAPIConnection;
.source "ChartBoost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/ChartBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/ChartBoost;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->this$0:Lcom/chartboost/sdk/ChartBoost;

    .line 142
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Landroid/content/Context;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->validateJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 152
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    invoke-super {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->onPostExecute(Lorg/json/JSONObject;)V

    .line 153
    throw v0
.end method
