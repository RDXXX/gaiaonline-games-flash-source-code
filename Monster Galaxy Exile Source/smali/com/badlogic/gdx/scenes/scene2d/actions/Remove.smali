.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "Remove.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected removed:Z

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static $()Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
    .locals 2

    .prologue
    .line 34
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;

    .line 35
    .local v0, "remove":Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 37
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    const/4 v1, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->markToRemove(Z)V

    .line 49
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    .line 50
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->callActionCompletedListener()V

    .line 52
    :cond_0
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->$()Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->removed:Z

    return v0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Remove;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 43
    return-void
.end method
