.class Lcom/badlogic/gdx/assets/AssetLoadingTask;
.super Ljava/lang/Object;
.source "AssetLoadingTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field asset:Ljava/lang/Object;

.field final assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

.field cancel:Z

.field dependencies:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field dependenciesLoaded:Z

.field depsFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field loadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

.field manager:Lcom/badlogic/gdx/assets/AssetManager;

.field final threadPool:Ljava/util/concurrent/ExecutorService;

.field updateOnRenderThread:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "assetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;
    .param p3, "loader"    # Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .param p4, "threadPool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    .line 39
    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Ljava/util/concurrent/Future;

    .line 40
    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Ljava/util/concurrent/Future;

    .line 41
    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->updateOnRenderThread:Z

    .line 42
    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    .line 44
    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 47
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 48
    iput-object p2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 49
    iput-object p3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 50
    iput-object p4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method private handleAsyncLoader()V
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;

    .line 103
    .local v0, "asyncLoader":Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
    iget-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Ljava/util/concurrent/Future;

    if-nez v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Ljava/util/concurrent/Future;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load dependencies of asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Ljava/util/concurrent/Future;

    if-nez v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadSync()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load asset \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleSyncLoader()V
    .locals 6

    .prologue
    .line 85
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    check-cast v2, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;

    .line 86
    .local v2, "syncLoader":Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
    iget-boolean v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-nez v3, :cond_2

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    .line 88
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;->getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    .line 89
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-nez v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 94
    .local v0, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    goto :goto_1

    .line 97
    .end local v0    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;

    .line 57
    .local v0, "asyncLoader":Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
    iget-boolean v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-nez v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->getDependencies(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    .line 59
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 61
    .local v1, "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    goto :goto_0

    .line 65
    .end local v1    # "desc":Lcom/badlogic/gdx/assets/AssetDescriptor;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getAsset()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    return-object v0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    instance-of v0, v0, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->handleSyncLoader()V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->handleAsyncLoader()V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
