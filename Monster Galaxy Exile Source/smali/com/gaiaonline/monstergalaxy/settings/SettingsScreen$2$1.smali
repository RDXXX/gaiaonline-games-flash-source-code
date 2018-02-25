.class Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2$1;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/service/AbstractGaiaClient$GaiaHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2$1;->this$1:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2$1;->this$1:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->access$0(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;)Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->access$1(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->setText(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2$1;->this$1:Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;->access$0(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen$2;)Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;->access$1(Lcom/gaiaonline/monstergalaxy/settings/SettingsScreen;)Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->setTimeOut(I)V

    .line 122
    return-void
.end method
