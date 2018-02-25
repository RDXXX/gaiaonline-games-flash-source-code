.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_SUCCESS_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 197
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$16(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 198
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$16(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 199
    return-void
.end method
