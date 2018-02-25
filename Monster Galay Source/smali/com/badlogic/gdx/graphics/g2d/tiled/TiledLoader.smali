.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;
.super Ljava/lang/Object;
.source "TiledLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMap(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .locals 4
    .param p0, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 40
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;-><init>()V

    .line 41
    .local v1, "map":Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    iput-object p0, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tmxFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 44
    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    return-object v1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Error Parsing TMX file"

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 448
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
