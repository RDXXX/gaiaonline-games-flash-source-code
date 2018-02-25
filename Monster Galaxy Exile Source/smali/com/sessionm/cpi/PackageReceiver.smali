.class public Lcom/sessionm/cpi/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field private activePackage:Lcom/sessionm/json/JSONObject;

.field private clicked:Ljava/lang/String;

.field private engagementId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/sessionm/json/JSONObject;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const-string v0, "cpc_info"

    invoke-virtual {p1, v0}, Lcom/sessionm/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    .line 31
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    const-string v1, "engagementId"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->engagementId:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    const-string v1, "scheme"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->packageName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/sessionm/cpi/PackageReceiver;->engagementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->clicked:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v0, "smInstallsFile"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 50
    const-string v0, "com.sessionm.TRANSACTION_RECEIVED"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "id"

    iget-object v4, p0, Lcom/sessionm/cpi/PackageReceiver;->engagementId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "clicked"

    iget-object v4, p0, Lcom/sessionm/cpi/PackageReceiver;->clicked:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    invoke-virtual {v0}, Lcom/sessionm/json/JSONObject;->names()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 55
    iget-object v7, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    invoke-virtual {v7, v6}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/sessionm/cpi/PackageReceiver;->activePackage:Lcom/sessionm/json/JSONObject;

    invoke-virtual {v2}, Lcom/sessionm/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_5

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installed application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->engagementId:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->engagementId:Ljava/lang/String;

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sessionm/cpi/PackageReceiver;->engagementId:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/sessionm/ui/ActivityController;->notifyApplicationInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_5
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v4

    .line 75
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v0

    const-string v5, "app.running.mode"

    invoke-virtual {v0, v5}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    const-string v5, "debug"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method
