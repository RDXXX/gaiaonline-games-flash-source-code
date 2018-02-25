.class Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;
.super Ljava/lang/Object;
.source "BattleScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getAttackTutorial()Lcom/gaiaonline/monstergalaxy/screen/Dialog;
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 217
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/AttackButtons;->startTimer()V

    .line 219
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;Z)V

    .line 220
    return-void
.end method
