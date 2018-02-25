.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;
.super Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
.source "MogaStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->capture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field playedSound:Z

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;->val$success:Z

    .line 244
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;->playedSound:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;->playedSound:Z

    .line 261
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$7;->val$success:Z

    if-eqz v0, :cond_1

    const-string v0, "b_seed_capture_success"

    :goto_0
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void

    .line 262
    :cond_1
    const-string v0, "b_seed_capture_fail"

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 249
    return-void
.end method
