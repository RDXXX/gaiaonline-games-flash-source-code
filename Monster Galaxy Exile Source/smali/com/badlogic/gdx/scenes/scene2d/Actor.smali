.class public abstract Lcom/badlogic/gdx/scenes/scene2d/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# instance fields
.field protected actions:Lcom/badlogic/gdx/utils/PooledLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field public final color:Lcom/badlogic/gdx/graphics/Color;

.field public height:F

.field public final name:Ljava/lang/String;

.field public originX:F

.field public originY:F

.field public parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public rotation:F

.field public scaleX:F

.field public scaleY:F

.field private toRemove:Z

.field public touchable:Z

.field public visible:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    .line 77
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 85
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 86
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/utils/PooledLinkedList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/PooledLinkedList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    .line 94
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 150
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter()V

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/PooledLinkedList;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)V

    .line 155
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->finish()V

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/PooledLinkedList;->remove()V

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 167
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/PooledLinkedList;->add(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public clearActions()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->clear()V

    .line 174
    return-void
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
.end method

.method public abstract hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
.end method

.method public isMarkedToRemove()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toRemove:Z

    return v0
.end method

.method public keyDown(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public keyTyped(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public markToRemove(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toRemove:Z

    .line 190
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 147
    return-void
.end method

.method public scrolled(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 141
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {p0, v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": [x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract touchDown(FFI)Z
.end method

.method public abstract touchDragged(FFI)Z
.end method

.method public touchMoved(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public abstract touchUp(FFI)Z
.end method
