.class public Lcom/chartboost/sdk/CBDialogActivity;
.super Landroid/app/Activity;
.source "CBDialogActivity.java"


# static fields
.field public static final BUNDLE_KEY_CONFIGOBJECT:Ljava/lang/String; = "bk_cfgo"

.field public static final BUNDLE_KEY_TYPE:Ljava/lang/String; = "bk_type"

.field public static final OVERLAY_OPACITY:I = 0x4b

.field public static final TAG:Ljava/lang/String; = "CBDialogActivity"


# instance fields
.field protected cbConfiguration:Lorg/json/JSONObject;

.field protected cbContainer:Landroid/widget/RelativeLayout;

.field protected cbViewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

.field protected chartboost:Lcom/chartboost/sdk/ChartBoost;

.field protected ctx:Landroid/content/Context;

.field private webViewClient:Lcom/chartboost/sdk/CBWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/chartboost/sdk/CBDialogActivity;->display()V

    return-void
.end method

.method private display()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/ChartBoost;->loadIntoView(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)Lcom/chartboost/sdk/CBWebViewClient;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    iput-object p0, v0, Lcom/chartboost/sdk/CBWebViewClient;->dialogActivity:Lcom/chartboost/sdk/CBDialogActivity;

    .line 124
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v4, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iput-object p0, p0, Lcom/chartboost/sdk/CBDialogActivity;->ctx:Landroid/content/Context;

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/CBDialogActivity;->requestWindowFeature(I)Z

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 56
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 59
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bk_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bk_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "type":I
    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v2}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 69
    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iput-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 74
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->chartboost:Lcom/chartboost/sdk/ChartBoost;

    .line 78
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "bk_cfgo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/chartboost/sdk/CBDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/chartboost/sdk/CBDialogActivity$1;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 97
    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/CBDialogActivity;->setContentView(Landroid/view/View;)V

    .line 98
    return-void

    .line 70
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-virtual {v2}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 71
    sget-object v2, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    iput-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->webViewClient:Lcom/chartboost/sdk/CBWebViewClient;

    const-string v1, "chartboost://close"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBWebViewClient;->handleChartBoostRequest(Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
