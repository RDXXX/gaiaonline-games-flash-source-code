.class final Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;
.super Lcom/badlogic/gdx/utils/XmlReader;
.source "TiledLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->createMap(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;
    }
.end annotation


# instance fields
.field awaitingData:Z

.field col:I

.field compression:Ljava/lang/String;

.field currBranch:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

.field currLayerHeight:I

.field currLayerWidth:I

.field currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

.field currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

.field currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

.field currTile:I

.field currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

.field data:[B

.field dataCounter:I

.field dataString:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field row:I

.field final synthetic val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    .line 48
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    .line 50
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    .line 65
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    return-void
.end method

.method private arrangeData()V
    .locals 7

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "byteCounter":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v3, v4, :cond_1

    .line 390
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v2, v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteCounter":I
    .local v1, "byteCounter":I
    aget-byte v5, v5, v0

    invoke-static {v5}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v5

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "byteCounter":I
    .restart local v0    # "byteCounter":I
    aget-byte v6, v6, v1

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "byteCounter":I
    .restart local v1    # "byteCounter":I
    aget-byte v6, v6, v0

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "byteCounter":I
    .restart local v0    # "byteCounter":I
    aget-byte v6, v6, v1

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, v4, v2

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 389
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .end local v2    # "col":I
    :cond_1
    return-void
.end method

.method private fromCSV()V
    .locals 5

    .prologue
    .line 379
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .local v2, "st":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v1, v3, :cond_1

    .line 381
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v0, v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v3, v3, v1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "col":I
    :cond_1
    return-void
.end method

.method private putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V
    .locals 4
    .param p1, "property"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    .prologue
    .line 352
    const-string v0, "tile"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTile:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->setTileProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string v0, "map"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 362
    :cond_2
    const-string v0, "layer"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 367
    :cond_3
    const-string v0, "objectgroup"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 372
    :cond_4
    const-string v0, "object"

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->properties:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private unGZip()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "GZIS":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .end local v0    # "GZIS":Ljava/util/zip/GZIPInputStream;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    array-length v6, v6

    invoke-direct {v0, v5, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .restart local v0    # "GZIS":Ljava/util/zip/GZIPInputStream;
    new-array v3, v7, [B

    .line 427
    .local v3, "readTemp":[B
    const/4 v4, 0x0

    .local v4, "row":I
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v4, v5, :cond_1

    .line 428
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v1, v5, :cond_0

    .line 430
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_1
    invoke-virtual {v0, v3, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    .line 431
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v5, v4

    const/4 v6, 0x0

    aget-byte v6, v3, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v3, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v3, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    .end local v0    # "GZIS":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "col":I
    .end local v3    # "readTemp":[B
    .end local v4    # "row":I
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error Reading TMX Layer Data - IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 433
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "GZIS":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "col":I
    .restart local v3    # "readTemp":[B
    .restart local v4    # "row":I
    :catch_1
    move-exception v2

    .line 434
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Error Reading TMX Layer Data."

    invoke-direct {v5, v6, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 427
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "col":I
    :cond_1
    return-void
.end method

.method private unZlib()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x0

    .line 399
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    .line 400
    .local v4, "zlib":Ljava/util/zip/Inflater;
    new-array v2, v5, [B

    .line 402
    .local v2, "readTemp":[B
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    array-length v6, v6

    invoke-virtual {v4, v5, v7, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 404
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v3, v5, :cond_1

    .line 405
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-ge v0, v5, :cond_0

    .line 407
    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-virtual {v4, v2, v5, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 408
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v5, v5, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v6

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x2

    aget-byte v7, v2, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader;->unsignedByteToInt(B)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Error Reading TMX Layer Data."

    invoke-direct {v5, v6, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 404
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "col":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "element":Ljava/lang/String;
    const-string v1, "layer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    const-string v1, "width"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    .line 115
    :cond_0
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-eqz v1, :cond_1

    .line 116
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    filled-new-array {v1, v3}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    .line 272
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    const-string v1, "height"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "tileset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 122
    const-string v1, "firstgid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    goto :goto_1

    .line 126
    :cond_4
    const-string v1, "tilewidth"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    goto :goto_1

    .line 130
    :cond_5
    const-string v1, "tileheight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    goto :goto_1

    .line 134
    :cond_6
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->name:Ljava/lang/String;

    goto :goto_1

    .line 138
    :cond_7
    const-string v1, "spacing"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    goto :goto_1

    .line 142
    :cond_8
    const-string v1, "margin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    goto :goto_1

    .line 149
    :cond_9
    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    const-string v1, "source"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 157
    :cond_a
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 158
    const-string v1, "encoding"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 159
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 162
    :cond_b
    const-string v1, "compression"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    goto/16 :goto_1

    .line 169
    :cond_c
    const-string v1, "objectgroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 170
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 174
    :cond_d
    const-string v1, "height"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 175
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->height:I

    goto/16 :goto_1

    .line 178
    :cond_e
    const-string v1, "width"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->width:I

    goto/16 :goto_1

    .line 185
    :cond_f
    const-string v1, "object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 186
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 190
    :cond_10
    const-string v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 191
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 194
    :cond_11
    const-string v1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 195
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->x:I

    goto/16 :goto_1

    .line 198
    :cond_12
    const-string v1, "y"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 199
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->y:I

    goto/16 :goto_1

    .line 202
    :cond_13
    const-string v1, "width"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->width:I

    goto/16 :goto_1

    .line 206
    :cond_14
    const-string v1, "height"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 207
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->height:I

    goto/16 :goto_1

    .line 210
    :cond_15
    const-string v1, "gid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;->gid:I

    goto/16 :goto_1

    .line 217
    :cond_16
    const-string v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 218
    const-string v1, "orientation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 219
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->orientation:Ljava/lang/String;

    goto/16 :goto_1

    .line 222
    :cond_17
    const-string v1, "width"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 223
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->width:I

    goto/16 :goto_1

    .line 226
    :cond_18
    const-string v1, "height"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 227
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->height:I

    goto/16 :goto_1

    .line 230
    :cond_19
    const-string v1, "tilewidth"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 231
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    goto/16 :goto_1

    .line 234
    :cond_1a
    const-string v1, "tileheight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    goto/16 :goto_1

    .line 241
    :cond_1b
    const-string v1, "tile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 242
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    if-eqz v1, :cond_1d

    .line 243
    const-string v1, "gid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->col:I

    .line 245
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerWidth:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    .line 246
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayerHeight:I

    if-ge v1, v2, :cond_1c

    .line 247
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->row:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->col:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 251
    :goto_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    goto/16 :goto_1

    .line 249
    :cond_1c
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "TiledLoader"

    const-string v3, "Warning: extra XML gid values ignored! Your map is likely corrupt!"

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_1d
    const-string v1, "id"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTile:I

    goto/16 :goto_1

    .line 261
    :cond_1e
    const-string v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 263
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    :cond_1f
    const-string v1, "value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iput-object p2, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->value:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected close()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "element":Ljava/lang/String;
    const-string v1, "layer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v1, "tileset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    goto :goto_0

    .line 297
    :cond_2
    const-string v1, "object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;->objects:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    goto :goto_0

    .line 303
    :cond_3
    const-string v1, "objectgroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->val$map:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->objectGroups:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    goto :goto_0

    .line 309
    :cond_4
    const-string v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V

    .line 311
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    goto :goto_0

    .line 315
    :cond_5
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 318
    const-string v1, "base64"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 319
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->data:[B

    .line 323
    const-string v1, "gzip"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 324
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->unGZip()V

    .line 341
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 319
    goto :goto_1

    .line 325
    :cond_8
    const-string v1, "zlib"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 326
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->unZlib()V

    goto :goto_2

    .line 327
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 328
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->arrangeData()V

    goto :goto_2

    .line 331
    :cond_a
    const-string v1, "csv"

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 332
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->fromCSV()V

    goto :goto_2

    .line 334
    :cond_b
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->encoding:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->compression:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 336
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataCounter:I

    goto :goto_2

    .line 338
    :cond_c
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unsupported encoding and/or compression format"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_d
    const-string v1, "property"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->putProperty(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;)V

    .line 347
    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    goto/16 :goto_0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "layer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currLayer:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "tileset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currTileSet:Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    goto :goto_0

    .line 87
    :cond_3
    const-string v0, "objectgroup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObjectGroup:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObjectGroup;

    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currObject:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledObject;

    goto :goto_0

    .line 97
    :cond_5
    const-string v0, "property"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    .line 99
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currProperty:Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->currBranch:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1$Property;->parentType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->awaitingData:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLoader$1;->dataString:Ljava/lang/String;

    .line 279
    :cond_0
    return-void
.end method
