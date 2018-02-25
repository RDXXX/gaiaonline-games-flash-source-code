.class public Lcom/badlogic/gdx/graphics/TextureDict;
.super Ljava/lang/Object;
.source "TextureDict.java"


# static fields
.field private static sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/TextureRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/TextureRef;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/TextureDict;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lcom/badlogic/gdx/graphics/TextureRef;

    move-result-object v0

    return-object v0
.end method

.method public static loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Lcom/badlogic/gdx/graphics/TextureRef;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "uwrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p4, "vwrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .prologue
    .line 53
    sget-object v3, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/TextureRef;

    .line 55
    .local v1, "ref":Lcom/badlogic/gdx/graphics/TextureRef;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/TextureRef;->addRef()V

    .line 65
    :goto_0
    return-object v1

    .line 59
    .end local v1    # "ref":Lcom/badlogic/gdx/graphics/TextureRef;
    :cond_0
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getFiles()Lcom/badlogic/gdx/Files;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    invoke-interface {v3, p0, v4}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 60
    .local v2, "texFile":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->isMipMap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->isMipMap()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 61
    .local v0, "newTex":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 62
    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 63
    new-instance v1, Lcom/badlogic/gdx/graphics/TextureRef;

    invoke-direct {v1, p0, v0}, Lcom/badlogic/gdx/graphics/TextureRef;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture;)V

    .line 64
    .restart local v1    # "ref":Lcom/badlogic/gdx/graphics/TextureRef;
    sget-object v3, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, p0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v0    # "newTex":Lcom/badlogic/gdx/graphics/Texture;
    .end local v1    # "ref":Lcom/badlogic/gdx/graphics/TextureRef;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removeTexture(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static unloadAll()V
    .locals 3

    .prologue
    .line 77
    sget-object v2, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/TextureRef;

    .line 78
    .local v1, "tex":Lcom/badlogic/gdx/graphics/TextureRef;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/TextureRef;->dispose()V

    goto :goto_0

    .line 80
    .end local v1    # "tex":Lcom/badlogic/gdx/graphics/TextureRef;
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/graphics/TextureDict;->sDictionary:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 81
    return-void
.end method
