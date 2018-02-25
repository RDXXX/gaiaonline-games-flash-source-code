.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;,
        Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    }
.end annotation


# instance fields
.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation
.end field

.field final regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 26
    .param p1, "packFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imagesDir"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 94
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 97
    new-instance v21, Ljava/util/PriorityQueue;

    const/16 v4, 0x10

    sget-object v24, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->indexComparator:Ljava/util/Comparator;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 99
    .local v21, "sortedRegions":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;>;"
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v24, 0x40

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 101
    .local v18, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .local v2, "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    move-object/from16 v17, v2

    .line 103
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .local v17, "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :goto_0
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 104
    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 169
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/PriorityQueue;->size()I

    move-result v16

    .line 175
    .local v16, "n":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual/range {v21 .. v21}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 175
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 105
    .end local v13    # "i":I
    .end local v16    # "n":I
    :cond_0
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 106
    const/4 v2, 0x0

    .end local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :goto_3
    move-object/from16 v17, v2

    .line 164
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    goto :goto_0

    .line 107
    :cond_1
    if-nez v17, :cond_5

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 110
    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    .line 112
    .local v5, "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 113
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v6

    .line 114
    .local v6, "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    .line 116
    .local v7, "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "direction":Ljava/lang/String;
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 118
    .local v8, "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 119
    .local v9, "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    const-string v4, "x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 120
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 128
    :cond_2
    :goto_4
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->isMipMap()Z

    move-result v4

    invoke-direct/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;-><init>(Lcom/badlogic/gdx/files/FileHandle;ZLcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .end local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 165
    :catch_0
    move-exception v11

    .line 166
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v6    # "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v7    # "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v8    # "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v9    # "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v10    # "direction":Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .local v11, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_4
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error reading pack file: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 169
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 171
    :goto_6
    throw v4

    .line 121
    .restart local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v5    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .restart local v6    # "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .restart local v7    # "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .restart local v8    # "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .restart local v9    # "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .restart local v10    # "direction":Ljava/lang/String;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :cond_3
    :try_start_6
    const-string v4, "y"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    goto :goto_4

    .line 123
    :cond_4
    const-string v4, "xy"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 125
    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    goto :goto_4

    .line 131
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "format":Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .end local v6    # "min":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v7    # "max":Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .end local v8    # "repeatX":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v9    # "repeatY":Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .end local v10    # "direction":Ljava/lang/String;
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 133
    .local v20, "rotate":Z
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 134
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 135
    .local v14, "left":I
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 137
    .local v22, "top":I
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 138
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 139
    .local v23, "width":I
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 141
    .local v12, "height":I
    new-instance v19, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-direct/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;-><init>()V

    .line 142
    .local v19, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 143
    move-object/from16 v0, v19

    iput v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->left:I

    .line 144
    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->top:I

    .line 145
    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    .line 146
    move-object/from16 v0, v19

    iput v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    .line 147
    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    .line 148
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    .line 150
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 151
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    .line 152
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    .line 154
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 155
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetX:F

    .line 156
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetY:F

    .line 158
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 160
    if-eqz p3, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    .line 162
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v2, v17

    .end local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    goto/16 :goto_3

    .line 170
    .end local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .end local v12    # "height":I
    .end local v14    # "left":I
    .end local v19    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;
    .end local v20    # "rotate":Z
    .end local v22    # "top":I
    .end local v23    # "width":I
    .restart local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :catch_2
    move-exception v24

    goto/16 :goto_6

    .line 177
    .restart local v13    # "i":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "n":I
    .restart local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    :cond_7
    return-void

    .line 165
    .end local v13    # "i":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "n":I
    :catch_3
    move-exception v11

    move-object/from16 v2, v17

    .end local v17    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    .restart local v2    # "pageImage":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
    goto/16 :goto_5
.end method


# virtual methods
.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRegion()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
