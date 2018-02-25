.class public Lcom/badlogic/gdx/assets/loaders/TextureLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "TextureLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/Texture;",
        "Lcom/badlogic/gdx/assets/loaders/TextureParameter;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lcom/badlogic/gdx/graphics/TextureData;

.field texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Lcom/badlogic/gdx/assets/loaders/TextureParameter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureParameter;)V
    .locals 5
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/TextureParameter;

    .prologue
    .line 40
    if-eqz p3, :cond_0

    if-eqz p3, :cond_3

    iget-object v4, p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    if-nez v4, :cond_3

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    .local v3, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v0, 0x0

    .line 43
    .local v0, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    const/4 v1, 0x0

    .line 44
    .local v1, "genMipMaps":Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 46
    if-eqz p3, :cond_1

    .line 47
    iget-object v0, p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 48
    iget-boolean v1, p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->genMipMaps:Z

    .line 49
    iget-object v4, p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 52
    :cond_1
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 53
    .local v2, "handle":Lcom/badlogic/gdx/files/FileHandle;
    const-string v4, ".etc1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    .end local v3    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 55
    .restart local v3    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 63
    .end local v0    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v1    # "genMipMaps":Z
    .end local v2    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :goto_0
    return-void

    .line 57
    .restart local v0    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .restart local v1    # "genMipMaps":Z
    .restart local v2    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v3    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_2
    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;

    invoke-direct {v4, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    goto :goto_0

    .line 60
    .end local v0    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v1    # "genMipMaps":Z
    .end local v2    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_3
    iget-object v4, p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 61
    iget-object v4, p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v4, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/TextureParameter;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/TextureParameter;)V

    return-void
.end method

.method public loadSync()Lcom/badlogic/gdx/graphics/Texture;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;

    iget-object v1, p0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$ReferenceCountedTexture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    goto :goto_0
.end method

.method public bridge synthetic loadSync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;->loadSync()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method
