.class public Lcom/chartboost/sdk/CBWebView;
.super Landroid/webkit/WebView;
.source "CBWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBWebView$CBViewState;,
        Lcom/chartboost/sdk/CBWebView$CBViewType;
    }
.end annotation


# instance fields
.field private responseContext:Lorg/json/JSONObject;

.field private state:Lcom/chartboost/sdk/CBWebView$CBViewState;

.field private type:Lcom/chartboost/sdk/CBWebView$CBViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/chartboost/sdk/CBWebView$CBViewType;

    .prologue
    const/4 v1, -0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p2, v0, :cond_1

    .line 35
    const v0, -0xcccccd

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setBackgroundColor(I)V

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    iput-object p2, p0, Lcom/chartboost/sdk/CBWebView;->type:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 44
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p2, v0, :cond_0

    .line 46
    new-instance v0, Lcom/chartboost/sdk/CBWebView$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBWebView$1;-><init>(Lcom/chartboost/sdk/CBWebView;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    :cond_0
    return-void

    .line 37
    :cond_1
    const/high16 v0, -0x67000000

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBWebView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getResponseContext()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebView;->responseContext:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getState()Lcom/chartboost/sdk/CBWebView$CBViewState;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebView;->state:Lcom/chartboost/sdk/CBWebView$CBViewState;

    return-object v0
.end method

.method public getType()Lcom/chartboost/sdk/CBWebView$CBViewType;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/CBWebView;->type:Lcom/chartboost/sdk/CBWebView$CBViewType;

    return-object v0
.end method

.method public setResponseContext(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "responseContext"    # Lorg/json/JSONObject;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebView;->responseContext:Lorg/json/JSONObject;

    .line 69
    return-void
.end method

.method public setState(Lcom/chartboost/sdk/CBWebView$CBViewState;)V
    .locals 0
    .param p1, "state"    # Lcom/chartboost/sdk/CBWebView$CBViewState;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebView;->state:Lcom/chartboost/sdk/CBWebView$CBViewState;

    .line 84
    return-void
.end method

.method public setType(Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 0
    .param p1, "type"    # Lcom/chartboost/sdk/CBWebView$CBViewType;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/chartboost/sdk/CBWebView;->type:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 113
    return-void
.end method
