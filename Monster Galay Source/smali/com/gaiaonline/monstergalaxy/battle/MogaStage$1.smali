.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 14
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 476
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 477
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$1(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;I)V

    .line 479
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 480
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 481
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()V

    .line 484
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$2(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I

    move-result v5

    if-ne v5, v13, :cond_0

    .line 485
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v1

    .line 490
    .local v1, "enteringMoga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    :goto_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->PUFF_SMOKE_GLOW:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    iget v7, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->x:F

    .line 491
    iget v8, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->width:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->y:F

    .line 492
    iget v9, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    const/high16 v10, 0x40a00000    # 5.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 490
    invoke-virtual {v5, v6, v7, v8}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->doEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;FF)V

    .line 494
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->addToStage(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 497
    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v2

    .line 498
    .local v2, "fadeIn":Lcom/badlogic/gdx/scenes/scene2d/Action;
    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v12, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v4

    .line 501
    .local v4, "scaleTo":Lcom/badlogic/gdx/scenes/scene2d/Action;
    new-instance v5, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;

    invoke-direct {v5, p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 508
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v4, v5, v13

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v3

    .line 511
    .local v3, "mogaEntrance":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iput v11, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->originY:F

    .line 513
    iput v11, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->scaleX:F

    .line 514
    iput v11, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->scaleY:F

    .line 515
    iget-object v5, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v11, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 516
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v5, v1, v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$6(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 518
    return-void

    .line 487
    .end local v1    # "enteringMoga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    .end local v2    # "fadeIn":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v3    # "mogaEntrance":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v4    # "scaleTo":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v1

    .restart local v1    # "enteringMoga":Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;
    goto :goto_0
.end method
