.class public Lcom/badlogic/gdx/assets/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field final assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final assets:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

.field loaded:I

.field final loaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;",
            ">;"
        }
    .end annotation
.end field

.field log:Lcom/badlogic/gdx/utils/Logger;

.field final preloadQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field tasks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/badlogic/gdx/assets/AssetLoadingTask;",
            ">;"
        }
    .end annotation
.end field

.field final threadPool:Ljava/util/concurrent/ExecutorService;

.field toLoad:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    .line 55
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 56
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 58
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-class v1, Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Logger;->setEnabled(Z)V

    .line 63
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;

    new-instance v2, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 64
    const-class v0, Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/MusicLoader;

    new-instance v2, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 65
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;

    new-instance v2, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 66
    const-class v0, Lcom/badlogic/gdx/audio/Sound;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/SoundLoader;

    new-instance v2, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/assets/loaders/SoundLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 67
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;

    new-instance v2, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 68
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v1, Lcom/badlogic/gdx/assets/loaders/TextureLoader;

    new-instance v2, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v2}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 69
    const/4 v0, 0x1

    new-instance v1, Lcom/badlogic/gdx/assets/AssetManager$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/assets/AssetManager$1;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 77
    return-void
.end method

.method private addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 4
    .param p1, "assetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 261
    .local v0, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No loader for type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    new-instance v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private handleTaskError(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 321
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 322
    .local v3, "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    iget-object v0, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 325
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-boolean v4, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-eqz v4, :cond_0

    .line 326
    iget-object v4, v3, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 327
    .local v1, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v4, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/assets/AssetManager;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v1    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 335
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    if-eqz v4, :cond_1

    .line 336
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v6, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v4, v5, v6, p1}, Lcom/badlogic/gdx/assets/AssetErrorListener;->error(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 341
    return-void

    .line 338
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v4, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private incrementRefCountedDependencies(Ljava/lang/String;)V
    .locals 8
    .param p1, "parent"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 300
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 315
    :cond_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "dependency":Ljava/lang/String;
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 304
    .local v4, "type":Ljava/lang/Class;
    if-nez v4, :cond_2

    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asset \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' not loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 306
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, "asset":Ljava/lang/Object;
    instance-of v5, v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v5, :cond_3

    .line 308
    check-cast v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    .end local v0    # "asset":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->incRefCount()V

    goto :goto_0

    .line 312
    .restart local v0    # "asset":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private nextTask()V
    .locals 5

    .prologue
    .line 246
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 248
    .local v1, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 250
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "asset":Ljava/lang/Object;
    instance-of v3, v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    .end local v0    # "asset":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->incRefCount()V

    .line 255
    .end local v2    # "type":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    goto :goto_0
.end method

.method private updateTask()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 268
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 270
    .local v0, "task":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->update()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 276
    .local v1, "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 277
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .end local v1    # "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 278
    .restart local v1    # "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->getAsset()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 290
    iget-boolean v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->remove(Ljava/lang/String;)V

    .line 294
    .end local v1    # "typeToAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->updateTask()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    :cond_1
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 394
    .local v1, "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, "asset":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 384
    .end local v0    # "asset":Ljava/lang/String;
    .end local v1    # "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 388
    :catch_0
    move-exception v3

    .line 389
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->handleTaskError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 398
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v1    # "assets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 399
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 400
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 401
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 402
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 403
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized containsAsset(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "asset":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 149
    .local v3, "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, "otherAsset":Ljava/lang/Object;
    if-eq v2, p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const/4 v4, 0x1

    .line 153
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "otherAsset":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 148
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized dispose()V
    .locals 5

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->clear()V

    .line 374
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t shutdown loading thread"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 373
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 84
    .local v1, "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v1    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 85
    .restart local v1    # "assetsByType":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "asset":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not loaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "asset":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 160
    .local v0, "assetType":Ljava/lang/Class;
    iget-object v6, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 161
    .local v5, "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 163
    .local v4, "otherAsset":Ljava/lang/Object;
    if-eq v4, p1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    .end local v0    # "assetType":Ljava/lang/Class;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "otherAsset":Ljava/lang/Object;
    .end local v5    # "typedAssets":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getDiagonistics()Ljava/lang/String;
    .locals 9

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 414
    .local v1, "buffer":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 415
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 419
    .local v7, "type":Ljava/lang/Class;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 420
    .local v0, "asset":Ljava/lang/Object;
    iget-object v8, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 422
    .local v3, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    instance-of v8, v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v8, :cond_0

    .line 425
    const-string v8, ", refs: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    check-cast v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    .end local v0    # "asset":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->getRefCount()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 429
    :cond_0
    if-eqz v3, :cond_2

    .line 430
    const-string v8, ", deps: ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 432
    .local v2, "dep":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 413
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "dep":Ljava/lang/String;
    .end local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 435
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "type":Ljava/lang/Class;
    :cond_1
    :try_start_1
    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 439
    .end local v3    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Class;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    monitor-exit p0

    return-object v8
.end method

.method public declared-synchronized getLoadedAssets()I
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lcom/badlogic/gdx/utils/Logger;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    return-object v0
.end method

.method public declared-synchronized getProgress()F
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedAssets()I
    .locals 2

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 6
    .param p1, "parentAssetFilename"    # Ljava/lang/String;
    .param p2, "dependendAssetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 222
    .local v1, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    .end local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 224
    .restart local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 229
    iget-object v3, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 231
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v4, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "asset":Ljava/lang/Object;
    instance-of v3, v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    .end local v0    # "asset":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->incRefCount()V

    .line 239
    .end local v2    # "type":Ljava/lang/Class;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Injected dependency \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for asset \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 236
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    .end local v1    # "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preload(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->preload(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized preload(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameter":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 188
    .local v1, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    if-nez v1, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No loader for type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v1    # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 190
    .restart local v1    # "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_1

    .line 191
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 192
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 194
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 195
    new-instance v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 196
    .local v0, "assetDesc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to preload queue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 97
    .local v8, "type":Ljava/lang/Class;
    if-nez v8, :cond_5

    .line 99
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 100
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 101
    .local v2, "currAsset":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    iget-object v9, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v9, v9, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 102
    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v2    # "currAsset":Lcom/badlogic/gdx/assets/AssetLoadingTask;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    const/4 v5, -0x1

    .line 109
    .local v5, "foundIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    :try_start_1
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v9, :cond_2

    .line 110
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v9, v9, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    move v5, v6

    .line 115
    :cond_2
    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    .line 116
    new-instance v9, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Asset \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' not loaded"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v5    # "foundIndex":I
    .end local v6    # "i":I
    .end local v8    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 109
    .restart local v5    # "foundIndex":I
    .restart local v6    # "i":I
    .restart local v8    # "type":Ljava/lang/Class;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 118
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v5    # "foundIndex":I
    .end local v6    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "asset":Ljava/lang/Object;
    instance-of v9, v1, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v9, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/badlogic/gdx/utils/Disposable;

    move-object v9, v0

    invoke-interface {v9}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 128
    :cond_6
    instance-of v9, v1, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    if-eqz v9, :cond_7

    .line 129
    check-cast v1, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;

    .end local v1    # "asset":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/badlogic/gdx/assets/ReferenceCountedAsset;->getRefCount()I

    move-result v9

    if-gtz v9, :cond_0

    .line 133
    :cond_7
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v9, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v9, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    .line 138
    .local v3, "dependencies":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, "dependency":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/assets/AssetManager;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setErrorListener(Lcom/badlogic/gdx/assets/AssetErrorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/assets/AssetErrorListener;

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader",
            "<TT;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "loader":Lcom/badlogic/gdx/assets/loaders/AssetLoader;, "Lcom/badlogic/gdx/assets/loaders/AssetLoader<TT;TP;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->nextTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->handleTaskError(Ljava/lang/Throwable;)V

    .line 215
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    .line 210
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->updateTask()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->preloadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_1

    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    move v1, v2

    .line 215
    goto :goto_1

    .line 204
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
