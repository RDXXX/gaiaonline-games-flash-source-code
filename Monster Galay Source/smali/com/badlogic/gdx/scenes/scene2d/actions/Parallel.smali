.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;
.super Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;
.source "Parallel.java"


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected finished:[Z

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static varargs $([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;
    .locals 5
    .param p0, "actions"    # [Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 36
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    .line 37
    .local v2, "parallel":Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 38
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    array-length v3, v3

    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 39
    :cond_0
    array-length v3, p0

    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    .line 40
    :cond_1
    array-length v1, p0

    .line 41
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 42
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    array-length v1, p0

    .line 44
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 45
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_3
    return-object v2
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 6
    .param p1, "delta"    # F

    .prologue
    .line 59
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 60
    .local v3, "len":I
    const/4 v1, 0x1

    .line 62
    .local v1, "allDone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 63
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 64
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    .line 66
    const/4 v1, 0x0

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 70
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 71
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aget-boolean v4, v4, v2

    and-int/2addr v1, v4

    goto :goto_1

    .line 75
    .end local v0    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->callActionCompletedListener()V

    .line 76
    :cond_3
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 5

    .prologue
    .line 98
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    .line 99
    .local v2, "parallel":Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    array-length v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 103
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 104
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 106
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 107
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_3
    return-object v2
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 88
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->finished:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->finish()V

    .line 94
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 81
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 82
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 83
    :goto_1
    return v2

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 52
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 53
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->actions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
