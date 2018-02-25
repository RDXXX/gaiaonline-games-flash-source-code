.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MogaListener"
.end annotation


# instance fields
.field exploded:Z

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;


# direct methods
.method private constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V
    .locals 1

    .prologue
    .line 522
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->exploded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 529
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$1(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;I)V

    .line 530
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$7(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;I)V

    .line 534
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->exploded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->getMoga()Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getHitPoints()I

    move-result v0

    if-nez v0, :cond_1

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->exploded:Z

    .line 536
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$8(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$9(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F

    move-result v1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    .line 539
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$10(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F

    move-result v1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 540
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$11(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F

    move-result v1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    .line 541
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$12(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)F

    move-result v1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 543
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->beIdle()V

    .line 544
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->beIdle()V

    .line 546
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$MogaListener;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->ANIMATIONS_ENDED:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    goto :goto_0
.end method
