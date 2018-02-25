.class public Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;
.super Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;
.source "Shaky3D.java"


# static fields
.field private static final pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private range:I

.field private shakeZ:Z


# direct methods
.method public static $(IIIZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;
    .locals 2
    .param p0, "gridSizeX"    # I
    .param p1, "gridSizeY"    # I
    .param p2, "range"    # I
    .param p3, "shakeZ"    # Z
    .param p4, "duration"    # F

    .prologue
    .line 21
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->obtain()Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;

    .line 22
    .local v0, "action":Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;
    iput p0, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->gridSizeX:I

    .line 23
    iput p1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->gridSizeY:I

    .line 24
    iput p2, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->range:I

    .line 25
    iput-boolean p3, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->shakeZ:Z

    .line 26
    iput p4, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->duration:F

    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p4

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->invDuration:F

    .line 28
    const/4 v1, 0x0

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->taken:F

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->done:Z

    .line 30
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D$1;

    .line 12
    const/4 v1, 0x4

    const/16 v2, 0x64

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D$1;-><init>(II)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

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
    .locals 6

    .prologue
    .line 49
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->gridSizeX:I

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->gridSizeY:I

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->range:I

    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->shakeZ:Z

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->duration:F

    invoke-static {v1, v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->$(IIIZF)Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;

    move-result-object v0

    .line 50
    .local v0, "action":Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->interpolator:Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/Interpolator;->copy()Lcom/badlogic/gdx/scenes/scene2d/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->setInterpolator(Lcom/badlogic/gdx/scenes/scene2d/Interpolator;)Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;

    .line 53
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/GridAction3D;->finish()V

    .line 44
    sget-object v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->pool:Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;->free(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method protected getTransformation()Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3D;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;-><init>()V

    .line 36
    .local v0, "trans":Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->range:I

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->randrange:I

    .line 37
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/anim/Shaky3D;->shakeZ:Z

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Grid3DShaky;->shakeZ:Z

    .line 38
    return-object v0
.end method
