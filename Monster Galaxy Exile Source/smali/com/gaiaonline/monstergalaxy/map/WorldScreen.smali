.class public Lcom/gaiaonline/monstergalaxy/map/WorldScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "WorldScreen.java"


# static fields
.field private static final ISLAND_MAX_TOUCH_DISTANCE:F = 20.0f


# instance fields
.field private backgroundRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private hasShownAds:Z

.field private mapWidth:I

.field private maxScrollOffset:I

.field private minScrollOffset:I

.field private playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

.field private scrollDeltaX:F

.field private scrollEnabled:Z

.field private scrollXOffset:F

.field private scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

.field private scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private unlockedIslandAnimationDelay:F

.field private unlockedIslandButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 13
    .param p1, "unlockedIslandId"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 46
    new-instance v5, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-direct {v5}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;-><init>()V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    .line 48
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    .line 53
    const/4 v5, 0x0

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollDeltaX:F

    .line 65
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->hasShownAds:Z

    .line 72
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollEnabled:Z

    .line 73
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 74
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 75
    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 74
    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 77
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v5

    invoke-interface {v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 81
    :cond_0
    if-lez p1, :cond_1

    .line 82
    const-string v5, "ui_unlock_island"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setStretchable(Z)V

    .line 86
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 87
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 88
    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 87
    invoke-virtual {v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 90
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 92
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v12

    .line 94
    .local v12, "sk":Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;
    const/16 v11, 0x172

    .line 95
    .local v11, "lastTileWidth":I
    const/4 v0, 0x0

    .line 96
    .local v0, "bg4":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v12, v5, :cond_2

    .line 97
    const/16 v11, 0x400

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .end local v0    # "bg4":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 99
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "data/world.map.no.islands.4.png"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    const/16 v4, 0x90

    const/16 v5, 0x140

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 103
    .restart local v0    # "bg4":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    .line 104
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "data/world.map.no.islands.1.png"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 105
    const/16 v5, 0x400

    const/16 v6, 0x140

    .line 103
    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 106
    .local v1, "bg1":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    .line 107
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "data/world.map.no.islands.2.png"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 108
    const/16 v6, 0x400

    const/16 v7, 0x140

    .line 106
    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 109
    .local v2, "bg2":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    .line 110
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "data/world.map.no.islands.3.png"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 111
    const/16 v8, 0x140

    move v7, v11

    .line 109
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 113
    .local v3, "bg3":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->backgroundRegions:Ljava/util/ArrayList;

    .line 114
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->backgroundRegions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->backgroundRegions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->backgroundRegions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->backgroundRegions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    if-nez v0, :cond_5

    .line 120
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-direct {p0, v5}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->addMapBg([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 125
    :goto_0
    sget-object v5, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v12, v5, :cond_4

    .line 128
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-interface {v6, v7}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getIsland(I)Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPreviousIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v6

    .line 128
    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 129
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isOverrideNodeAndIslandLocks()Z

    move-result v5

    if-nez v5, :cond_4

    .line 131
    :cond_3
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 132
    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 133
    const-string v7, "data/world.home.locked.png"

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 132
    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 134
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x400

    const/16 v9, 0x140

    .line 131
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 135
    .local v4, "homeIslandSpikesCover":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v10, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const/4 v5, 0x1

    invoke-direct {v10, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 136
    .local v10, "element":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v10, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 137
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v6, 0x451b5000    # 2485.0f

    const/4 v7, 0x0

    invoke-virtual {v10, v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 138
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v5, v10}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 142
    .end local v4    # "homeIslandSpikesCover":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v10    # "element":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_4
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->mapWidth:I

    int-to-float v6, v6

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 143
    sget v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->SCALE:F

    div-float/2addr v7, v8

    .line 142
    invoke-virtual {v5, v6, v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 144
    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 145
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->mapWidth:I

    int-to-float v6, v6

    .line 146
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v7

    div-float/2addr v6, v7

    .line 147
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 144
    iput v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->minScrollOffset:I

    .line 149
    const/4 v5, 0x0

    iput v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->maxScrollOffset:I

    .line 152
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    rsub-int/lit8 v5, v5, 0x0

    .line 153
    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 152
    invoke-direct {p0, v5}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->setScrollOffset(F)V

    .line 155
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->addIslands(I)V

    .line 157
    new-instance v5, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-direct {v5}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;-><init>()V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    .line 158
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 159
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 160
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->playerHud:Lcom/gaiaonline/monstergalaxy/map/PlayerHUD;

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 162
    new-instance v5, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-direct {v5, v6}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    iput-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    .line 163
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    new-instance v6, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;

    invoke-direct {v6, p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)V

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->setListener(Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;)V

    .line 175
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 177
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 178
    return-void

    .line 122
    :cond_5
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-direct {p0, v5}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->addMapBg([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollEnabled:Z

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollDeltaX:F

    return v0
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)Lcom/gaiaonline/monstergalaxy/map/WorldMenu;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->islandSelected(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    return-void
.end method

.method private addIslands(I)V
    .locals 20
    .param p1, "unlockedIslandId"    # I

    .prologue
    .line 221
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v15

    invoke-interface {v15}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 320
    return-void

    .line 221
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .line 222
    .local v7, "island":Lcom/gaiaonline/monstergalaxy/model/map/Island;
    const/4 v9, 0x0

    .line 223
    .local v9, "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    const/4 v3, 0x0

    .line 224
    .local v3, "canGoToIsland":Z
    const/4 v4, 0x0

    .line 225
    .local v4, "canSeeIsland":Z
    const/4 v8, 0x0

    .line 227
    .local v8, "islandElement":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v15, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v3

    .line 228
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v15

    const/16 v17, 0x1c

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 229
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v15

    sget-object v17, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_5

    const/4 v6, 0x1

    .line 230
    .local v6, "isHomeIsland":Z
    :goto_1
    if-eqz v6, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 232
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPreviousIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isIslandCompleted(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 233
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 234
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isOverrideNodeAndIslandLocks()Z

    move-result v15

    if-nez v15, :cond_6

    :cond_2
    const/4 v4, 0x0

    .line 236
    :goto_2
    if-eqz v4, :cond_0

    .line 240
    new-instance v10, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v9    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    .local v10, "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    if-eqz v3, :cond_7

    const/4 v15, 0x0

    :goto_3
    :try_start_1
    invoke-virtual {v7, v15}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getIslandAssetName(Z)Ljava/lang/String;

    move-result-object v15

    .line 263
    invoke-static {v15}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    .line 266
    .local v11, "islandTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .end local v8    # "islandElement":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v8, v15, v0, v11, v11}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    .restart local v8    # "islandElement":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    if-eqz v3, :cond_3

    .line 277
    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SUGESTED_NODE_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v15}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSelectedColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 279
    :cond_3
    invoke-virtual {v8, v10}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setTouchReleasedListener(Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;)V

    .line 280
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v15}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 281
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 282
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v17, v0

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v18, v0

    .line 281
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v15, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v15, v8}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 286
    if-eqz v3, :cond_4

    .line 288
    new-instance v13, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v13}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 289
    .local v13, "starsStatus":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 291
    new-instance v12, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 292
    const-string v15, "world.star.bg"

    invoke-static {v15}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v15

    .line 291
    invoke-direct {v12, v15}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 294
    .local v12, "starsBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    new-instance v14, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 295
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 296
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMaxNumberOfStars()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 295
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 296
    const/high16 v17, 0x3f000000    # 0.5f

    .line 297
    sget-object v18, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x1

    .line 294
    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v15, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 299
    .local v14, "starsText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v12, v15}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 300
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v17, -0x3f400000    # -6.0f

    const/high16 v18, -0x3fc00000    # -3.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v15, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 302
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v14, v15}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 303
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v15, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 305
    invoke-virtual {v13, v12}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 306
    invoke-virtual {v13, v14}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 308
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v13, v15}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 310
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 311
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    move/from16 v17, v0

    const/high16 v18, 0x41000000    # 8.0f

    add-float v17, v17, v18

    .line 312
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v18, v0

    const/high16 v19, 0x41e00000    # 28.0f

    sub-float v18, v18, v19

    .line 310
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v15, v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v15, v13}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 315
    .end local v12    # "starsBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v13    # "starsStatus":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    .end local v14    # "starsText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :cond_4
    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_0

    .line 316
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    goto/16 :goto_0

    .line 229
    .end local v6    # "isHomeIsland":Z
    .end local v10    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    .end local v11    # "islandTexture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v9    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 234
    .restart local v6    # "isHomeIsland":Z
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 264
    .end local v9    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    .restart local v10    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 268
    .end local v6    # "isHomeIsland":Z
    .end local v10    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    .restart local v9    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    :catch_0
    move-exception v5

    .line 270
    .end local v8    # "islandElement":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v17, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v18, "FAIL!"

    if-eqz v3, :cond_8

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v7, v15}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getIslandAssetName(Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x1

    goto :goto_5

    .line 268
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    .restart local v6    # "isHomeIsland":Z
    .restart local v10    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    :catch_1
    move-exception v5

    move-object v9, v10

    .end local v10    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    .restart local v9    # "islandListener":Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;
    goto :goto_4
.end method

.method private varargs addMapBg([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 7
    .param p1, "regions"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 210
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 217
    return-void

    .line 210
    :cond_0
    aget-object v1, p1, v2

    .line 211
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 212
    .local v0, "element":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 213
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->mapWidth:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 214
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 215
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->mapWidth:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->mapWidth:I

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createAlertDialog(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollEnabled:Z

    .line 492
    new-instance v1, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/map/WorldScreen;)V

    .line 502
    .local v1, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v3, "Keep Playing"

    .line 503
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v6, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 504
    return-void
.end method

.method private enterIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 1
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 349
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 360
    return-void
.end method

.method private islandSelected(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V
    .locals 3
    .param p1, "island"    # Lcom/gaiaonline/monstergalaxy/model/map/Island;

    .prologue
    .line 324
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isOverrideNodeAndIslandLocks()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v1, p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->canGoToIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->enterIsland(Lcom/gaiaonline/monstergalaxy/model/map/Island;)V

    .line 335
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollEnabled:Z

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Careful, tamer - you\'re not ready for this island! You\'ll need to beat the last island and tame at least "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNumberOfRequiredMogasToUnlock()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string v2, " Mogas.\n\nRight now you have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfCaughtMogaTypes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Mogas."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->createAlertDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playMusic()V
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPastScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eq v0, v1, :cond_0

    .line 480
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getPastScreen()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldStingAudio:Ljava/lang/String;

    .line 483
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    .line 482
    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reloadTextures()V
    .locals 7

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, "regionNum":I
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->backgroundRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    return-void

    .line 183
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 184
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    add-int/lit8 v1, v1, 0x1

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 188
    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data/world.map.no.islands."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 188
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0
.end method

.method private setScrollOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 364
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->maxScrollOffset:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 367
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->minScrollOffset:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 369
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollXOffset:F

    .line 371
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollingGroup:Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollXOffset:F

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPositionX(F)V

    .line 372
    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->hideDialog()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->showQuitDialog()V

    goto :goto_0
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->playMusic()V

    .line 461
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    .line 462
    return-void
.end method

.method public onMenuKeyPressed()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->worldMenu:Lcom/gaiaonline/monstergalaxy/map/WorldMenu;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->toggleMenu()V

    .line 198
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->reloadTextures()V

    .line 468
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->resume()V

    .line 470
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->show()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->isMiniGameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;ZZ)V

    .line 476
    :cond_1
    return-void
.end method

.method public present(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .prologue
    .line 420
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 422
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 424
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 426
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 428
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->effect:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1, p1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 429
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->drawEffects(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 433
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->dialog:Lcom/gaiaonline/monstergalaxy/screen/Dialog;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    if-eqz v0, :cond_3

    .line 443
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandAnimationDelay:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 445
    sget-object v1, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->ISLAND_UNLOCKED_PARTICLES:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 444
    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->playEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 446
    const-string v0, "ui_unlock_island"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 456
    :cond_3
    :goto_0
    return-void

    .line 451
    :cond_4
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandAnimationDelay:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->unlockedIslandAnimationDelay:F

    goto :goto_0
.end method

.method public update(F)V
    .locals 5
    .param p1, "deltaTime"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 376
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 378
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->hasShownAds:Z

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->getFrameNumberSinceResume()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 381
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->isAfterBattleAdPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->setAfterBattleAdPending(Z)V

    .line 387
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->AFTER_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-virtual {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V

    .line 403
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollEnabled:Z

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scroller:Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/graphics/util/ScrollInputProcessor;->getDeltaX()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollDeltaX:F

    .line 406
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollDeltaX:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 407
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollXOffset:F

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollDeltaX:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->setScrollOffset(F)V

    .line 410
    :cond_1
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollXOffset:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 411
    iput v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->scrollDeltaX:F

    .line 416
    :cond_2
    return-void

    .line 393
    :cond_3
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->shouldShowAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 396
    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->setAfterBattleAdPending(Z)V

    .line 397
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;

    move-result-object v0

    .line 398
    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-virtual {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/service/AdsService;->showInterstitial(Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;Ljava/lang/Runnable;)V

    .line 399
    iput-boolean v3, p0, Lcom/gaiaonline/monstergalaxy/map/WorldScreen;->hasShownAds:Z

    goto :goto_0
.end method
