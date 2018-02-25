.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;
.super Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;
.source "Forever.java"


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 32
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    .line 33
    .local v0, "forever":Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;
    iput-object p0, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

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
    .line 45
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    .line 46
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 48
    .local v0, "oldAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 52
    .end local v0    # "oldAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 63
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/TemporalAction;->finish()V

    .line 64
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 41
    return-void
.end method
