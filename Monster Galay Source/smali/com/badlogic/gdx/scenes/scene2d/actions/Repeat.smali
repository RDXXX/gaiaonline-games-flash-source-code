.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;
.super Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;
.source "Repeat.java"


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected finishedTimes:I

.field protected times:I


# direct methods
.method public static $(Lcom/badlogic/gdx/scenes/scene2d/Action;I)Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "times"    # I

    .prologue
    .line 35
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;

    .line 36
    .local v0, "repeat":Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;
    iput-object p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 37
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->times:I

    .line 38
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 56
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    .line 57
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->finishedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->finishedTimes:I

    .line 59
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->finishedTimes:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->times:I

    if-ge v1, v2, :cond_1

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 61
    .local v0, "oldAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 62
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 63
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 68
    .end local v0    # "oldAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->callActionCompletedListener()V

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->times:I

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;I)Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 79
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;->finish()V

    .line 80
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->finishedTimes:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->times:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;->reset()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->finishedTimes:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->listener:Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .line 46
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Repeat;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 52
    return-void
.end method
