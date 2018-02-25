.class public abstract Lcom/gaiaonline/monstergalaxy/app/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# instance fields
.field protected batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private deltaTimeSinceResume:F

.field protected dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

.field public dispose:Z

.field protected effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

.field private frameNumberSinceResume:I

.field protected guiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field protected lastTouchPoint:Lcom/badlogic/gdx/math/Vector2;

.field private resumeCount:I

.field protected root:Lcom/gaiaonline/monstergalaxy/screen/Root;

.field protected showingQuitDialog:Z

.field protected stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field protected startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

.field protected wasTouched:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->lastTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 39
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    .line 38
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->guiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->guiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 41
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->guiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 45
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->guiCam:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 47
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    .line 49
    return-void
.end method

.method private updateTouchPoint(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 124
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 125
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 126
    return-void
.end method


# virtual methods
.method public final applicationPause()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onApplicationPause()V

    .line 189
    return-void
.end method

.method public final applicationResume()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onApplicationResume()V

    .line 198
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->dispose()V

    .line 59
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 60
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ActorUtil;->disposeStageRecursive(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 68
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 70
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->removeParticles()V

    .line 71
    return-void
.end method

.method public final enter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 215
    return-void
.end method

.method public final exit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "nextScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onExit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 223
    return-void
.end method

.method public getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenFactory;->getScreenClassScreenCode(Ljava/lang/Class;)Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaTimeSinceResume()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->deltaTimeSinceResume:F

    return v0
.end method

.method public getFrameNumberSinceResume()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->frameNumberSinceResume:I

    return v0
.end method

.method public getResumeCount()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->resumeCount:I

    return v0
.end method

.method public hideDialog()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->showingQuitDialog:Z

    .line 169
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->hide()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .line 173
    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->hideDialog()V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    goto :goto_0
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 219
    return-void
.end method

.method public onExit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "nextScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 227
    return-void
.end method

.method public onMenuKeyPressed()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onPause()V

    .line 207
    return-void
.end method

.method public present(F)V
    .locals 2
    .param p1, "deltaTime"    # F

    .prologue
    .line 129
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 137
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 139
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 140
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->drawEffects(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 144
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 147
    :cond_2
    return-void
.end method

.method public present(FLcom/gaiaonline/monstergalaxy/app/ScreenTransition;)V
    .locals 1
    .param p1, "deltaTime"    # F
    .param p2, "transition"    # Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(F)V

    .line 151
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 152
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p2, v0}, Lcom/gaiaonline/monstergalaxy/app/ScreenTransition;->render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 153
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 154
    return-void
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->resumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->resumeCount:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->frameNumberSinceResume:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->deltaTimeSinceResume:F

    .line 234
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->onResume()V

    .line 235
    return-void
.end method

.method protected showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    .line 158
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->show()V

    .line 159
    return-void
.end method

.method protected showQuitDialog()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->showingQuitDialog:Z

    .line 163
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/QuitGameDialog;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/QuitGameDialog;-><init>(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 164
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    .line 75
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->frameNumberSinceResume:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->frameNumberSinceResume:I

    .line 76
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->deltaTimeSinceResume:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->deltaTimeSinceResume:F

    .line 78
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->wasTouched:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 80
    .local v0, "touchJustReleased":Z
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->justTouched()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->updateTouchPoint(Lcom/badlogic/gdx/math/Vector2;)V

    .line 84
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Root;->touched(Lcom/badlogic/gdx/math/Vector2;)Z

    .line 120
    :cond_0
    :goto_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v1

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->wasTouched:Z

    .line 121
    return-void

    .line 78
    .end local v0    # "touchJustReleased":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    .restart local v0    # "touchJustReleased":Z
    :cond_2
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->touched(Lcom/badlogic/gdx/math/Vector2;)Z

    goto :goto_1

    .line 90
    :cond_3
    if-eqz v0, :cond_5

    .line 92
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->lastTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->updateTouchPoint(Lcom/badlogic/gdx/math/Vector2;)V

    .line 94
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v1, :cond_4

    .line 95
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->lastTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/Root;->touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    goto :goto_1

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->startTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->lastTouchPoint:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->touchReleased(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    goto :goto_1

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v1, :cond_6

    .line 102
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->update(F)V

    .line 104
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    goto :goto_1

    .line 110
    :cond_6
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->isKeepingAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->update(F)V

    .line 113
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/app/Screen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    goto :goto_1
.end method
