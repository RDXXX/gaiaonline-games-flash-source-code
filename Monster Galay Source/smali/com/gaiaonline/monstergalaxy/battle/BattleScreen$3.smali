.class Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;
.super Ljava/lang/Object;
.source "BattleScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->showShopDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 948
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 949
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SHOP:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0, v1, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 954
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 955
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 957
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->closeMenu()V

    .line 958
    return-void
.end method
