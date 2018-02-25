.class Lcom/millennialmedia/android/MMAdViewSDK$Event;
.super Ljava/lang/Object;
.source "MMAdViewSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field public static final ACTION_DISPLAY_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_DISPLAY_STARTED"

.field public static final ACTION_FETCH_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FAILED"

.field public static final ACTION_FETCH_FINISHED_CACHING:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FINISHED_CACHING"

.field public static final ACTION_FETCH_STARTED_CACHING:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

.field public static final ACTION_GETAD_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_FAILED"

.field public static final ACTION_GETAD_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

.field public static final ACTION_INTENT_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_INTENT_STARTED"

.field public static final ACTION_OVERLAY_CLOSED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_CLOSED"

.field public static final ACTION_OVERLAY_OPENED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_OPENED"

.field public static final ACTION_OVERLAY_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_TAP"

.field public static final CATEGORY_SDK:Ljava/lang/String; = "millennialmedia.category.CATEGORY_SDK"

.field public static final INTENT_EMAIL:Ljava/lang/String; = "email"

.field public static final INTENT_EXTERNAL_BROWSER:Ljava/lang/String; = "browser"

.field public static final INTENT_MAPS:Ljava/lang/String; = "geo"

.field public static final INTENT_MARKET:Ljava/lang/String; = "market"

.field public static final INTENT_PHONE_CALL:Ljava/lang/String; = "tel"

.field public static final INTENT_STREAMING_VIDEO:Ljava/lang/String; = "streamingVideo"

.field public static final INTENT_TXT_MESSAGE:Ljava/lang/String; = "sms"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field static final KEY_INTENT_TYPE:Ljava/lang/String; = "intentType"

.field static final KEY_INTERNAL_ID:Ljava/lang/String; = "internalId"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static displayStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 560
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$7;

    invoke-direct {v1, p1}, Lcom/millennialmedia/android/MMAdViewSDK$Event$7;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 582
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    if-eqz p1, :cond_0

    .line 589
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 592
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 594
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static fetchFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "request"    # Lcom/millennialmedia/android/MMAdView$Request;
    .param p3, "error"    # Lcom/millennialmedia/android/MMError;

    .prologue
    .line 517
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$6;

    invoke-direct {v1, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewSDK$Event$6;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 543
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    if-eqz p1, :cond_0

    .line 550
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 553
    :cond_0
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 556
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static fetchFinishedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "request"    # Lcom/millennialmedia/android/MMAdView$Request;

    .prologue
    .line 475
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;

    invoke-direct {v1, p1, p2}, Lcom/millennialmedia/android/MMAdViewSDK$Event$5;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 501
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_FETCH_FINISHED_CACHING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    if-eqz p1, :cond_0

    .line 508
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static fetchStartedCaching(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 436
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$4;

    invoke-direct {v1, p1}, Lcom/millennialmedia/android/MMAdViewSDK$Event$4;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    if-eqz p1, :cond_0

    .line 465
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 468
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static getAdFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "request"    # Lcom/millennialmedia/android/MMAdView$Request;
    .param p3, "error"    # Lcom/millennialmedia/android/MMError;

    .prologue
    .line 307
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$2;

    invoke-direct {v1, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewSDK$Event$2;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    if-eqz p1, :cond_0

    .line 341
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    :cond_0
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static getAdSuccess(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "request"    # Lcom/millennialmedia/android/MMAdView$Request;

    .prologue
    .line 265
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$1;

    invoke-direct {v1, p1, p2}, Lcom/millennialmedia/android/MMAdViewSDK$Event$1;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    if-eqz p1, :cond_0

    .line 297
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 300
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "intentType"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v1, "intentType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    if-eqz p1, :cond_0

    .line 426
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 429
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 431
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static overlayClosed(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_0

    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 399
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static overlayOpened(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 352
    new-instance v1, Lcom/millennialmedia/android/MMAdViewSDK$Event$3;

    invoke-direct {v1, p1}, Lcom/millennialmedia/android/MMAdViewSDK$Event$3;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_1

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    if-eqz p1, :cond_0

    .line 381
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const-string v1, "internalId"

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method static overlayTap(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    sget-boolean v1, Lcom/millennialmedia/android/MMAdViewSDK;->broadcastEvents:Z

    if-eqz v1, :cond_0

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "request"    # Lcom/millennialmedia/android/MMAdView$Request;
    .param p3, "exception"    # Lcom/millennialmedia/android/MMError;

    .prologue
    .line 598
    iget-boolean v0, p2, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    if-eqz v0, :cond_0

    .line 599
    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->fetchFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->getAdFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0
.end method
