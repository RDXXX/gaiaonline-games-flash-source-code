.class public Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;
.source "Waves.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amplitude:F

.field private horizontal:Z

.field private vertical:Z

.field private waves:I


# direct methods
.method public static $(IIIFZZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;
    .locals 2
    .param p0, "gridSizeX"    # I
    .param p1, "gridSizeY"    # I
    .param p2, "waves"    # I
    .param p3, "amplitude"    # F
    .param p4, "horizontal"    # Z
    .param p5, "vertical"    # Z
    .param p6, "duration"    # F

    .prologue
    .line 24
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;

    .line 25
    .local v0, "action":Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;
    iput p0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->gridSizeX:I

    .line 26
    iput p1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->gridSizeY:I

    .line 27
    iput p2, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->waves:I

    .line 28
    iput p3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->amplitude:F

    .line 29
    iput-boolean p4, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->horizontal:Z

    .line 30
    iput-boolean p5, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->vertical:Z

    .line 31
    iput p6, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->duration:F

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p6

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->invDuration:F

    .line 33
    const/4 v1, 0x0

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->taken:F

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->done:Z

    .line 35
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves$1;

    .line 14
    const/4 v1, 0x4

    const/16 v2, 0x64

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves$1;-><init>(II)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 8

    .prologue
    .line 56
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->gridSizeX:I

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->gridSizeY:I

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->waves:I

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->amplitude:F

    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->horizontal:Z

    .line 57
    iget-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->vertical:Z

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->duration:F

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->$(IIIFZZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;

    move-result-object v7

    .line 58
    .local v7, "action":Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 61
    :cond_0
    return-object v7
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->finish()V

    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected getTransformation()Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;-><init>()V

    .line 41
    .local v0, "trans":Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->waves:I

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->waves:I

    .line 42
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->amplitude:F

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->amplitude:F

    .line 43
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->horizontal:Z

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->horizontal:Z

    .line 44
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;->vertical:Z

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DWaves;->vertical:Z

    .line 45
    return-object v0
.end method
