.class Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;
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

.field private final synthetic val$attack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

.field private final synthetic val$hitMove:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private final synthetic val$who:I


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;ILcom/badlogic/gdx/scenes/scene2d/Action;Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$who:I

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$hitMove:Lcom/badlogic/gdx/scenes/scene2d/Action;

    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$attack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$5(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    move-result-object v0

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$13()[Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-result-object v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$who:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 141
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$who:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$4(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$hitMove:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 142
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->val$attack:Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/move/AttackMove;->getHitSound()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v1, v0, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$14(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;Lcom/badlogic/gdx/scenes/scene2d/Action;Ljava/lang/String;)V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/MogaStage$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/MogaStage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaStage;->access$3(Lcom/gaiaonline/monstergalaxy/battle/MogaStage;)Lcom/gaiaonline/monstergalaxy/battle/anim/MogaActor;

    move-result-object v0

    goto :goto_0
.end method
