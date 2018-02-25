.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->capture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

.field private final synthetic val$captureAction:Lcom/badlogic/gdx/scenes/scene2d/Action;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->val$captureAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    const/high16 v3, 0x41700000    # 15.0f

    .line 222
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->clearActions()V

    .line 223
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->val$captureAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 225
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    .line 226
    const-string v1, "sparkcapture"

    .line 225
    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "aEffect":Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v1

    .line 228
    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 229
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$16(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 230
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->x:F

    .line 231
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$6;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->y:F

    .line 232
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->getEffect()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 234
    return-void
.end method
