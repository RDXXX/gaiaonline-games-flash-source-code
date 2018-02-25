.class public Lcom/chartboost/sdk/CBWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CBWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartBoost AdView"


# instance fields
.field private cb:Lcom/chartboost/sdk/ChartBoost;

.field private cbContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field public dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

.field public webView:Lcom/chartboost/sdk/CBWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    .line 26
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    .line 27
    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    .line 32
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    .line 34
    invoke-static {p1}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBWebViewClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/CBWebViewClient;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    return-void
.end method

.method private closeView()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    .line 283
    .local v0, "view":Landroid/view/ViewManager;
    if-eqz v0, :cond_2

    .line 284
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 286
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    .line 287
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v1}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    goto :goto_0
.end method

.method private handleChartBoostRequestForInterstitial(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string v5, "cb"

    const-string v6, "handleChartBoostRequestForInterstitial"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "items":[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v2, v5

    .line 198
    .local v1, "function":Ljava/lang/String;
    const-string v5, "cb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "function: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v5, "close"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 203
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseInterstitial(Landroid/view/View;)V

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    const-string v5, "link"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 213
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickInterstitial(Landroid/view/View;)V

    .line 219
    :cond_3
    :try_start_0
    new-instance v4, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    const-string v6, "api"

    const-string v7, "click"

    invoke-direct {v4, v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v4, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 222
    const-string v5, "to"

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "to"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v5, "cgn"

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "cgn"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v5, "creative"

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBWebView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "creative"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "cb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "decoding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v3, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;

    iget-object v5, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;-><init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V

    .line 230
    .local v3, "rcc":Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->shouldShowProgress:Z

    .line 231
    const/4 v5, 0x3

    aget-object v5, v2, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    .line 232
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    const-string v5, "cb"

    const-string v6, "sending request click request"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 236
    .end local v3    # "rcc":Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    .end local v4    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleChartBoostRequestForMoreApps(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "items":[Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v2, v3, v6

    .line 140
    .local v2, "function":Ljava/lang/String;
    const-string v6, "close"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6, v7}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseMoreApps(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/chartboost/sdk/CBWebViewClient;->closeView()V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    const-string v6, "link"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 153
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v6, v7}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickMoreApps(Landroid/view/View;)V

    .line 157
    :cond_3
    :try_start_0
    new-instance v5, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    const-string v7, "api"

    const-string v8, "click"

    invoke-direct {v5, v6, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v5, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 160
    new-instance v1, Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONTokener;

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .local v1, "embeddedData":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "to"

    const-string v7, "to"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :goto_1
    :try_start_2
    const-string v6, "cgn"

    const-string v7, "cgn"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :goto_2
    :try_start_3
    const-string v6, "creative"

    const-string v7, "creative"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 172
    :goto_3
    :try_start_4
    const-string v6, "type"

    const-string v7, "type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 175
    :goto_4
    :try_start_5
    const-string v6, "more_type"

    const-string v7, "more_type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    :goto_5
    :try_start_6
    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v6}, Lcom/chartboost/sdk/ChartBoost;->getAppId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/CBWebViewClient;->cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v7}, Lcom/chartboost/sdk/ChartBoost;->getAppSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v4, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;

    iget-object v6, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v4, p0, v6}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;-><init>(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V

    .line 180
    .local v4, "rcc":Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->shouldShowProgress:Z

    .line 181
    const/4 v6, 0x3

    aget-object v6, v3, v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->data:Ljava/lang/Object;

    .line 182
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v4, v6}, Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 184
    .end local v1    # "embeddedData":Lorg/json/JSONObject;
    .end local v4    # "rcc":Lcom/chartboost/sdk/CBWebViewClient$RegisterClickConnection;
    .end local v5    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "embeddedData":Lorg/json/JSONObject;
    .restart local v5    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :catch_1
    move-exception v6

    goto :goto_5

    .line 173
    :catch_2
    move-exception v6

    goto :goto_4

    .line 170
    :catch_3
    move-exception v6

    goto :goto_3

    .line 167
    :catch_4
    move-exception v6

    goto :goto_2

    .line 164
    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    const-string v1, "ChartBoost AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sideloading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method


# virtual methods
.method protected handleChartBoostRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "ChartBoost AdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling chartboost:// request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_1

    .line 128
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequestForInterstitial(Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebViewClient;->webView:Lcom/chartboost/sdk/CBWebView;

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequestForMoreApps(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/chartboost/sdk/CBWebView;

    .line 58
    .local v0, "chartBoostView":Lcom/chartboost/sdk/CBWebView;
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getState()Lcom/chartboost/sdk/CBWebView$CBViewState;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBWebView$CBViewState;

    if-ne v1, v2, :cond_1

    .line 60
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateOther:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    .line 62
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v1, v2, :cond_2

    .line 66
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "ChartBoost AdView"

    const-string v2, "Got an interstitial, adding to view!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 72
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 94
    :cond_0
    :goto_0
    sget-object v1, Lcom/chartboost/sdk/CBWebView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBWebView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebView;->setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V

    .line 97
    :cond_1
    return-void

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBWebView;->getType()Lcom/chartboost/sdk/CBWebView$CBViewType;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "ChartBoost AdView"

    const-string v2, "Got More Apps, adding to view!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 87
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/CBWebViewClient;->cbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    .end local v1    # "uri":Ljava/net/URI;
    :cond_0
    :goto_0
    return v2

    .line 111
    .restart local v1    # "uri":Ljava/net/URI;
    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "chartboost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v2, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
