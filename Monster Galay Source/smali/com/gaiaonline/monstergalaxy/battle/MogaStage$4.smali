.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$4;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->attack(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

.field private final synthetic val$moga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$4;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$4;->val$moga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$4;->val$moga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->stopGlowing()V

    .line 164
    return-void
.end method
