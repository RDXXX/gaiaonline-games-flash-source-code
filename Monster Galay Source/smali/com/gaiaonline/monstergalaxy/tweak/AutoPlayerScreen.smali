.class public Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "AutoPlayerScreen.java"


# instance fields
.field autoPlayer:Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "islandIndex"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 19
    new-instance v0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;->autoPlayer:Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;

    .line 20
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;->autoPlayer:Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->setIslandToComplete(I)V

    .line 21
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v1, "startup.choosezodiacmoga.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 22
    return-void
.end method

.method public static getIslandNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getAllIslands()Ljava/util/List;

    move-result-object v2

    .line 26
    .local v2, "islands":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/map/Island;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 27
    .local v1, "islandNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 31
    return-object v1

    .line 29
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gaiaonline/monstergalaxy/model/map/Island;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 37
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    const/16 v1, 0x1c2

    const/16 v2, 0x1e

    const/16 v3, 0x64

    const-string v4, ""

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->addTextView(IIILjava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 42
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    .line 46
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;->autoPlayer:Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayer;->playNextNode()Lcom/gaiaonline/monstergalaxy/model/map/Node;

    move-result-object v0

    .line 47
    .local v0, "node":Lcom/gaiaonline/monstergalaxy/model/map/Node;
    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Completed node "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextViewText(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v1

    .line 53
    const-string v2, "Done"

    .line 52
    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->setTextViewText(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->WORLD:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    goto :goto_0
.end method
