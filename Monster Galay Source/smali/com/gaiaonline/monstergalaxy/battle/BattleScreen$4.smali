.class Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;
.super Ljava/lang/Object;
.source "BattleScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onBlueCoffee(I)V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1024
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    move-result-object v3

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1024
    :goto_0
    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->setVisible(Z)V

    .line 1026
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    move-result-object v0

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$5(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;

    move-result-object v3

    .line 1027
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->isMenuOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 1026
    :cond_0
    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setVisible(Z)V

    .line 1028
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$6(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Z)V

    .line 1029
    return-void

    :cond_1
    move v0, v2

    .line 1025
    goto :goto_0
.end method
