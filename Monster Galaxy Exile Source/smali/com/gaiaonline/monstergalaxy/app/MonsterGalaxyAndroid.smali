.class public Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "MonsterGalaxyAndroid.java"


# instance fields
.field private game:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

.field private notificationManager:Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public nativeOnBackPressed()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$3;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$3;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 288
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->backKeyPressed()V

    .line 293
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->game:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    .line 49
    new-instance v2, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-direct {v2, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    .line 52
    .local v2, "platformHelper":Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->game:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "storageFolder":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 58
    new-instance v6, Lcom/gaiaonline/monstergalaxy/app/Analytics;

    invoke-direct {v6}, Lcom/gaiaonline/monstergalaxy/app/Analytics;-><init>()V

    .line 60
    .local v6, "analytics":Lcom/gaiaonline/monstergalaxy/app/Analytics;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    .line 61
    new-instance v3, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;

    invoke-direct {v3, v1, p0}, Lcom/gaiaonline/monstergalaxy/service/GaiaClient;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move-object v5, v4

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;-><init>(Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;Lcom/gaiaonline/monstergalaxy/service/FacebookService;Lcom/gaiaonline/monstergalaxy/service/TwitterService;Lcom/gaiaonline/monstergalaxy/analytics/Analytics;)V

    .line 60
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->game:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    .line 64
    invoke-virtual {v6, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->setActivity(Landroid/app/Activity;)V

    .line 70
    .end local v1    # "storageFolder":Ljava/lang/String;
    .end local v6    # "analytics":Lcom/gaiaonline/monstergalaxy/app/Analytics;
    :goto_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->game:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->initialize(Lcom/badlogic/gdx/ApplicationListener;Z)V

    .line 72
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;

    .line 73
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->notificationManager:Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;

    .line 74
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->notificationManager:Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->loadAlarms(Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;)V

    .line 77
    new-instance v0, Lcom/nextive/android/billing/market/BillingService;

    invoke-direct {v0}, Lcom/nextive/android/billing/market/BillingService;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->BILLING_SERVICE:Lcom/nextive/android/billing/market/BillingService;

    .line 78
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->BILLING_SERVICE:Lcom/nextive/android/billing/market/BillingService;

    invoke-virtual {v0, p0}, Lcom/nextive/android/billing/market/BillingService;->setContext(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->getDealRewards()V

    .line 88
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->game:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-direct {v3, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->setPlatformHelper(Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;)V

    .line 67
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/Analytics;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->setActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    :goto_1
    return-object v3

    .line 167
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Complete islands upto:"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;->getIslandNames()[Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v4, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$1;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    .line 169
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_1

    .line 184
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, "builder2":Landroid/app/AlertDialog$Builder;
    const-string v3, "Pick a snapshot:"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getSnapshots()[Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "snapshots":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 188
    const-string v3, "Can\'t read snapshots"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 192
    :cond_0
    new-instance v3, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$2;

    invoke-direct {v3, p0, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid$2;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;[Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 142
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "neckmode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->canShowTweaksMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 147
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/gaiaonline/monstergalaxy/R$menu;->menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    const/4 v1, 0x1

    .line 153
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    return v1

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :cond_1
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onDestroy()V

    .line 268
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->BILLING_SERVICE:Lcom/nextive/android/billing/market/BillingService;

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService;->unbind()V

    .line 269
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onLowMemory()V

    .line 100
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "Warning"

    const-string v2, "LOW MEMORY"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "screenCode":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 108
    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreenWhenPossible(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 111
    :cond_0
    const-string v0, "notificationType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "notification":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 114
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->DAILY_PRIZE:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_activity"

    .line 116
    const-string v3, "prize"

    const-string v4, "tap"

    const-string v5, ""

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->TAMER_ENERGY_FULL:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    .line 120
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_activity"

    .line 122
    const-string v3, "tamer"

    const-string v4, "tap"

    const-string v5, ""

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->MOGAS_RESTED:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_activity"

    .line 128
    const-string v3, "moga"

    const-string v4, "tap"

    const-string v5, ""

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_3
    sget-object v0, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->ISLAND:Lcom/gaiaonline/monstergalaxy/settings/NotificationType;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/settings/NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "retention"

    const-string v2, "alert_activity"

    .line 134
    const-string v3, "island"

    const-string v4, "tap"

    const-string v5, ""

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks:I

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->show(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->notificationManager:Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->installAlarms()V

    .line 219
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V

    .line 220
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMPauseActivity()V

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 159
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->menuKeyPressed()V

    .line 160
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onResume()V

    .line 227
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->showNativeProgressDialog()V

    .line 228
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 228
    check-cast v0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    .line 229
    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->initialize(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->notificationManager:Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/notifications/MogaNotificationManager;->uninstallAlarms()V

    .line 233
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMResumeActivity()V

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onStart()V

    .line 241
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/Analytics;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->startSession(Landroid/content/Context;)V

    .line 244
    invoke-static {p0}, Lcom/nextive/android/billing/market/BillingResponseHandler;->registerActivity(Landroid/app/Activity;)V

    .line 246
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMStartActivity()V

    .line 247
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/app/Analytics;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/Analytics;->endSession(Landroid/content/Context;)V

    .line 255
    invoke-static {}, Lcom/nextive/android/billing/market/BillingResponseHandler;->unregisterActivity()V

    .line 257
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMStopActivity()V

    .line 261
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onStop()V

    .line 262
    return-void
.end method
