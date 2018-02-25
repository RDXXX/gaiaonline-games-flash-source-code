.class Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->makeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;)Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    return-object v0
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 109
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeOptionsView()V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    const/4 v4, 0x0

    const-string v5, "Retrieving reimbursement from Gaia servers"

    .line 114
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TAMER_DISMISS_DIALOG:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ILjava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 113
    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->access$0(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 116
    new-instance v0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2$1;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2$1;-><init>(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;)V

    .line 125
    .local v0, "listener":Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getGaiaClient()Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient;->claimReimbursement(Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;)V

    .line 129
    return-void
.end method
