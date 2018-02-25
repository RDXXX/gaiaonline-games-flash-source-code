.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
.super Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;
.source "Sequence.java"


# static fields
.field static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected currAction:I

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public static varargs $([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    .locals 5
    .param p0, "actions"    # [Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 36
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    .line 37
    .local v2, "sequence":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 38
    array-length v1, p0

    .line 39
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-object v2
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence$1;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence$1;-><init>(II)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->callActionCompletedListener()V

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->callActionCompletedListener()V

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    .line 67
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 5

    .prologue
    .line 84
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    .line 85
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 87
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 88
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Action;->copy()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 79
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/CompositeAction;->finish()V

    .line 80
    return-void
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/4 v2, 0x0

    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 48
    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->currAction:I

    .line 49
    return-void
.end method
