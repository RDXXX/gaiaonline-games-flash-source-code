.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "Delay.java"


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected action:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field protected duration:F

.field protected taken:F


# direct methods
.method public static $(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "duration"    # F

    .prologue
    .line 35
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    .line 36
    .local v0, "delay":Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    .line 37
    iput-object p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 38
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->callActionCompletedListener()V

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->callActionCompletedListener()V

    .line 60
    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 71
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 72
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->duration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    .line 44
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->taken:F

    .line 50
    return-void
.end method
