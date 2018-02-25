.class public Lcom/badlogic/gdx/graphics/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Texture$TextureWrap;,
        Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    }
.end annotation


# static fields
.field private static assetManager:Lcom/badlogic/gdx/assets/AssetManager;

.field private static final buffer:Ljava/nio/IntBuffer;

.field private static enforcePotImages:Z

.field private static final managedTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;>;"
        }
    .end annotation
.end field

.field private static useHWMipMap:Z


# instance fields
.field data:Lcom/badlogic/gdx/graphics/TextureData;

.field glHandle:I

.field magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    sput-boolean v1, Lcom/badlogic/gdx/graphics/Texture;->enforcePotImages:Z

    .line 70
    sput-boolean v1, Lcom/badlogic/gdx/graphics/Texture;->useHWMipMap:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    .line 108
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .prologue
    .line 150
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"    # Z

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 112
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 113
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 130
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".etc1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/glutils/ETC1TextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->create(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->create(Lcom/badlogic/gdx/graphics/TextureData;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "useMipMaps"    # Z

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 3
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 2
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "useMipMaps"    # Z

    .prologue
    .line 146
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 3
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "useMipMaps"    # Z

    .prologue
    .line 142
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 111
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 112
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 113
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 154
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;->create(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "internalPath"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 119
    return-void
.end method

.method private static addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 336
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 337
    .local v0, "managedTexureList":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Texture;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "managedTexureList":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Texture;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .restart local v0    # "managedTexureList":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Texture;>;"
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public static clearAllTextures(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 344
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method private create(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 1
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 158
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 159
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 160
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/Texture;->addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static createGLHandle()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 167
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Managed textures/app: { "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 404
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 407
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static invalidateAllTextures(Lcom/badlogic/gdx/Application;)V
    .locals 11
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    const/4 v10, 0x0

    .line 349
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    invoke-interface {v8, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 350
    .local v3, "managedTexureList":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Texture;>;"
    if-nez v3, :cond_1

    .line 390
    :cond_0
    return-void

    .line 352
    :cond_1
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    if-nez v8, :cond_2

    .line 353
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 354
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Texture;

    .line 355
    .local v6, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    .end local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :cond_2
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 364
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v7, "textures":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Texture;>;"
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 366
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Texture;

    .line 367
    .restart local v6    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 369
    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/Texture;->reload()V

    .line 387
    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 371
    :cond_3
    new-instance v4, Lcom/badlogic/gdx/assets/loaders/TextureParameter;

    invoke-direct {v4}, Lcom/badlogic/gdx/assets/loaders/TextureParameter;-><init>()V

    .line 372
    .local v4, "params":Lcom/badlogic/gdx/assets/loaders/TextureParameter;
    iput v10, v6, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 373
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v8

    iput-object v8, v4, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->textureData:Lcom/badlogic/gdx/graphics/TextureData;

    .line 374
    iput-object v6, v4, Lcom/badlogic/gdx/assets/loaders/TextureParameter;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 375
    const/4 v5, 0x0

    .line 376
    .local v5, "refCount":I
    instance-of v8, v6, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v8, :cond_4

    move-object v8, v6

    .line 377
    check-cast v8, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    invoke-interface {v8}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->getRefCount()I

    move-result v5

    move-object v8, v6

    .line 378
    check-cast v8, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    invoke-interface {v8, v10}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->setRefCount(I)V

    .line 380
    :cond_4
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/assets/AssetManager;->remove(Ljava/lang/String;)V

    .line 381
    instance-of v8, v6, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v8, :cond_5

    move-object v8, v6

    .line 382
    check-cast v8, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    invoke-interface {v8, v5}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->setRefCount(I)V

    .line 384
    :cond_5
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    .line 385
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v9, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8, v0, v9, v4}, Lcom/badlogic/gdx/assets/AssetManager;->preload(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    goto :goto_2
.end method

.method private reload()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload unmanaged Texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/Texture;->createGLHandle()I

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 227
    return-void
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0
    .param p0, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;

    .prologue
    .line 397
    sput-object p0, Lcom/badlogic/gdx/graphics/Texture;->assetManager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 398
    return-void
.end method

.method public static setEnforcePotImages(Z)V
    .locals 0
    .param p0, "enforcePotImages"    # Z

    .prologue
    .line 332
    sput-boolean p0, Lcom/badlogic/gdx/graphics/Texture;->enforcePotImages:Z

    .line 333
    return-void
.end method

.method private uploadImageData(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 13
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 194
    sget-boolean v1, Lcom/badlogic/gdx/graphics/Texture;->enforcePotImages:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "texture width and height must be powers of two"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_1
    const/4 v12, 0x0

    .line 199
    .local v12, "disposePixmap":Z
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 200
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 201
    .local v0, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v11

    .line 202
    .local v11, "blend":Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 203
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 204
    invoke-static {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 205
    move-object p1, v0

    .line 206
    const/4 v12, 0x1

    .line 209
    .end local v0    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v11    # "blend":Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    :cond_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xde1

    iget v3, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 210
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xcf5

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glPixelStorei(II)V

    .line 211
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->useMipMaps()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    invoke-static {p1, v1, v2, v12}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;IIZ)V

    .line 220
    :cond_3
    :goto_0
    return-void

    .line 214
    :cond_4
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v9

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 216
    if-eqz v12, :cond_3

    .line 217
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xde1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 233
    return-void
.end method

.method public bind(I)V
    .locals 3
    .param p1, "unit"    # I

    .prologue
    .line 239
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const v1, 0x84c0

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glActiveTexture(I)V

    .line 240
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xde1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 241
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 322
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 324
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture;->buffer:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture;->managedTextures:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 10
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/16 v1, 0xde1

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "can\'t draw to a managed texture"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v2, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 253
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 255
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method

.method public getTextureData()Lcom/badlogic/gdx/graphics/TextureData;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    return-object v0
.end method

.method public getTextureObjectHandle()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    return v0
.end method

.method public getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 4
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureData;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 172
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "New data must have the same managed status as the old data"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->data:Lcom/badlogic/gdx/graphics/TextureData;

    .line 175
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 177
    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v1, v2, :cond_3

    .line 178
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 179
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture;->uploadImageData(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 180
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 182
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 185
    .end local v0    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_3
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Compressed:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v1, v2, :cond_4

    .line 186
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xde1

    iget v3, p0, Lcom/badlogic/gdx/graphics/Texture;->glHandle:I

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glBindTexture(II)V

    .line 187
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCompressedData()V

    .line 188
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 189
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 191
    :cond_4
    return-void
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 4
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .prologue
    const/16 v3, 0xde1

    .line 309
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 310
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Texture;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 311
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 312
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2801

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 313
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2800

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 314
    return-void
.end method

.method public setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 4
    .param p1, "u"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p2, "v"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .prologue
    const/16 v3, 0xde1

    .line 301
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 302
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Texture;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 303
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 304
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2802

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 305
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0x2803

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glTexParameterf(IIF)V

    .line 306
    return-void
.end method
