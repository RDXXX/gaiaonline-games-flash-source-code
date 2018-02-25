.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;
.super Ljava/lang/Object;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showRateGameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 781
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const/4 v2, 0x5

    .line 783
    const-string v3, "Thank you for your feedback."

    .line 784
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ILjava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 782
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ACCEPT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    .line 788
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->openMarketProductPage()V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$14;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    goto :goto_0
.end method
