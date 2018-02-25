.class public Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;
.super Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
.source "DownloadableElement.java"


# instance fields
.field private asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

.field private downloader:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

.field private isDownloaded:Z


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 17
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 18
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->size:Lcom/badlogic/gdx/math/Vector2;

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 19
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->isDownloaded:Z

    .line 21
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->downloader:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->downloader:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->downloadNow(Lcom/gaiaonline/monstergalaxy/assets/Asset;)V

    .line 23
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->disposeAssets(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->isDownloaded:Z

    .line 43
    return-void
.end method

.method protected present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->isDownloaded:Z

    if-eqz v0, :cond_1

    .line 29
    invoke-super {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->present(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->downloader:Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->isDownloadFinished(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->asset:Lcom/gaiaonline/monstergalaxy/assets/Asset;

    invoke-static {p0, v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/screen/DownloadableElement;->isDownloaded:Z

    goto :goto_0
.end method
