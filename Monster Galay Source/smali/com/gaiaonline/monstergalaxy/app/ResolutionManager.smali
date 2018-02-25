.class public Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;
.super Ljava/lang/Object;
.source "ResolutionManager.java"


# static fields
.field public static final BASE_SCREEN_HEIGHT:F = 320.0f

.field public static final BASE_SCREEN_WIDTH:F = 480.0f

.field public static final RESOLUTION_SUFFIX:Ljava/lang/String;

.field private static final arx:F

.field private static ary:F

.field private static imgScale:F

.field private static screenHeight:F

.field private static final screenWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenWidth:F

    .line 22
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 30
    const-string v0, ".854"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    .line 35
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenHeight:F

    .line 36
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getDeviceModel()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->KINDLE_FIRE:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    if-ne v0, v1, :cond_0

    .line 37
    const/high16 v0, 0x44110000    # 580.0f

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenHeight:F

    .line 52
    :cond_0
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenWidth:F

    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr v0, v1

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->arx:F

    .line 53
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenHeight:F

    const/high16 v1, 0x43a00000    # 320.0f

    div-float/2addr v0, v1

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->ary:F

    .line 56
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->ary:F

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    .line 10
    return-void

    .line 24
    :sswitch_0
    const-string v0, ""

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    goto :goto_0

    .line 27
    :sswitch_1
    const-string v0, ".800"

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->RESOLUTION_SUFFIX:Ljava/lang/String;

    goto :goto_0

    .line 22
    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoords(FF)[F
    .locals 3
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 86
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 87
    .local v0, "coords":[F
    const/4 v1, 0x0

    sget v2, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->arx:F

    mul-float/2addr v2, p0

    aput v2, v0, v1

    .line 88
    const/4 v1, 0x1

    sget v2, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->ary:F

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 89
    return-object v0
.end method

.method public static getHorizontalAR()F
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->arx:F

    return v0
.end method

.method public static getScaleFactor()F
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    return v0
.end method

.method public static getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "image":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .end local v0    # "image":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 108
    .restart local v0    # "image":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 109
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .end local v0    # "image":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;)V

    .restart local v0    # "image":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    goto :goto_0
.end method

.method public static getScreenHeight()F
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenHeight:F

    return v0
.end method

.method public static getScreenWidth()F
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenWidth:F

    return v0
.end method

.method public static getVerticalAR()F
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->ary:F

    return v0
.end method

.method public static overrideHeightForKindle(I)V
    .locals 2
    .param p0, "height"    # I

    .prologue
    .line 71
    int-to-float v0, p0

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenHeight:F

    .line 72
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->screenHeight:F

    const/high16 v1, 0x43a00000    # 320.0f

    div-float/2addr v0, v1

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->ary:F

    .line 73
    sget v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->ary:F

    sput v0, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    .line 74
    return-void
.end method

.method public static scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p0, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 119
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    sget v1, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sget v1, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->imgScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 121
    return-void
.end method
