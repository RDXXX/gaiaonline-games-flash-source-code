.class Lcom/ansca/corona/AdManager$3;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AdManager;->showInneractiveAd(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AdManager;

.field final synthetic val$adTypeId:B

.field final synthetic val$copyOfInneractiveApplicationId:Ljava/lang/String;

.field final synthetic val$finalIntervalInSeconds:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/AdManager;Ljava/lang/String;BIII)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    iput-object p2, p0, Lcom/ansca/corona/AdManager$3;->val$copyOfInneractiveApplicationId:Ljava/lang/String;

    iput-byte p3, p0, Lcom/ansca/corona/AdManager$3;->val$adTypeId:B

    iput p4, p0, Lcom/ansca/corona/AdManager$3;->val$finalIntervalInSeconds:I

    iput p5, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    iput p6, p0, Lcom/ansca/corona/AdManager$3;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 578
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-virtual {v6}, Lcom/ansca/corona/AdManager;->hideInneractiveAd()V

    .line 582
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v6}, Lcom/ansca/corona/AdManager;->access$100(Lcom/ansca/corona/AdManager;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/ansca/corona/AdManager$3;->val$copyOfInneractiveApplicationId:Ljava/lang/String;

    iget-byte v8, p0, Lcom/ansca/corona/AdManager$3;->val$adTypeId:B

    iget v9, p0, Lcom/ansca/corona/AdManager$3;->val$finalIntervalInSeconds:I

    invoke-static {v6, v7, v8, v9}, Lcom/inneractive/api/ads/InneractiveAdComponent;->getAdView(Landroid/content/Context;Ljava/lang/String;BI)Lcom/inneractive/api/ads/InneractiveAdView;

    move-result-object v3

    .line 584
    .local v3, "inneractiveAdView":Lcom/inneractive/api/ads/InneractiveAdView;
    if-nez v3, :cond_0

    .line 644
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v8}, Lcom/ansca/corona/AdManager;->access$100(Lcom/ansca/corona/AdManager;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/ansca/corona/AdManager;->access$502(Lcom/ansca/corona/AdManager;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 588
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v6}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 592
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 594
    :try_start_0
    const-class v6, Landroid/view/ViewGroup;

    const-string v7, "setLayerType"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/graphics/Paint;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 596
    .local v5, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v6}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v5    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    iget-byte v6, p0, Lcom/ansca/corona/AdManager$3;->val$adTypeId:B

    if-ne v6, v11, :cond_2

    .line 605
    new-instance v6, Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;

    iget-object v7, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-direct {v6, v7, v12}, Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;-><init>(Lcom/ansca/corona/AdManager;Lcom/ansca/corona/AdManager$1;)V

    invoke-virtual {v3, v6}, Lcom/inneractive/api/ads/InneractiveAdView;->setListener(Lcom/inneractive/api/ads/InneractiveAdEventsListener;)V

    .line 606
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 608
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v6}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ansca/corona/ViewManager;->getAbsoluteViewLayout()Landroid/widget/AbsoluteLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v7}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 614
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v6, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;

    iget-object v7, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-direct {v6, v7, v12}, Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;-><init>(Lcom/ansca/corona/AdManager;Lcom/ansca/corona/AdManager$1;)V

    invoke-virtual {v3, v6}, Lcom/inneractive/api/ads/InneractiveAdView;->setListener(Lcom/inneractive/api/ads/InneractiveAdEventsListener;)V

    .line 618
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/inneractive/api/ads/InneractiveAdView;->setVisibility(I)V

    .line 621
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getContentWidthInPixels()I

    move-result v1

    .line 622
    .local v1, "contentWidth":I
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getHorizontalMarginInPixels()I

    move-result v2

    .line 624
    .local v2, "horizontalMargin":I
    iget v6, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    if-lt v6, v2, :cond_3

    iget v6, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    add-int v7, v1, v2

    if-ge v6, v7, :cond_3

    .line 627
    iget v6, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    sub-int/2addr v6, v2

    sub-int v0, v1, v6

    .line 640
    .local v0, "adWidth":I
    :goto_2
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v6, -0x2

    iget v7, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    iget v8, p0, Lcom/ansca/corona/AdManager$3;->val$y:I

    invoke-direct {v4, v0, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 642
    .local v4, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ansca/corona/ViewManager;->getAbsoluteViewLayout()Landroid/widget/AbsoluteLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v7}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 629
    .end local v0    # "adWidth":I
    .end local v4    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_3
    iget v6, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    if-ge v6, v2, :cond_4

    .line 632
    iget v6, p0, Lcom/ansca/corona/AdManager$3;->val$x:I

    sub-int v6, v2, v6

    mul-int/lit8 v6, v6, 0x2

    add-int v0, v1, v6

    .restart local v0    # "adWidth":I
    goto :goto_2

    .line 636
    .end local v0    # "adWidth":I
    :cond_4
    const/4 v0, -0x2

    .line 637
    .restart local v0    # "adWidth":I
    iget-object v6, p0, Lcom/ansca/corona/AdManager$3;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v6}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 598
    .end local v0    # "adWidth":I
    .end local v1    # "contentWidth":I
    .end local v2    # "horizontalMargin":I
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method
