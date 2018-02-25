.class public Lcom/gaiaonline/monstergalaxy/battle/dialogs/QuitGameDialog;
.super Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
.source "QuitGameDialog.java"


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 9
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 10
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/dialogs/QuitGameDialog$1;

    invoke-direct {v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/QuitGameDialog$1;-><init>(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 22
    const-string v2, "Are you sure you want to exit Monster Galaxy?"

    const-string v3, "Yes"

    .line 23
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v5, "No"

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 24
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 25
    return-void
.end method
