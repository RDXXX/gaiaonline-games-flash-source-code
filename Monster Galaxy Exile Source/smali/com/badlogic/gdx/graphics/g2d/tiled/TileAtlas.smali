.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
.super Ljava/lang/Object;
.source "TileAtlas.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field protected regionsMap:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field protected final textures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->regionsMap:Lcom/badlogic/gdx/utils/IntMap;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->textures:Ljava/util/HashSet;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 10
    .param p1, "map"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .param p2, "inputDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v7, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v7}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->regionsMap:Lcom/badlogic/gdx/utils/IntMap;

    .line 36
    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->textures:Ljava/util/HashSet;

    .line 47
    iget-object v7, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    .line 48
    .local v5, "set":Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packfile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 49
    .local v3, "packfile":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 50
    .local v6, "textureAtlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->removePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "atlasRegions":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 53
    .local v4, "reg":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->regionsMap:Lcom/badlogic/gdx/utils/IntMap;

    iget v8, v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    iget v9, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 55
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "atlasRegions":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packfile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "reg":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v5    # "set":Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;
    .end local v6    # "textureAtlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    :cond_2
    return-void
.end method

.method private static getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "path"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 122
    .end local p0    # "path":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    return-object p0

    .line 110
    .restart local p0    # "path":Lcom/badlogic/gdx/files/FileHandle;
    :cond_0
    move-object v0, p0

    .line 112
    .local v0, "child":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\\/"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "token":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_1

    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    move-object p0, v0

    .line 122
    goto :goto_0
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static removePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 90
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 91
    .local v0, "index":I
    if-eq v0, v3, :cond_1

    .line 92
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "temp":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 98
    if-eq v0, v3, :cond_0

    .line 99
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 94
    .end local v1    # "temp":Ljava/lang/String;
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .restart local v1    # "temp":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 73
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_0

    .line 75
    .end local v1    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->textures:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 76
    return-void
.end method

.method public getRegion(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->regionsMap:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method
