.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;
.super Ljava/lang/Object;
.source "MogaStage.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;->completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;

.field private final synthetic val$enteringMoga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;->val$enteringMoga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 3
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;->val$enteringMoga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$1$1;->val$enteringMoga:Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->height:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;->originY:F

    .line 505
    return-void
.end method
