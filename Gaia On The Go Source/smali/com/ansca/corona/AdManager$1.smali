.class Lcom/ansca/corona/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AdManager;->showInMobiAd(Ljava/lang/String;FFDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AdManager;

.field final synthetic val$bannerTypeName:Ljava/lang/String;

.field final synthetic val$copyOfInMobiApplicationId:Ljava/lang/String;

.field final synthetic val$intervalInSeconds:D

.field final synthetic val$testModeEnabled:Z

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/ansca/corona/AdManager;Ljava/lang/String;Ljava/lang/String;ZFFD)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    iput-object p2, p0, Lcom/ansca/corona/AdManager$1;->val$bannerTypeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/AdManager$1;->val$copyOfInMobiApplicationId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ansca/corona/AdManager$1;->val$testModeEnabled:Z

    iput p5, p0, Lcom/ansca/corona/AdManager$1;->val$x:F

    iput p6, p0, Lcom/ansca/corona/AdManager$1;->val$y:F

    iput-wide p7, p0, Lcom/ansca/corona/AdManager$1;->val$intervalInSeconds:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 278
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideInMobiAd()V

    .line 284
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->val$bannerTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 285
    .local v11, "lowerCaseBannerTypeName":Ljava/lang/String;
    const-string v0, "banner320x48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/16 v7, 0x9

    .line 287
    .local v7, "bannerTypeId":I
    const/16 v8, 0x140

    .line 288
    .local v8, "bannerWidth":I
    const/16 v6, 0x30

    .line 319
    .local v6, "bannerHeight":I
    :goto_0
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$100(Lcom/ansca/corona/AdManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    .line 320
    .local v10, "displayDensity":F
    int-to-float v0, v8

    mul-float/2addr v0, v10

    add-float/2addr v0, v5

    float-to-int v8, v0

    .line 321
    int-to-float v0, v6

    mul-float/2addr v0, v10

    add-float/2addr v0, v5

    float-to-int v6, v0

    .line 324
    new-instance v9, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;

    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    iget-object v1, p0, Lcom/ansca/corona/AdManager$1;->val$copyOfInMobiApplicationId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/ansca/corona/AdManager$1;->val$testModeEnabled:Z

    invoke-direct {v9, v0, v1, v4}, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;-><init>(Lcom/ansca/corona/AdManager;Ljava/lang/String;Z)V

    .line 325
    .local v9, "delegate":Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    iget-object v1, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$100(Lcom/ansca/corona/AdManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v4}, Lcom/ansca/corona/AdManager;->access$100(Lcom/ansca/corona/AdManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v9, v4, v7}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->requestAdUnitWithDelegate(Landroid/content/Context;Lcom/inmobi/androidsdk/InMobiAdDelegate;Landroid/app/Activity;I)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ansca/corona/AdManager;->access$202(Lcom/ansca/corona/AdManager;Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 327
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    if-nez v0, :cond_5

    .line 347
    :goto_1
    return-void

    .line 290
    .end local v6    # "bannerHeight":I
    .end local v7    # "bannerTypeId":I
    .end local v8    # "bannerWidth":I
    .end local v9    # "delegate":Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;
    .end local v10    # "displayDensity":F
    :cond_0
    const-string v0, "banner300x250"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    const/16 v7, 0xa

    .line 292
    .restart local v7    # "bannerTypeId":I
    const/16 v8, 0x12c

    .line 293
    .restart local v8    # "bannerWidth":I
    const/16 v6, 0xfa

    .restart local v6    # "bannerHeight":I
    goto :goto_0

    .line 295
    .end local v6    # "bannerHeight":I
    .end local v7    # "bannerTypeId":I
    .end local v8    # "bannerWidth":I
    :cond_1
    const-string v0, "banner728x90"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const/16 v7, 0xb

    .line 297
    .restart local v7    # "bannerTypeId":I
    const/16 v8, 0x2d8

    .line 298
    .restart local v8    # "bannerWidth":I
    const/16 v6, 0x5a

    .restart local v6    # "bannerHeight":I
    goto :goto_0

    .line 300
    .end local v6    # "bannerHeight":I
    .end local v7    # "bannerTypeId":I
    .end local v8    # "bannerWidth":I
    :cond_2
    const-string v0, "banner468x60"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const/16 v7, 0xc

    .line 302
    .restart local v7    # "bannerTypeId":I
    const/16 v8, 0x1d4

    .line 303
    .restart local v8    # "bannerWidth":I
    const/16 v6, 0x3c

    .restart local v6    # "bannerHeight":I
    goto :goto_0

    .line 305
    .end local v6    # "bannerHeight":I
    .end local v7    # "bannerTypeId":I
    .end local v8    # "bannerWidth":I
    :cond_3
    const-string v0, "banner120x600"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    const/16 v7, 0xd

    .line 307
    .restart local v7    # "bannerTypeId":I
    const/16 v8, 0x78

    .line 308
    .restart local v8    # "bannerWidth":I
    const/16 v6, 0x258

    .restart local v6    # "bannerHeight":I
    goto :goto_0

    .line 311
    .end local v6    # "bannerHeight":I
    .end local v7    # "bannerTypeId":I
    .end local v8    # "bannerWidth":I
    :cond_4
    const/16 v7, 0x9

    .line 312
    .restart local v7    # "bannerTypeId":I
    const/16 v8, 0x140

    .line 313
    .restart local v8    # "bannerWidth":I
    const/16 v6, 0x30

    .line 314
    .restart local v6    # "bannerHeight":I
    const-string v0, "Corona"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobi does not support banner name \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/ansca/corona/AdManager$1;->val$bannerTypeName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' given to ads.show() function. Defaulting to \'banner320x48\'."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    .restart local v9    # "delegate":Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;
    .restart local v10    # "displayDensity":F
    :cond_5
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/ansca/corona/AdManager$1;->val$x:F

    float-to-int v4, v4

    add-int/2addr v4, v8

    iget v5, p0, Lcom/ansca/corona/AdManager$1;->val$y:F

    float-to-int v5, v5

    add-int/2addr v5, v6

    invoke-direct {v1, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/AdManager$1;->val$x:F

    float-to-int v1, v1

    iget v4, p0, Lcom/ansca/corona/AdManager$1;->val$y:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v4, v12, v12}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->setPadding(IIII)V

    .line 332
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getAbsoluteViewLayout()Landroid/widget/AbsoluteLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->loadNewAd()V

    .line 336
    iget-wide v0, p0, Lcom/ansca/corona/AdManager$1;->val$intervalInSeconds:D

    double-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v0, v4

    .line 337
    .local v2, "intervalInMilliseconds":J
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/ansca/corona/AdManager;->access$302(Lcom/ansca/corona/AdManager;Ljava/util/Timer;)Ljava/util/Timer;

    .line 338
    iget-object v0, p0, Lcom/ansca/corona/AdManager$1;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$300(Lcom/ansca/corona/AdManager;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/AdManager$1$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/AdManager$1$1;-><init>(Lcom/ansca/corona/AdManager$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_1
.end method
