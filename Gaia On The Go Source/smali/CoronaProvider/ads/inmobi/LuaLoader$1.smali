.class LCoronaProvider/ads/inmobi/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/ads/inmobi/LuaLoader;->showInMobiAd(Ljava/lang/String;FFDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inmobi/LuaLoader;

.field final synthetic val$bannerTypeName:Ljava/lang/String;

.field final synthetic val$copyOfApplicationId:Ljava/lang/String;

.field final synthetic val$intervalInSeconds:D

.field final synthetic val$testModeEnabled:Z

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/lang/String;Ljava/lang/String;ZFFD)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    iput-object p2, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$bannerTypeName:Ljava/lang/String;

    iput-object p3, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$copyOfApplicationId:Ljava/lang/String;

    iput-boolean p4, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$testModeEnabled:Z

    iput p5, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$x:F

    iput p6, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$y:F

    iput-wide p7, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$intervalInSeconds:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getParent()Landroid/widget/AbsoluteLayout;
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$500(LCoronaProvider/ads/inmobi/LuaLoader;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    new-instance v1, Landroid/widget/AbsoluteLayout;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$502(LCoronaProvider/ads/inmobi/LuaLoader;Landroid/widget/AbsoluteLayout;)Landroid/widget/AbsoluteLayout;

    .line 462
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$500(LCoronaProvider/ads/inmobi/LuaLoader;)Landroid/widget/AbsoluteLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 465
    :cond_0
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$500(LCoronaProvider/ads/inmobi/LuaLoader;)Landroid/widget/AbsoluteLayout;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v14, 0x0

    .line 471
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-virtual {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->hideInMobiAd()V

    .line 474
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v6

    .line 475
    .local v6, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v6, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$bannerTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 484
    .local v12, "lowerCaseBannerTypeName":Ljava/lang/String;
    const-string v0, "banner320x48"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    const/16 v8, 0x9

    .line 486
    .local v8, "bannerTypeId":I
    const/16 v9, 0x140

    .line 487
    .local v9, "bannerWidth":I
    const/16 v7, 0x30

    .line 518
    .local v7, "bannerHeight":I
    :goto_1
    invoke-virtual {v6}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v11, v0, Landroid/util/DisplayMetrics;->density:F

    .line 519
    .local v11, "displayDensity":F
    int-to-float v0, v9

    mul-float/2addr v0, v11

    add-float/2addr v0, v5

    float-to-int v9, v0

    .line 520
    int-to-float v0, v7

    mul-float/2addr v0, v11

    add-float/2addr v0, v5

    float-to-int v7, v0

    .line 523
    new-instance v10, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;

    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$copyOfApplicationId:Ljava/lang/String;

    iget-boolean v4, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$testModeEnabled:Z

    invoke-direct {v10, v0, v1, v4}, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/lang/String;Z)V

    .line 524
    .local v10, "delegate":LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10, v6, v8}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->requestAdUnitWithDelegate(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-static {v0, v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$602(LCoronaProvider/ads/inmobi/LuaLoader;Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 526
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$x:F

    float-to-int v4, v4

    add-int/2addr v4, v9

    iget v5, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$y:F

    float-to-int v5, v5

    add-int/2addr v5, v7

    invoke-direct {v1, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    iget v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$x:F

    float-to-int v1, v1

    iget v4, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$y:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v4, v14, v14}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setPadding(IIII)V

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 535
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v4, v5

    const/4 v5, 0x1

    const-class v14, Landroid/graphics/Paint;

    aput-object v14, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 537
    .local v13, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v4

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v13    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_2
    invoke-virtual {p0}, LCoronaProvider/ads/inmobi/LuaLoader$1;->getParent()Landroid/widget/AbsoluteLayout;

    move-result-object v0

    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadNewAd()V

    .line 545
    iget-wide v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$intervalInSeconds:D

    double-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v0, v4

    .line 546
    .local v2, "intervalInMilliseconds":J
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, LCoronaProvider/ads/inmobi/LuaLoader;->access$702(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/util/Timer;)Ljava/util/Timer;

    .line 547
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v0}, LCoronaProvider/ads/inmobi/LuaLoader;->access$700(LCoronaProvider/ads/inmobi/LuaLoader;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, LCoronaProvider/ads/inmobi/LuaLoader$1$1;

    invoke-direct {v1, p0}, LCoronaProvider/ads/inmobi/LuaLoader$1$1;-><init>(LCoronaProvider/ads/inmobi/LuaLoader$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 489
    .end local v2    # "intervalInMilliseconds":J
    .end local v7    # "bannerHeight":I
    .end local v8    # "bannerTypeId":I
    .end local v9    # "bannerWidth":I
    .end local v10    # "delegate":LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;
    .end local v11    # "displayDensity":F
    :cond_3
    const-string v0, "banner300x250"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    const/16 v8, 0xa

    .line 491
    .restart local v8    # "bannerTypeId":I
    const/16 v9, 0x12c

    .line 492
    .restart local v9    # "bannerWidth":I
    const/16 v7, 0xfa

    .restart local v7    # "bannerHeight":I
    goto/16 :goto_1

    .line 494
    .end local v7    # "bannerHeight":I
    .end local v8    # "bannerTypeId":I
    .end local v9    # "bannerWidth":I
    :cond_4
    const-string v0, "banner728x90"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    const/16 v8, 0xb

    .line 496
    .restart local v8    # "bannerTypeId":I
    const/16 v9, 0x2d8

    .line 497
    .restart local v9    # "bannerWidth":I
    const/16 v7, 0x5a

    .restart local v7    # "bannerHeight":I
    goto/16 :goto_1

    .line 499
    .end local v7    # "bannerHeight":I
    .end local v8    # "bannerTypeId":I
    .end local v9    # "bannerWidth":I
    :cond_5
    const-string v0, "banner468x60"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    const/16 v8, 0xc

    .line 501
    .restart local v8    # "bannerTypeId":I
    const/16 v9, 0x1d4

    .line 502
    .restart local v9    # "bannerWidth":I
    const/16 v7, 0x3c

    .restart local v7    # "bannerHeight":I
    goto/16 :goto_1

    .line 504
    .end local v7    # "bannerHeight":I
    .end local v8    # "bannerTypeId":I
    .end local v9    # "bannerWidth":I
    :cond_6
    const-string v0, "banner120x600"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 505
    const/16 v8, 0xd

    .line 506
    .restart local v8    # "bannerTypeId":I
    const/16 v9, 0x78

    .line 507
    .restart local v9    # "bannerWidth":I
    const/16 v7, 0x258

    .restart local v7    # "bannerHeight":I
    goto/16 :goto_1

    .line 510
    .end local v7    # "bannerHeight":I
    .end local v8    # "bannerTypeId":I
    .end local v9    # "bannerWidth":I
    :cond_7
    const/16 v8, 0x9

    .line 511
    .restart local v8    # "bannerTypeId":I
    const/16 v9, 0x140

    .line 512
    .restart local v9    # "bannerWidth":I
    const/16 v7, 0x30

    .line 513
    .restart local v7    # "bannerHeight":I
    const-string v0, "Corona"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobi does not support banner name \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, LCoronaProvider/ads/inmobi/LuaLoader$1;->val$bannerTypeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' given to ads.show() function. Defaulting to \'banner320x48\'."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 539
    .restart local v10    # "delegate":LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;
    .restart local v11    # "displayDensity":F
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method
