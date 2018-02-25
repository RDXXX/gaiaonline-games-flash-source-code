.class public Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;
.super Lcom/badlogic/gdx/InputAdapter;
.source "ScrollInputProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;
    }
.end annotation


# static fields
.field private static final DECCEL:F

.field private static final MAX_VELOCITY:F


# instance fields
.field private final deccel:Lcom/badlogic/gdx/math/Vector2;

.field private delta:Lcom/badlogic/gdx/math/Vector2;

.field private directionX:I

.field private directionY:I

.field private gestureOrigin:Lcom/badlogic/gdx/math/Vector2;

.field private isDragging:Z

.field private maxVelocity:Lcom/badlogic/gdx/math/Vector2;

.field private final tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

.field private velocity:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const/high16 v0, 0x43480000    # 200.0f

    .line 28
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    .line 27
    mul-float/2addr v0, v1

    sput v0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->MAX_VELOCITY:F

    .line 31
    const/high16 v0, 0x457a0000    # 4000.0f

    .line 32
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v1

    .line 31
    mul-float/2addr v0, v1

    sput v0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->DECCEL:F

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 35
    new-instance v0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;-><init>(Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->isDragging:Z

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v3, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->gestureOrigin:Lcom/badlogic/gdx/math/Vector2;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget v1, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->MAX_VELOCITY:F

    sget v2, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->MAX_VELOCITY:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->maxVelocity:Lcom/badlogic/gdx/math/Vector2;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget v1, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->DECCEL:F

    sget v2, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->DECCEL:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->deccel:Lcom/badlogic/gdx/math/Vector2;

    .line 17
    return-void
.end method


# virtual methods
.method public getDeltaX()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getDeltaY()F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public setMaxVelocity(F)V
    .locals 1
    .param p1, "max"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->maxVelocity:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 108
    return-void
.end method

.method public touchDown(IIII)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 67
    if-nez p3, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->isDragging:Z

    .line 69
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->gestureOrigin:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->start(IIJ)V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputAdapter;->touchDown(IIII)Z

    move-result v0

    return v0
.end method

.method public touchDragged(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 78
    if-nez p3, :cond_0

    .line 79
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 80
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->lastY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->update(IIJ)V

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/InputAdapter;->touchDragged(III)Z

    move-result v0

    return v0
.end method

.method public touchUp(IIII)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 89
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->gestureOrigin:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->isDragging:Z

    .line 91
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v0

    .line 93
    .local v0, "time":J
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->update(IIJ)V

    .line 94
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getVelocityX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 95
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->maxVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 96
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getVelocityY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 97
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->maxVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 98
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getVelocityX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->directionX:I

    .line 99
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->tracker:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor$VelocityTracker;->getVelocityY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->directionY:I

    .line 103
    .end local v0    # "time":J
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/InputAdapter;->touchUp(IIII)Z

    move-result v2

    return v2
.end method

.method public update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->isDragging:Z

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->deccel:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 113
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->deccel:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iput v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iput v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->directionX:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 124
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->delta:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->velocity:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->directionY:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 126
    :cond_2
    return-void
.end method
