.class public Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;
.super Ljava/lang/Object;
.source "TileMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private allLayers:[I

.field private atlas:Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;

.field private blendedCacheId:[[[I

.field private blendedTiles:Lcom/badlogic/gdx/utils/IntArray;

.field private cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field private currentCol:I

.field private currentLayer:I

.field private currentRow:I

.field private initialCol:I

.field private initialRow:I

.field private isSimpleTileAtlas:Z

.field private lastCol:I

.field private lastRow:I

.field private mapHeightUnits:I

.field private mapWidthUnits:I

.field private normalCacheId:[[[I

.field public overdrawX:F

.field public overdrawY:F

.field private tileHeight:I

.field private tileWidth:I

.field private tilesPerBlockX:I

.field private tilesPerBlockY:I

.field tmp:Lcom/badlogic/gdx/math/Vector3;

.field private unitsPerBlockX:F

.field private unitsPerBlockY:F

.field private unitsPerTileX:F

.field private unitsPerTileY:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;II)V
    .locals 7
    .param p1, "map"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tilesPerBlockX"    # I
    .param p4, "tilesPerBlockY"    # I

    .prologue
    .line 65
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    int-to-float v5, v0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFF)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFF)V
    .locals 8
    .param p1, "map"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tilesPerBlockX"    # I
    .param p4, "tilesPerBlockY"    # I
    .param p5, "unitsPerTileX"    # F
    .param p6, "unitsPerTileY"    # F

    .prologue
    .line 86
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 13
    .param p1, "map"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tilesPerBlockX"    # I
    .param p4, "tilesPerBlockY"    # I
    .param p5, "unitsPerTileX"    # F
    .param p6, "unitsPerTileY"    # F
    .param p7, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    .line 293
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [[[I

    .line 109
    .local v1, "tileMap":[[[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 110
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->layers:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledLayer;->tiles:[[I

    aput-object v0, v1, v12

    .line 109
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const/4 v12, 0x0

    :goto_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 114
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawY:F

    mul-float v2, v2, p6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileHeight:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v0, p6

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawY:F

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawX:F

    mul-float v2, v2, p5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 117
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileSet;->tileWidth:I

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v0, p5

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawX:F

    .line 113
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 120
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->properties:Ljava/util/HashMap;

    const-string v2, "blended tiles"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 123
    .local v11, "blendedTiles":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 124
    invoke-static {v11}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->createFromCSV(Ljava/lang/String;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v7

    .line 129
    .local v7, "blendedTilesArray":Lcom/badlogic/gdx/utils/IntArray;
    :goto_2
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    move-object v0, p0

    move-object v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->init([[[ILcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/utils/IntArray;IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 131
    return-void

    .line 126
    .end local v7    # "blendedTilesArray":Lcom/badlogic/gdx/utils/IntArray;
    :cond_4
    new-instance v7, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    .restart local v7    # "blendedTilesArray":Lcom/badlogic/gdx/utils/IntArray;
    goto :goto_2
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 8
    .param p1, "map"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tilesPerBlockX"    # I
    .param p4, "tilesPerBlockY"    # I
    .param p5, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 103
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileWidth:I

    int-to-float v5, v0

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;->tileHeight:I

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;-><init>(Lcom/badlogic/gdx/graphics/g2d/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 104
    return-void
.end method

.method public constructor <init>([[[ILcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/utils/IntArray;II)V
    .locals 11
    .param p1, "map"    # [[[I
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tileWidth"    # I
    .param p4, "tileHeight"    # I
    .param p5, "unitsPerTileX"    # F
    .param p6, "unitsPerTileY"    # F
    .param p7, "blendedTiles"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p8, "tilesPerBlockX"    # I
    .param p9, "tilesPerBlockY"    # I

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    .line 293
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 152
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->init([[[ILcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/utils/IntArray;IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 153
    return-void
.end method

.method public constructor <init>([[[ILcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/utils/IntArray;IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "map"    # [[[I
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tileWidth"    # I
    .param p4, "tileHeight"    # I
    .param p5, "unitsPerTileX"    # F
    .param p6, "unitsPerTileY"    # F
    .param p7, "blendedTiles"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p8, "tilesPerBlockX"    # I
    .param p9, "tilesPerBlockY"    # I
    .param p10, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    .line 293
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 173
    invoke-direct/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->init([[[ILcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/utils/IntArray;IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 174
    return-void
.end method

.method private addBlock([[IIIZ)I
    .locals 22
    .param p1, "layer"    # [[I
    .param p2, "blockRow"    # I
    .param p3, "blockCol"    # I
    .param p4, "blended"    # Z

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    .line 244
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tilesPerBlockX:I

    mul-int v16, p3, v2

    .line 245
    .local v16, "firstCol":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tilesPerBlockY:I

    mul-int v17, p2, v2

    .line 246
    .local v17, "firstRow":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tilesPerBlockX:I

    add-int v18, v16, v2

    .line 247
    .local v18, "lastCol":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tilesPerBlockY:I

    add-int v19, v17, v2

    .line 249
    .local v19, "lastRow":I
    move/from16 v20, v17

    .local v20, "row":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 250
    move/from16 v15, v16

    .local v15, "col":I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    aget-object v2, p1, v20

    array-length v2, v2

    if-ge v15, v2, :cond_3

    .line 251
    aget-object v2, p1, v20

    aget v21, v2, v15

    .line 252
    .local v21, "tile":I
    if-eqz v21, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedTiles:Lcom/badlogic/gdx/utils/IntArray;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->atlas:Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;->getRegion(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    .line 255
    .local v5, "reg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v5, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    if-nez v2, :cond_2

    move-object v3, v5

    .line 257
    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 258
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    mul-float/2addr v4, v6

    move-object/from16 v0, p1

    array-length v6, v0

    sub-int v6, v6, v20

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    mul-float v5, v6, v7

    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .end local v5    # "reg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    int-to-float v8, v8

    iget v9, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget-boolean v12, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-eqz v12, :cond_1

    const/high16 v12, 0x42b40000    # 90.0f

    :goto_2
    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 250
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_0
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 258
    .restart local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 263
    .end local v3    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .restart local v5    # "reg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    mul-float/2addr v6, v2

    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v20

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v10, v2

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileWidth:I

    int-to-float v12, v12

    div-float v12, v2, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileHeight:I

    int-to-float v13, v13

    div-float v13, v2, v13

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_3

    .line 249
    .end local v5    # "reg":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v21    # "tile":I
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 272
    .end local v15    # "col":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    move-result v2

    return v2
.end method

.method private static createFromCSV(Ljava/lang/String;)Lcom/badlogic/gdx/utils/IntArray;
    .locals 4
    .param p0, "values"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 468
    .local v0, "list":Lcom/badlogic/gdx/utils/IntArray;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->shrink()V

    .line 473
    return-object v0
.end method

.method private getLayerHeightInBlocks(I)I
    .locals 3
    .param p1, "layer"    # I

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "normalCacheHeight":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v2, v2, p1

    array-length v1, v2

    .line 383
    :cond_0
    const/4 v0, 0x0

    .line 384
    .local v0, "blendedCacheHeight":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    .line 385
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v2, v2, p1

    array-length v0, v2

    .line 388
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getLayerWidthInBlocks(II)I
    .locals 3
    .param p1, "layer"    # I
    .param p2, "row"    # I

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "normalCacheWidth":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    array-length v1, v2

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 370
    .local v0, "blendedCacheWidth":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v2, v2, p1

    aget-object v2, v2, p2

    array-length v0, v2

    .line 374
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private init([[[ILcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;IIFFLcom/badlogic/gdx/utils/IntArray;IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 10
    .param p1, "map"    # [[[I
    .param p2, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;
    .param p3, "tileWidth"    # I
    .param p4, "tileHeight"    # I
    .param p5, "unitsPerTileX"    # F
    .param p6, "unitsPerTileY"    # F
    .param p7, "blendedTiles"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p8, "tilesPerBlockX"    # I
    .param p9, "tilesPerBlockY"    # I
    .param p10, "shader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    .line 180
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->atlas:Lcom/badlogic/gdx/graphics/g2d/tiled/TileAtlas;

    .line 181
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileWidth:I

    .line 182
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tileHeight:I

    .line 183
    iput p5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    .line 184
    move/from16 v0, p6

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    .line 186
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedTiles:Lcom/badlogic/gdx/utils/IntArray;

    .line 187
    move/from16 v0, p8

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tilesPerBlockX:I

    .line 188
    move/from16 v0, p9

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tilesPerBlockY:I

    .line 190
    move/from16 v0, p8

    int-to-float v7, v0

    mul-float/2addr v7, p5

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerBlockX:F

    .line 191
    move/from16 v0, p9

    int-to-float v7, v0

    mul-float v7, v7, p6

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerBlockY:F

    .line 193
    instance-of v7, p2, Lcom/badlogic/gdx/graphics/g2d/tiled/SimpleTileAtlas;

    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    .line 197
    array-length v7, p1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->allLayers:[I

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "maxCacheSize":I
    const/4 v4, 0x0

    .line 202
    .local v4, "maxHeight":I
    const/4 v5, 0x0

    .line 203
    .local v5, "maxWidth":I
    const/4 v2, 0x0

    .local v2, "layer":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_5

    .line 204
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->allLayers:[I

    aput v2, v7, v2

    .line 205
    aget-object v7, p1, v2

    array-length v7, v7

    if-le v7, v4, :cond_0

    aget-object v7, p1, v2

    array-length v4, v7

    .line 206
    :cond_0
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_1
    aget-object v7, p1, v2

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 207
    aget-object v7, p1, v2

    aget-object v7, v7, v6

    array-length v7, v7

    if-le v7, v5, :cond_1

    aget-object v7, p1, v2

    aget-object v7, v7, v6

    array-length v5, v7

    .line 208
    :cond_1
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_2
    aget-object v7, p1, v2

    aget-object v7, v7, v6

    array-length v7, v7

    if-ge v1, v7, :cond_3

    .line 209
    aget-object v7, p1, v2

    aget-object v7, v7, v6

    aget v7, v7, v1

    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 203
    .end local v1    # "col":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v6    # "row":I
    :cond_5
    int-to-float v7, v4

    mul-float v7, v7, p6

    float-to-int v7, v7

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->mapHeightUnits:I

    .line 213
    int-to-float v7, v5

    mul-float/2addr v7, p5

    float-to-int v7, v7

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->mapWidthUnits:I

    .line 215
    if-nez p10, :cond_6

    .line 216
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    .line 220
    :goto_3
    array-length v7, p1

    new-array v7, v7, [[[I

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    .line 221
    array-length v7, p1

    new-array v7, v7, [[[I

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    .line 222
    const/4 v2, 0x0

    :goto_4
    array-length v7, p1

    if-ge v2, v7, :cond_a

    .line 223
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v8, p1, v2

    array-length v8, v8

    int-to-float v8, v8

    move/from16 v0, p9

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v8

    new-array v8, v8, [[I

    aput-object v8, v7, v2

    .line 224
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v8, p1, v2

    array-length v8, v8

    int-to-float v8, v8

    move/from16 v0, p9

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v8

    new-array v8, v8, [[I

    aput-object v8, v7, v2

    .line 225
    const/4 v6, 0x0

    .restart local v6    # "row":I
    :goto_5
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v7, v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 226
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v7, v7, v2

    aget-object v8, p1, v2

    aget-object v8, v8, v6

    array-length v8, v8

    int-to-float v8, v8

    move/from16 v0, p8

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v8

    new-array v8, v8, [I

    aput-object v8, v7, v6

    .line 227
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v7, v7, v2

    aget-object v8, p1, v2

    aget-object v8, v8, v6

    array-length v8, v8

    int-to-float v8, v8

    move/from16 v0, p8

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v8

    new-array v8, v8, [I

    aput-object v8, v7, v6

    .line 228
    const/4 v1, 0x0

    .restart local v1    # "col":I
    :goto_6
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    array-length v7, v7

    if-ge v1, v7, :cond_8

    .line 229
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    if-eqz v7, :cond_7

    .line 231
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    aget-object v8, p1, v2

    const/4 v9, 0x0

    invoke-direct {p0, v8, v6, v1, v9}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->addBlock([[IIIZ)I

    move-result v8

    aput v8, v7, v1

    .line 228
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 218
    .end local v1    # "col":I
    .end local v6    # "row":I
    :cond_6
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v8, 0x0

    move-object/from16 v0, p10

    invoke-direct {v7, v3, v0, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;Z)V

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    goto/16 :goto_3

    .line 233
    .restart local v1    # "col":I
    .restart local v6    # "row":I
    :cond_7
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    aget-object v8, p1, v2

    const/4 v9, 0x0

    invoke-direct {p0, v8, v6, v1, v9}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->addBlock([[IIIZ)I

    move-result v8

    aput v8, v7, v1

    .line 234
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    aget-object v7, v7, v2

    aget-object v7, v7, v6

    aget-object v8, p1, v2

    const/4 v9, 0x1

    invoke-direct {p0, v8, v6, v1, v9}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->addBlock([[IIIZ)I

    move-result v8

    aput v8, v7, v1

    goto :goto_7

    .line 225
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 222
    .end local v1    # "col":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 239
    .end local v6    # "row":I
    :cond_a
    return-void
.end method

.method private static parseIntWithDefault(Ljava/lang/String;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 452
    if-nez p0, :cond_0

    .line 456
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 454
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V

    .line 464
    return-void
.end method

.method public getCol(I)I
    .locals 2
    .param p1, "worldX"    # I

    .prologue
    .line 408
    int-to-float v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getInitialCol()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    return v0
.end method

.method public getInitialRow()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    return v0
.end method

.method public getLastCol()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastCol:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastRow:I

    return v0
.end method

.method public getMapHeightUnits()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->mapHeightUnits:I

    return v0
.end method

.method public getMapWidthUnits()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->mapWidthUnits:I

    return v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)I
    .locals 2
    .param p1, "worldY"    # I

    .prologue
    .line 402
    int-to-float v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public getUnitsPerTileX()F
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileX:F

    return v0
.end method

.method public getUnitsPerTileY()F
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerTileY:F

    return v0
.end method

.method public render()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getMapWidthUnits()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getMapHeightUnits()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->render(FFFF)V

    .line 279
    return-void
.end method

.method public render(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 284
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->allLayers:[I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->render(FFFF[I)V

    .line 285
    return-void
.end method

.method public render(FFFF[I)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "layers"    # [I

    .prologue
    const/16 v4, 0xbe2

    const/4 v1, 0x0

    .line 324
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->mapHeightUnits:I

    int-to-float v0, v0

    sub-float v2, p2, p4

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawY:F

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerBlockY:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastRow:I

    .line 325
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->mapHeightUnits:I

    int-to-float v0, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawY:F

    sub-float v2, p2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerBlockY:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    .line 326
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    .line 328
    add-float v0, p1, p3

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawX:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerBlockX:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastCol:I

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->overdrawX:F

    sub-float v0, p1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->unitsPerBlockX:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    .line 332
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/graphics/GLCommon;->glBlendFunc(II)V

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    .line 335
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->isSimpleTileAtlas:Z

    if-eqz v0, :cond_4

    .line 337
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 338
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    array-length v1, p5

    if-ge v0, v1, :cond_7

    .line 339
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    :goto_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastRow:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getLayerHeightInBlocks(I)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 340
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    .line 341
    :goto_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastCol:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getLayerWidthInBlocks(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    aget v2, p5, v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    goto :goto_4

    :cond_0
    move v0, v1

    .line 326
    goto/16 :goto_0

    :cond_1
    move v0, v1

    .line 330
    goto :goto_1

    .line 339
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    goto :goto_3

    .line 338
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    goto :goto_2

    .line 347
    :cond_4
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    :goto_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    array-length v1, p5

    if-ge v0, v1, :cond_7

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialRow:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    :goto_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastRow:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getLayerHeightInBlocks(I)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 349
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->initialCol:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    .line 350
    :goto_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->lastCol:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getLayerWidthInBlocks(II)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 351
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->normalCacheId:[[[I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    aget v2, p5, v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 353
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->blendedCacheId:[[[I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    aget v2, p5, v2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    .line 350
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentCol:I

    goto :goto_7

    .line 348
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentRow:I

    goto :goto_6

    .line 347
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->currentLayer:I

    goto :goto_5

    .line 359
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->cache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    .line 360
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 361
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 1
    .param p1, "cam"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->allLayers:[I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->render(Lcom/badlogic/gdx/graphics/OrthographicCamera;[I)V

    .line 291
    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/OrthographicCamera;[I)V
    .locals 6
    .param p1, "cam"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .param p2, "layers"    # [I

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->unproject(Lcom/badlogic/gdx/math/Vector3;)V

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v3, v0

    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/tiled/TileMapRenderer;->render(FFFF[I)V

    .line 304
    return-void
.end method
