.class Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;
.super Ljava/lang/Object;
.source "CardActor.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->glow(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

.field private final synthetic val$listener:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;->val$listener:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;->access$1(Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor;Z)V

    .line 184
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;->val$listener:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$2;->val$listener:Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/slotmachine/CardActor$GlowCompletedListener;->cardGlowCompleted()V

    .line 187
    :cond_0
    return-void
.end method
