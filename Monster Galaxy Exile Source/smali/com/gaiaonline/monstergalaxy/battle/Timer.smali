.class public Lcom/gaiaonline/monstergalaxy/battle/Timer;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;
    }
.end annotation


# instance fields
.field private completeListener:Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;

.field private completed:Z

.field private elapsedTime:F

.field private lastSecondsShown:I

.field private final pieMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

.field private final timerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private timerSeconds:I


# direct methods
.method public constructor <init>(I)V
    .locals 9
    .param p1, "seconds"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 23
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completed:Z

    .line 27
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->timerSeconds:I

    .line 29
    const-string v0, "timer.background"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 31
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "data/timer.full.png"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 34
    .local v8, "imageFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    const/high16 v1, 0x43100000    # 144.0f

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v3, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;-><init>(FLcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->pieMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    .line 35
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->pieMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->pieMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x3fc00000    # 1.5f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v3, v2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/battle/Timer;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->timerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 41
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completed:Z

    return v0
.end method

.method public setOnCompleteListener(Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;)V
    .locals 0
    .param p1, "completeListener"    # Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completeListener:Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;

    .line 49
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completed:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->visible:Z

    .line 55
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completed:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    .line 60
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->visible:Z

    .line 61
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "deltaTime"    # F

    .prologue
    .line 65
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completed:Z

    if-nez v1, :cond_1

    .line 66
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    .line 67
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->timerSeconds:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completed:Z

    .line 69
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completeListener:Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->completeListener:Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;

    invoke-interface {v1}, Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;->onTimerComplete()V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->pieMesh:Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->timerSeconds:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/PieMeshElement;->setCompletionRate(F)V

    .line 75
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->timerSeconds:I

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->elapsedTime:F

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 76
    .local v0, "seconds":I
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->lastSecondsShown:I

    if-eq v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->timerLabel:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 78
    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/Timer;->lastSecondsShown:I

    .line 81
    .end local v0    # "seconds":I
    :cond_1
    return-void
.end method
