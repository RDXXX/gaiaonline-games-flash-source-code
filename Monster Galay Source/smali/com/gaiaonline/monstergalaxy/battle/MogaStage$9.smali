.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->showDamage(Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

.field private final synthetic val$damageLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;->val$damageLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;->val$damageLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->clearActions()V

    .line 344
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$16(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/app/PausableGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$9;->val$damageLabel:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/PausableGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 345
    return-void
.end method
