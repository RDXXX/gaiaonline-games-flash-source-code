.class public Lcom/ansca/corona/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/AdManager$CoronaInneractiveFullscreenAdListener;,
        Lcom/ansca/corona/AdManager$CoronaInneractiveAdListener;,
        Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;
    }
.end annotation


# instance fields
.field private fInMobiApplicationId:Ljava/lang/String;

.field private fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

.field private fInMobiTimer:Ljava/util/Timer;

.field private fInneractiveAdViewGroup:Landroid/view/ViewGroup;

.field private fInneractiveApplicationId:Ljava/lang/String;

.field private fParentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/ansca/corona/AdManager;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .line 54
    iput-object v1, p0, Lcom/ansca/corona/AdManager;->fInMobiTimer:Ljava/util/Timer;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/AdManager;->fInneractiveApplicationId:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/ansca/corona/AdManager;->fInneractiveAdViewGroup:Landroid/view/ViewGroup;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/AdManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ansca/corona/AdManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/AdManager;)Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ansca/corona/AdManager;Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;
    .param p1, "x1"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ansca/corona/AdManager;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ansca/corona/AdManager;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ansca/corona/AdManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ansca/corona/AdManager;->fInMobiTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInneractiveAdViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ansca/corona/AdManager;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/AdManager;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ansca/corona/AdManager;->fInneractiveAdViewGroup:Landroid/view/ViewGroup;

    return-object p1
.end method


# virtual methods
.method public getInMobiApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getInneractiveApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInneractiveApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public hideAllAds()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/ansca/corona/AdManager;->hideInMobiAd()V

    .line 62
    invoke-virtual {p0}, Lcom/ansca/corona/AdManager;->hideInneractiveAd()V

    .line 63
    return-void
.end method

.method public hideInMobiAd()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ansca/corona/AdManager$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/AdManager$2;-><init>(Lcom/ansca/corona/AdManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hideInneractiveAd()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInneractiveAdViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ansca/corona/AdManager$4;

    invoke-direct {v1, p0}, Lcom/ansca/corona/AdManager$4;-><init>(Lcom/ansca/corona/AdManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isInMobiAdShown()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInneractiveAdShown()Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInneractiveAdViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInMobiApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .end local p1    # "id":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    .line 238
    return-void

    .line 237
    .restart local p1    # "id":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setInneractiveApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .end local p1    # "id":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/AdManager;->fInneractiveApplicationId:Ljava/lang/String;

    .line 504
    return-void

    .line 503
    .restart local p1    # "id":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public showInMobiAd(Ljava/lang/String;FFDZ)V
    .locals 10
    .param p1, "bannerTypeName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "intervalInSeconds"    # D
    .param p6, "testModeEnabled"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v3, p0, Lcom/ansca/corona/AdManager;->fInMobiApplicationId:Ljava/lang/String;

    .line 275
    .local v3, "copyOfInMobiApplicationId":Ljava/lang/String;
    iget-object v9, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/ansca/corona/AdManager$1;

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/ansca/corona/AdManager$1;-><init>(Lcom/ansca/corona/AdManager;Ljava/lang/String;Ljava/lang/String;ZFFD)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showInneractiveAd(Ljava/lang/String;III)V
    .locals 13
    .param p1, "adTypeName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "intervalInSeconds"    # I

    .prologue
    .line 525
    iget-object v1, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/AdManager;->fInneractiveApplicationId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 536
    iget-object v3, p0, Lcom/ansca/corona/AdManager;->fInneractiveApplicationId:Ljava/lang/String;

    .line 540
    .local v3, "copyOfInneractiveApplicationId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 541
    .local v11, "lowerCaseAdTypeName":Ljava/lang/String;
    const-string v1, "banner"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 542
    const/4 v10, 0x0

    .line 555
    .local v10, "integerId":B
    :goto_1
    move v4, v10

    .line 558
    .local v4, "adTypeId":B
    const/16 v9, 0x1e

    .line 559
    .local v9, "MIN_INTERVAL_IN_SECONDS":I
    const/16 v8, 0x12c

    .line 560
    .local v8, "MAX_INTERVAL_IN_SECONDS":I
    const/16 v1, 0x1e

    move/from16 v0, p4

    if-ge v0, v1, :cond_6

    .line 561
    const/16 p4, 0x1e

    .line 562
    const-string v1, "Corona"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inneractive ads cannot be set up with an interval less than "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " seconds. Changing the interval to the minimum allowed value."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_2
    :goto_2
    move/from16 v5, p4

    .line 575
    .local v5, "finalIntervalInSeconds":I
    iget-object v12, p0, Lcom/ansca/corona/AdManager;->fParentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ansca/corona/AdManager$3;

    move-object v2, p0

    move v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/ansca/corona/AdManager$3;-><init>(Lcom/ansca/corona/AdManager;Ljava/lang/String;BIII)V

    invoke-virtual {v12, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 544
    .end local v4    # "adTypeId":B
    .end local v5    # "finalIntervalInSeconds":I
    .end local v8    # "MAX_INTERVAL_IN_SECONDS":I
    .end local v9    # "MIN_INTERVAL_IN_SECONDS":I
    .end local v10    # "integerId":B
    :cond_3
    const-string v1, "text"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 545
    const/4 v10, 0x1

    .restart local v10    # "integerId":B
    goto :goto_1

    .line 547
    .end local v10    # "integerId":B
    :cond_4
    const-string v1, "fullscreen"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 548
    const/4 v10, 0x2

    .restart local v10    # "integerId":B
    goto :goto_1

    .line 551
    .end local v10    # "integerId":B
    :cond_5
    const-string v1, "Corona"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inneractive does not support ad name \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' given to ads.show() function."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 566
    .restart local v4    # "adTypeId":B
    .restart local v8    # "MAX_INTERVAL_IN_SECONDS":I
    .restart local v9    # "MIN_INTERVAL_IN_SECONDS":I
    .restart local v10    # "integerId":B
    :cond_6
    const/16 v1, 0x12c

    move/from16 v0, p4

    if-le v0, v1, :cond_2

    .line 567
    const/16 p4, 0x12c

    .line 568
    const-string v1, "Corona"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inneractive ads cannot be set up with an interval greater than "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " seconds. Changing the interval to the maximum allowed value."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
