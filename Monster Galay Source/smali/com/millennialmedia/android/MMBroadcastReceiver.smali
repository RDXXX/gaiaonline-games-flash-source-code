.class public Lcom/millennialmedia/android/MMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 17
    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    const-string v1, "millennialmedia.action.ACTION_FETCH_FINISHED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public displayStarted(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 142
    const-string v0, "Millennial Media display started."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public fetchFailure(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 136
    const-string v0, "Millennial Media fetch failed."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public fetchFinishedCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 130
    const-string v0, "Millennial Media fetch finished caching."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public fetchStartedCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 124
    const-string v0, "Millennial Media fetch started caching."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public getAdFailure(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 99
    const-string v0, "Millennial Media ad Failure."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public getAdSuccess(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 93
    const-string v0, "Millennial Media ad Success."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public intentStarted(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;
    .param p2, "intent"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p2, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Millennial Media started intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "packageName":Ljava/lang/String;
    const-string v7, "internalId"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 36
    .local v3, "internalId":J
    const/4 v1, 0x0

    .line 38
    .local v1, "adView":Lcom/millennialmedia/android/MMAdView;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    cmp-long v7, v3, v8

    if-eqz v7, :cond_2

    .line 43
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 44
    .local v6, "tempId":Ljava/lang/Long;
    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewController;->getAdViewWithId(Ljava/lang/Long;)Lcom/millennialmedia/android/MMAdView;

    move-result-object v1

    .line 47
    .end local v6    # "tempId":Ljava/lang/Long;
    :cond_2
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 49
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayOpened(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 53
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayClosed(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 57
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayTap(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 59
    :cond_5
    const-string v7, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 61
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->displayStarted(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 63
    :cond_6
    const-string v7, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 65
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFailure(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 67
    :cond_7
    const-string v7, "millennialmedia.action.ACTION_FETCH_FINISHED_CACHING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 69
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFinishedCaching(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 71
    :cond_8
    const-string v7, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 73
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 75
    :cond_9
    const-string v7, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 77
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdFailure(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 79
    :cond_a
    const-string v7, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 81
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdSuccess(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 83
    :cond_b
    const-string v7, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    const-string v7, "intentType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/millennialmedia/android/MMBroadcastReceiver;->intentStarted(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public overlayClosed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 111
    const-string v0, "Millennial Media overlay closed."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public overlayOpened(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 105
    const-string v0, "Millennial Media overlay opened."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public overlayTap(Lcom/millennialmedia/android/MMAdView;)V
    .locals 1
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 148
    const-string v0, "Millennial Media overlay Tap."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 149
    return-void
.end method
