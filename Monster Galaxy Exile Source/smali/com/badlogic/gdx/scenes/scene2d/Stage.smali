.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "Stage.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field protected final batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field protected camera:Lcom/badlogic/gdx/graphics/Camera;

.field protected centerX:F

.field protected centerY:F

.field final coords:Lcom/badlogic/gdx/math/Vector2;

.field protected height:F

.field final point:Lcom/badlogic/gdx/math/Vector2;

.field protected final root:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field protected stretch:Z

.field final tmp:Lcom/badlogic/gdx/math/Vector3;

.field protected width:F


# direct methods
.method public constructor <init>(FFZ)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "stretch"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 187
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    .line 188
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    .line 361
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 77
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 78
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 79
    iput-boolean p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stretch:Z

    .line 80
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setViewport(FFZ)V

    .line 84
    return-void
.end method

.method private graphToString(Ljava/lang/StringBuilder;Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "level"    # I

    .prologue
    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 310
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    instance-of v2, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 316
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 317
    .local v0, "group":Lcom/badlogic/gdx/scenes/scene2d/Group;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->graphToString(Ljava/lang/StringBuilder;Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    .end local v0    # "group":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :cond_1
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    .line 279
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 299
    return-void
.end method

.method public bottom()F
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public centerX()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerX:F

    return v0
.end method

.method public centerY()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerY:F

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 376
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 293
    return-void
.end method

.method public draw()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 285
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 288
    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public getActors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getActors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchedChild()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    return-object v0
.end method

.method public graphToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->graphToString(Ljava/lang/StringBuilder;Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public height()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    return v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public isStretched()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stretch:Z

    return v0
.end method

.method public keyDown(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyDown(I)Z

    move-result v0

    return v0
.end method

.method public keyTyped(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyTyped(C)Z

    move-result v0

    return v0
.end method

.method public keyUp(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyUp(I)Z

    move-result v0

    return v0
.end method

.method public left()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 382
    return-void
.end method

.method public right()F
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public scrolled(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrolled(I)Z

    move-result v0

    return v0
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 342
    return-void
.end method

.method public setViewport(FFZ)V
    .locals 8
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "stretch"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 94
    if-nez p3, :cond_1

    .line 95
    cmpl-float v4, p1, p2

    if-lez v4, :cond_0

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p2, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 96
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, p2

    .line 97
    .local v2, "toDeviceSpace":F
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v3, p2, v4

    .line 99
    .local v3, "toViewportSpace":F
    mul-float v1, p1, v2

    .line 100
    .local v1, "deviceWidth":F
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 101
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 115
    .end local v1    # "deviceWidth":F
    .end local v2    # "toDeviceSpace":F
    .end local v3    # "toViewportSpace":F
    :goto_0
    iput-boolean p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stretch:Z

    .line 116
    div-float v4, p1, v6

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerX:F

    .line 117
    div-float v4, p2, v6

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerY:F

    .line 119
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerX:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->centerY:F

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 120
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    iput v5, v4, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    .line 121
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    iput v5, v4, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    .line 122
    return-void

    .line 103
    :cond_0
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, p1

    .line 104
    .restart local v2    # "toDeviceSpace":F
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v3, p1, v4

    .line 106
    .restart local v3    # "toViewportSpace":F
    mul-float v0, p2, v2

    .line 107
    .local v0, "deviceHeight":F
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    mul-float/2addr v4, v3

    add-float/2addr v4, p2

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    .line 108
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    goto :goto_0

    .line 111
    .end local v0    # "deviceHeight":F
    .end local v2    # "toDeviceSpace":F
    .end local v3    # "toViewportSpace":F
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    .line 112
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    goto :goto_0
.end method

.method public toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "out"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tmp:Lcom/badlogic/gdx/math/Vector3;

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;)V

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 371
    return-void
.end method

.method public top()F
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->height:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public touchDown(IIII)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    .line 199
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDown(FFI)Z

    move-result v0

    return v0
.end method

.method public touchDragged(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchDragged(FFI)Z

    move-result v0

    return v0
.end method

.method public touchMoved(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchMoved(FF)Z

    move-result v0

    return v0
.end method

.method public touchUp(IIII)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->toStageCoordinates(IILcom/badlogic/gdx/math/Vector2;)V

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->coords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchUp(FFI)Z

    move-result v0

    return v0
.end method

.method public unfocusAll()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->unfocusAll()V

    .line 388
    return-void
.end method

.method public width()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->width:F

    return v0
.end method
