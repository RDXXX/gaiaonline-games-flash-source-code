.class public Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;
.super Ljava/lang/Object;
.source "AssetsCache.java"


# static fields
.field private static instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/assets/Asset;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private screenAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/assets/Asset;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->cache:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->screenAssets:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static clearTextures()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    return-void
.end method

.method public static disposeAssets(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V
    .locals 5
    .param p0, "screenElement"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;

    .prologue
    .line 110
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v3

    iget-object v3, v3, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->screenAssets:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    .local v1, "assetsList":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;"
    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .line 113
    .local v0, "a":Lcom/gaiaonline/monstergalaxy/assets/Asset;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v4

    iget-object v4, v4, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->cache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 114
    .local v2, "tr":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 116
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v4

    iget-object v4, v4, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->cache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static get(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 11
    .param p0, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v8

    iget-object v8, v8, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->cache:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 52
    .local v7, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v7, :cond_0

    .line 78
    .end local v7    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :goto_0
    return-object v7

    .line 56
    .restart local v7    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getAsset(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 57
    .local v6, "pm":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 58
    .local v4, "width":I
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .line 59
    .local v5, "height":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v8

    .line 60
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v9

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v10

    .line 59
    invoke-direct {v1, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 61
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 62
    invoke-virtual {v1, v6, v3, v3}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 64
    const/4 v2, 0x0

    .line 68
    .local v2, "x":I
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCropWidth()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCropWidth()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v4, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 70
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/assets/Asset;->getCropWidth()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 73
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 75
    .local v0, "newRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v3

    iget-object v3, v3, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->cache:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v7, v0

    .line 78
    goto :goto_0
.end method

.method public static get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p0, "screenElement"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
    .param p1, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    .line 41
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    move-result-object v1

    iget-object v0, v1, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->screenAssets:Ljava/util/Map;

    .line 42
    .local v0, "sa":Ljava/util/Map;, "Ljava/util/Map<Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Ljava/util/List<Lcom/gaiaonline/monstergalaxy/assets/Asset;>;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance()Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;-><init>()V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    .line 33
    :cond_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->instance:Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;

    return-object v0
.end method

.method public static newSolidRectangle(IILcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {p0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    .line 98
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 97
    invoke-direct {v6, v1, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 99
    .local v6, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 100
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    .line 102
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v6}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    move v3, v2

    move v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 103
    .local v0, "tr":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 105
    return-object v0
.end method
