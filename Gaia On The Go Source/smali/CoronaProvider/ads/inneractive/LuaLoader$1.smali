.class LCoronaProvider/ads/inneractive/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/ads/inneractive/LuaLoader;->showInneractiveAd(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inneractive/LuaLoader;

.field final synthetic val$adTypeId:B

.field final synthetic val$copyOfApplicationId:Ljava/lang/String;

.field final synthetic val$finalIntervalInSeconds:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;Ljava/lang/String;BIII)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    iput-object p2, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$copyOfApplicationId:Ljava/lang/String;

    iput-byte p3, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$adTypeId:B

    iput p4, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$finalIntervalInSeconds:I

    iput p5, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    iput p6, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getParent()Landroid/widget/AbsoluteLayout;
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inneractive/LuaLoader;->access$600(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    new-instance v1, Landroid/widget/AbsoluteLayout;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LCoronaProvider/ads/inneractive/LuaLoader;->access$602(LCoronaProvider/ads/inneractive/LuaLoader;Landroid/widget/AbsoluteLayout;)Landroid/widget/AbsoluteLayout;

    .line 433
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inneractive/LuaLoader;->access$600(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/widget/AbsoluteLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_0
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inneractive/LuaLoader;->access$600(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x2

    .line 442
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-virtual {v7}, LCoronaProvider/ads/inneractive/LuaLoader;->hideInneractiveAd()V

    .line 445
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 446
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$copyOfApplicationId:Ljava/lang/String;

    iget-byte v8, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$adTypeId:B

    iget v9, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$finalIntervalInSeconds:I

    invoke-static {v0, v7, v8, v9}, Lcom/inneractive/api/ads/InneractiveAdComponent;->getAdView(Landroid/content/Context;Ljava/lang/String;BI)Lcom/inneractive/api/ads/InneractiveAdView;

    move-result-object v4

    .line 454
    .local v4, "inneractiveAdView":Lcom/inneractive/api/ads/InneractiveAdView;
    if-eqz v4, :cond_0

    .line 457
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, LCoronaProvider/ads/inneractive/LuaLoader;->access$702(LCoronaProvider/ads/inneractive/LuaLoader;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 458
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v7}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 464
    :try_start_0
    const-class v7, Landroid/view/ViewGroup;

    const-string v8, "setLayerType"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/graphics/Paint;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 466
    .local v6, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v7}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v6    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    iget-byte v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$adTypeId:B

    if-ne v7, v12, :cond_3

    .line 475
    new-instance v7, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;

    iget-object v8, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-direct {v7, v8, v13}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V

    invoke-virtual {v4, v7}, Lcom/inneractive/api/ads/InneractiveAdView;->setListener(Lcom/inneractive/api/ads/InneractiveAdEventsListener;)V

    .line 476
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 478
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v7}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual {p0}, LCoronaProvider/ads/inneractive/LuaLoader$1;->getParent()Landroid/widget/AbsoluteLayout;

    move-result-object v7

    iget-object v8, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v8}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 484
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    new-instance v7, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;

    iget-object v8, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-direct {v7, v8, v13}, LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V

    invoke-virtual {v4, v7}, Lcom/inneractive/api/ads/InneractiveAdView;->setListener(Lcom/inneractive/api/ads/InneractiveAdEventsListener;)V

    .line 488
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/inneractive/api/ads/InneractiveAdView;->setVisibility(I)V

    .line 491
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getContentWidthInPixels()I

    move-result v2

    .line 492
    .local v2, "contentWidth":I
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHorizontalMarginInPixels()I

    move-result v3

    .line 494
    .local v3, "horizontalMargin":I
    iget v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    if-lt v7, v3, :cond_4

    iget v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    add-int v8, v2, v3

    if-ge v7, v8, :cond_4

    .line 497
    iget v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    sub-int/2addr v7, v3

    sub-int v1, v2, v7

    .line 510
    .local v1, "adWidth":I
    :goto_2
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v7, -0x2

    iget v8, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    iget v9, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$y:I

    invoke-direct {v5, v1, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 513
    .local v5, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p0}, LCoronaProvider/ads/inneractive/LuaLoader$1;->getParent()Landroid/widget/AbsoluteLayout;

    move-result-object v7

    iget-object v8, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v8}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 499
    .end local v1    # "adWidth":I
    .end local v5    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_4
    iget v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    if-ge v7, v3, :cond_5

    .line 502
    iget v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->val$x:I

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x2

    add-int v1, v2, v7

    .restart local v1    # "adWidth":I
    goto :goto_2

    .line 506
    .end local v1    # "adWidth":I
    :cond_5
    const/4 v1, -0x2

    .line 507
    .restart local v1    # "adWidth":I
    iget-object v7, p0, LCoronaProvider/ads/inneractive/LuaLoader$1;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-static {v7}, LCoronaProvider/ads/inneractive/LuaLoader;->access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 468
    .end local v1    # "adWidth":I
    .end local v2    # "contentWidth":I
    .end local v3    # "horizontalMargin":I
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method
