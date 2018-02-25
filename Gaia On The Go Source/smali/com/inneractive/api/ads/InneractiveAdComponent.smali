.class public Lcom/inneractive/api/ads/InneractiveAdComponent;
.super Ljava/lang/Object;
.source "InneractiveAdComponent.java"


# static fields
.field public static final BANNER_AD_TYPE:B = 0x0t

.field public static final FULL_SCREEN_AD_TYPE:B = 0x2t

.field public static final KEY_AGE:Ljava/lang/String; = "Key_Age"

.field public static final KEY_DISTRIBUTION_ID:Ljava/lang/String; = "Key_Distribution_ID"

.field public static final KEY_EXTERNAL_ID:Ljava/lang/String; = "Key_External_ID"

.field public static final KEY_GENDER:Ljava/lang/String; = "Key_Gender"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "Key_Keywords"

.field public static final KEY_MSISDN:Ljava/lang/String; = "Key_Msisdn"

.field public static final KEY_TEST_MODE:Ljava/lang/String; = "test"

.field public static final TEXT_AD_TYPE:B = 0x1t

.field private static instance:Lcom/inneractive/api/ads/InneractiveAdComponent;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/inneractive/api/ads/InneractiveAdComponent;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static displayAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;BI)V
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "adType"    # B
    .param p4, "refreshInterval"    # I

    .prologue
    const/4 v3, -0x1

    .line 98
    invoke-static {p0}, Lcom/inneractive/api/ads/InneractiveAdComponent;->getInstance(Landroid/content/Context;)Lcom/inneractive/api/ads/InneractiveAdComponent;

    .line 99
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/inneractive/api/ads/InneractiveAdView;-><init>(Landroid/content/Context;Ljava/lang/String;BI)V

    .line 100
    .local v0, "adView":Lcom/inneractive/api/ads/InneractiveAdView;
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 101
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public static displayAd(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;BILjava/util/Hashtable;)V
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "adType"    # B
    .param p4, "refreshInterval"    # I
    .param p5, "metaData"    # Ljava/util/Hashtable;

    .prologue
    const/4 v7, -0x1

    .line 120
    invoke-static {p0}, Lcom/inneractive/api/ads/InneractiveAdComponent;->getInstance(Landroid/content/Context;)Lcom/inneractive/api/ads/InneractiveAdComponent;

    .line 121
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inneractive/api/ads/InneractiveAdView;-><init>(Landroid/content/Context;Ljava/lang/String;BILjava/util/Hashtable;)V

    .line 122
    .local v0, "adView":Lcom/inneractive/api/ads/InneractiveAdView;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 123
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v6, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6}, Lcom/inneractive/api/ads/InneractiveAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .end local v6    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public static getAdView(Landroid/content/Context;Ljava/lang/String;BI)Lcom/inneractive/api/ads/InneractiveAdView;
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "adType"    # B
    .param p3, "refreshInterval"    # I

    .prologue
    const/4 v3, -0x1

    .line 56
    invoke-static {p0}, Lcom/inneractive/api/ads/InneractiveAdComponent;->getInstance(Landroid/content/Context;)Lcom/inneractive/api/ads/InneractiveAdComponent;

    .line 57
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/inneractive/api/ads/InneractiveAdView;-><init>(Landroid/content/Context;Ljava/lang/String;BI)V

    .line 58
    .local v0, "adView":Lcom/inneractive/api/ads/InneractiveAdView;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 59
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/inneractive/api/ads/InneractiveAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-object v0
.end method

.method public static getAdView(Landroid/content/Context;Ljava/lang/String;BILjava/util/Hashtable;)Lcom/inneractive/api/ads/InneractiveAdView;
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "adType"    # B
    .param p3, "refreshInterval"    # I
    .param p4, "metaData"    # Ljava/util/Hashtable;

    .prologue
    const/4 v7, -0x1

    .line 76
    invoke-static {p0}, Lcom/inneractive/api/ads/InneractiveAdComponent;->getInstance(Landroid/content/Context;)Lcom/inneractive/api/ads/InneractiveAdComponent;

    .line 77
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdView;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inneractive/api/ads/InneractiveAdView;-><init>(Landroid/content/Context;Ljava/lang/String;BILjava/util/Hashtable;)V

    .line 78
    .local v0, "adView":Lcom/inneractive/api/ads/InneractiveAdView;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 79
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v6, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6}, Lcom/inneractive/api/ads/InneractiveAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .end local v6    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/inneractive/api/ads/InneractiveAdComponent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v1, Lcom/inneractive/api/ads/InneractiveAdComponent;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdComponent;->instance:Lcom/inneractive/api/ads/InneractiveAdComponent;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/inneractive/api/ads/InneractiveAdComponent;

    invoke-direct {v0, p0}, Lcom/inneractive/api/ads/InneractiveAdComponent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inneractive/api/ads/InneractiveAdComponent;->instance:Lcom/inneractive/api/ads/InneractiveAdComponent;

    .line 37
    :cond_0
    sget-object v0, Lcom/inneractive/api/ads/InneractiveAdComponent;->instance:Lcom/inneractive/api/ads/InneractiveAdComponent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
