.class public Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;
.super Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
.source "SimpleTileAtlas.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 23
    .param p1, "map"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .param p2, "inputDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;-><init>()V

    .line 34
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    .line 35
    .local v20, "set":Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->imageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 37
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    .line 38
    .local v10, "originalWidth":I
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    .line 40
    .local v11, "originalHeight":I
    move-object v1, v2

    .line 41
    .local v1, "result":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    :cond_1
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v7

    .line 43
    .local v7, "width":I
    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v8

    .line 45
    .local v8, "height":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    .end local v1    # "result":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v1, v7, v8, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 46
    .restart local v1    # "result":Lcom/badlogic/gdx/graphics/Pixmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 48
    .end local v7    # "width":I
    .end local v8    # "height":I
    :cond_2
    new-instance v9, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v9, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 50
    .local v9, "texture":Lcom/badlogic/gdx/graphics/Texture;
    const/16 v17, 0x0

    .line 51
    .local v17, "idx":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    move-object/from16 v0, v20

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->spacing:I

    move-object/from16 v0, v20

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->margin:I

    invoke-static/range {v9 .. v15}, Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;->split(Lcom/badlogic/gdx/graphics/Texture;IIIIII)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v19

    .line 53
    .local v19, "regions":[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/16 v22, 0x0

    .local v22, "y":I
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v19, v3

    array-length v3, v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_0

    .line 54
    const/16 v21, 0x0

    .local v21, "x":I
    :goto_1
    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_3

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;->regionsMap:Lcom/badlogic/gdx/utils/IntMap;

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "idx":I
    .local v18, "idx":I
    move-object/from16 v0, v20

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->firstgid:I

    add-int v4, v4, v17

    aget-object v5, v19, v21

    aget-object v5, v5, v22

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v21, v21, 0x1

    move/from16 v17, v18

    .end local v18    # "idx":I
    .restart local v17    # "idx":I
    goto :goto_1

    .line 53
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "result":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v2    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v9    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    .end local v10    # "originalWidth":I
    .end local v11    # "originalHeight":I
    .end local v17    # "idx":I
    .end local v19    # "regions":[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v20    # "set":Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_4
    return-void
.end method

.method private static split(Lcom/badlogic/gdx/graphics/Texture;IIIIII)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 12
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p1, "totalWidth"    # I
    .param p2, "totalHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "spacing"    # I
    .param p6, "margin"    # I

    .prologue
    .line 64
    sub-int v0, p1, p6

    add-int v1, p3, p5

    div-int v8, v0, v1

    .line 65
    .local v8, "xSlices":I
    sub-int v0, p2, p6

    add-int v1, p4, p5

    div-int v10, v0, v1

    .line 67
    .local v10, "ySlices":I
    filled-new-array {v8, v10}, [I

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 68
    .local v6, "res":[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 69
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-ge v9, v10, :cond_0

    .line 70
    aget-object v11, v6, v7

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v1, p3, p5

    mul-int/2addr v1, v7

    add-int v2, p6, v1

    add-int v1, p4, p5

    mul-int/2addr v1, v9

    add-int v3, p6, v1

    move-object v1, p0

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v0, v11, v9

    .line 69
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 73
    .end local v9    # "y":I
    :cond_1
    return-object v6
.end method
