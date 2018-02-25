.class public abstract Lcom/badlogic/gdx/scenes/scene2d/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field protected listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    return-void
.end method


# virtual methods
.method public abstract act(F)V
.end method

.method public callActionCompletedListener()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;->completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .line 56
    return-void
.end method

.method public abstract copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;->completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 48
    :cond_0
    return-void
.end method

.method public getCompletionListener()Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    return-object v0
.end method

.method public abstract getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
.end method

.method public abstract isDone()Z
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .line 78
    return-void
.end method

.method public setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .line 67
    return-object p0
.end method

.method public abstract setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
.end method
