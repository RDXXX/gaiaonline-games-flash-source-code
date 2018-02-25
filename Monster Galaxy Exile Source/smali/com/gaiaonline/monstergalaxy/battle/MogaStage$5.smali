.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;
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

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->val$success:Z

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)Lcom/gaiaonline/monstergalaxy/battle/MogaStage;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    return-object v0
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$0(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$1(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;I)V

    .line 188
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->val$success:Z

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 192
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    const/high16 v3, 0x42700000    # 60.0f

    sub-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    .line 191
    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v0

    .line 193
    .local v0, "dropStarseed":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 201
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 208
    .end local v0    # "dropStarseed":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$16(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$15(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 205
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$5;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_FAIL_COMPLETE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    goto :goto_0
.end method
