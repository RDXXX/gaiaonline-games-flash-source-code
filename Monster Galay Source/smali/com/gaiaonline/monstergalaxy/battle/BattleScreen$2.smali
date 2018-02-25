.class Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$2;
.super Ljava/lang/Object;
.source "BattleScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->hideDialog()V

    .line 532
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)Lcom/gaiaonline/monstergalaxy/model/battle/Battle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/Battle;->mogaWasCaptured()V

    .line 533
    return-void
.end method
