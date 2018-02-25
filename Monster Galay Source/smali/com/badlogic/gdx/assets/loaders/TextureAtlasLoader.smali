.class public Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "TextureAtlasLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;",
        "Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 47
    .local v0, "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 49
    .local v4, "imgDir":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz p2, :cond_0

    .line 50
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    iget-boolean v8, p2, Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;->flip:Z

    invoke-direct {v7, v0, v4, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v7, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    .line 54
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 55
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    iget-object v7, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 56
    .local v5, "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 57
    .local v2, "handle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v6, Lcom/badlogic/gdx/assets/loaders/TextureParameter;

    invoke-direct {v6}, Lcom/badlogic/gdx/assets/loaders/TextureParameter;-><init>()V

    .line 58
    .local v6, "params":Lcom/badlogic/gdx/assets/loaders/TextureParameter;
    iget-object v7, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 59
    iget-boolean v7, v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->useMipMaps:Z

    iput-boolean v7, v6, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->genMipMaps:Z

    .line 60
    new-instance v7, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\\\"

    const-string v10, "/"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v7, v8, v9, v6}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 52
    .end local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    .end local v2    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v6    # "params":Lcom/badlogic/gdx/assets/loaders/TextureParameter;
    :cond_0
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v4, v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v7, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    goto :goto_0

    .line 62
    .restart local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/assets/AssetDescriptor;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 6
    .param p1, "assetManager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;

    .prologue
    .line 36
    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 37
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->textureFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\\\"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, v3, v4}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    .line 38
    .local v2, "texture":Lcom/badlogic/gdx/graphics/Texture;
    iput-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 41
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v2    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->data:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V

    return-object v3
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureAtlasParameter;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v0

    return-object v0
.end method
