.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$8;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->runAway()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$8;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$8;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->visible:Z

    .line 301
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$8;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ANIMATIONS_ENDED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 302
    return-void
.end method
