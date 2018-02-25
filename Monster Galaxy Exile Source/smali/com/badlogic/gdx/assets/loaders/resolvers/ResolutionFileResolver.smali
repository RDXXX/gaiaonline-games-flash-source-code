.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;
.super Ljava/lang/Object;
.source "ResolutionFileResolver.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    }
.end annotation


# instance fields
.field final baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field final descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;


# direct methods
.method public varargs constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)V
    .locals 0
    .param p1, "baseResolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .param p2, "descriptors"    # [Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 25
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    .line 26
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v7, 0x0

    .line 31
    .local v7, "width":I
    const/4 v4, 0x0

    .line 32
    .local v4, "height":I
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    sget-object v9, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v9}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 33
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    .line 34
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    .line 40
    :goto_0
    const/4 v0, 0x0

    .line 41
    .local v0, "bestDesc":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    const v1, 0x7fffffff

    .line 42
    .local v1, "bestDistance":I
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    array-length v6, v8

    .local v6, "n":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 43
    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    sub-int v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v9, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int v2, v8, v9

    .line 44
    .local v2, "distance":I
    if-ge v2, v1, :cond_0

    .line 45
    move v1, v2

    .line 46
    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    aget-object v0, v8, v5

    .line 42
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    .end local v0    # "bestDesc":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    .end local v1    # "bestDistance":I
    .end local v2    # "distance":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_1
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    .line 37
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    goto :goto_0

    .line 50
    .restart local v0    # "bestDesc":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    .restart local v1    # "bestDistance":I
    .restart local v5    # "i":I
    .restart local v6    # "n":I
    :cond_2
    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->suffix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 51
    .local v3, "handle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    invoke-interface {v8, p1}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 52
    :cond_3
    return-object v3
.end method
