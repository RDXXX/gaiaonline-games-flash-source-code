.class public Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "SplashScreen.java"


# instance fields
.field height:I

.field private splash:Lcom/badlogic/gdx/graphics/Texture;

.field private splashShown:Z

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 17
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 13
    iput-boolean v6, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splashShown:Z

    .line 14
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->height:I

    .line 15
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->width:I

    .line 19
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->height:I

    .line 20
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->width:I

    .line 21
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "data/splash.png"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splash:Lcom/badlogic/gdx/graphics/Texture;

    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splash:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 24
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    .line 25
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splash:Lcom/badlogic/gdx/graphics/Texture;

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->width:I

    int-to-float v4, v3

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->height:I

    int-to-float v5, v3

    const/16 v8, 0x3c0

    const/16 v9, 0x280

    move v3, v2

    move v7, v6

    move v10, v6

    move v11, v6

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 28
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    .line 30
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "acquisition"

    const-string v2, ""

    const-string v3, ""

    .line 32
    const-string v4, "splash_screen"

    const-string v5, ""

    const-string v6, ""

    .line 31
    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splash:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splash:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;->dispose()V

    .line 66
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public present(F)V
    .locals 12
    .param p1, "delta"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->disableBlending()V

    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 43
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splash:Lcom/badlogic/gdx/graphics/Texture;

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->width:I

    int-to-float v4, v3

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->height:I

    int-to-float v5, v3

    const/16 v8, 0x3c0

    const/16 v9, 0x280

    move v3, v2

    move v7, v6

    move v10, v6

    move v11, v6

    invoke-virtual/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    .line 44
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 45
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->batcher:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->enableBlending()V

    .line 47
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splashShown:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->initialize()V

    .line 49
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gameInitialized()V

    .line 51
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/splash/SplashScreen;->splashShown:Z

    .line 52
    return-void
.end method
