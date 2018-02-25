.class public Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "LoadingScreen.java"


# instance fields
.field private loadingTexture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 19
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 20
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "data/loading.png"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->loadingTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->loadingTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "Loading..."

    const/high16 v3, -0x3d600000    # -80.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 27
    const-string v0, "loading_seed"

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->starSeed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v9

    .line 28
    .local v9, "seed":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v1, v10

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 29
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v1, v10

    sub-float/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 30
    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x3fd9999a    # 1.7f

    invoke-static {v2, v2, v0, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;->$(FFFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/JumpBy;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 31
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 32
    invoke-direct {v0, v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 31
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 33
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 34
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->loadingTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/LoadingScreen;->loadingTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 56
    :cond_0
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "delta"    # F

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 41
    return-void
.end method
