.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontData"
.end annotation


# instance fields
.field ascent:F

.field capHeight:F

.field descent:F

.field down:F

.field final flipped:Z

.field final glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field imgFile:Ljava/lang/String;

.field final lineHeight:F

.field scaleX:F

.field scaleY:F

.field spaceWidth:F

.field xHeight:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 24
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 79
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 81
    const/16 v21, 0x80

    move/from16 v0, v21

    new-array v0, v0, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 83
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 86
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    .line 87
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x200

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 89
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 91
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "line":Ljava/lang/String;
    if-nez v13, :cond_0

    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v13    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 201
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error loading font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 204
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    :goto_0
    throw v21

    .line 93
    .restart local v13    # "line":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v21, " "

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "common":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 96
    :cond_1
    const/16 v21, 0x1

    aget-object v21, v7, v21

    const-string v22, "lineHeight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 97
    :cond_2
    const/16 v21, 0x1

    aget-object v21, v7, v21

    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 99
    const/16 v21, 0x2

    aget-object v21, v7, v21

    const-string v22, "base="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 100
    :cond_3
    const/16 v21, 0x2

    aget-object v21, v7, v21

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 102
    .local v4, "baseLine":I
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 103
    if-nez v13, :cond_4

    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 104
    :cond_4
    const-string v21, " "

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, "pageLine":[Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v14, v21

    const-string v22, "file="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    new-instance v21, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid font file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 106
    :cond_5
    const/4 v12, 0x0

    .line 107
    .local v12, "imgFilename":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v14, v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 108
    const/16 v21, 0x2

    aget-object v21, v14, v21

    const/16 v22, 0x6

    const/16 v23, 0x2

    aget-object v23, v14, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 112
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\\\\"

    const-string v23, "/"

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imgFile:Ljava/lang/String;

    .line 113
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 116
    :cond_6
    :goto_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 117
    if-nez v13, :cond_10

    .line 152
    :cond_7
    :goto_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 153
    if-nez v13, :cond_12

    .line 169
    :cond_8
    const/16 v21, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v17

    .line 170
    .local v17, "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v17, :cond_a

    .line 171
    new-instance v17, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .end local v17    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-direct/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 172
    .restart local v17    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    const/16 v21, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v20

    .line 173
    .local v20, "xadvanceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v20, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v20

    .line 174
    :cond_9
    move-object/from16 v0, v20

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 175
    const/16 v21, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 177
    .end local v20    # "xadvanceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_a
    if-eqz v17, :cond_13

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    .line 179
    const/16 v19, 0x0

    .line 180
    .local v19, "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    sget-object v21, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    .line 181
    sget-object v21, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    aget-char v21, v21, v11

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v19

    .line 182
    if-eqz v19, :cond_14

    .line 184
    :cond_b
    if-nez v19, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v19

    .line 185
    :cond_c
    move-object/from16 v0, v19

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 187
    const/4 v5, 0x0

    .line 188
    .local v5, "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    const/4 v11, 0x0

    :goto_6
    sget-object v21, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_d

    .line 189
    sget-object v21, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    aget-char v21, v21, v11

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v5

    .line 190
    if-eqz v5, :cond_15

    .line 192
    :cond_d
    iget v0, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 194
    int-to-float v0, v4

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 196
    if-eqz p2, :cond_e

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :cond_e
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 208
    :goto_7
    return-void

    .line 110
    .end local v5    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v11    # "i":I
    .end local v17    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v19    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_f
    const/16 v21, 0x2

    :try_start_5
    aget-object v21, v14, v21

    const/16 v22, 0x5

    const/16 v23, 0x2

    aget-object v23, v14, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 118
    :cond_10
    const-string v21, "kernings "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 119
    const-string v21, "char "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 121
    new-instance v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 123
    .local v10, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    new-instance v18, Ljava/util/StringTokenizer;

    const-string v21, " ="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v18, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 125
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 126
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 127
    .local v6, "ch":I
    const v21, 0xffff

    move/from16 v0, v21

    if-gt v6, v0, :cond_6

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 132
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 133
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 135
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 136
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 137
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 138
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 140
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 141
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 142
    if-eqz p2, :cond_11

    .line 143
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 146
    :goto_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 147
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 148
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    move/from16 v21, v0

    add-int v21, v21, v4

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    goto/16 :goto_2

    .line 145
    :cond_11
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_8

    .line 154
    .end local v6    # "ch":I
    .end local v10    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v18    # "tokens":Ljava/util/StringTokenizer;
    :cond_12
    const-string v21, "kerning "

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 156
    new-instance v18, Ljava/util/StringTokenizer;

    const-string v21, " ="

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v18    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 158
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 159
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 160
    .local v9, "first":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 161
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 162
    .local v16, "second":I
    if-ltz v9, :cond_7

    const v21, 0xffff

    move/from16 v0, v21

    if-gt v9, v0, :cond_7

    if-ltz v16, :cond_7

    const v21, 0xffff

    move/from16 v0, v16

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    .line 163
    int-to-char v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v10

    .line 164
    .restart local v10    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 165
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 166
    .local v3, "amount":I
    move/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 177
    .end local v3    # "amount":I
    .end local v9    # "first":I
    .end local v10    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v16    # "second":I
    .end local v18    # "tokens":Ljava/util/StringTokenizer;
    .restart local v17    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_13
    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 180
    .restart local v11    # "i":I
    .restart local v19    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 188
    .restart local v5    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 205
    :catch_1
    move-exception v21

    goto/16 :goto_7

    .end local v4    # "baseLine":I
    .end local v5    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v7    # "common":[Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "imgFilename":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "pageLine":[Ljava/lang/String;
    .end local v17    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v19    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :catch_2
    move-exception v22

    goto/16 :goto_0
.end method

.method private getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 10

    .prologue
    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .local v0, "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 218
    .local v7, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v7, :cond_1

    .line 217
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 219
    :cond_1
    move-object v1, v7

    .local v1, "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v2, v1, v3

    .line 220
    .local v2, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v2, :cond_3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v4    # "i$":I
    :cond_2
    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v9, "No glyphs found!"

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 221
    .end local v4    # "i$":I
    .restart local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_3
    return-object v2
.end method

.method private setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "glyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v2, p1, 0x200

    aget-object v0, v1, v2

    .line 212
    .local v0, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v2, p1, 0x200

    const/16 v3, 0x200

    new-array v0, v3, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    aput-object v0, v1, v2

    .line 213
    :cond_0
    and-int/lit16 v1, p1, 0x1ff

    aput-object p2, v0, v1

    .line 214
    return-void
.end method


# virtual methods
.method public getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 228
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v2, p1, 0x200

    aget-object v0, v1, v2

    .line 229
    .local v0, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v0, :cond_0

    and-int/lit16 v1, p1, 0x1ff

    aget-object v1, v0, v1

    .line 230
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imgFile:Ljava/lang/String;

    return-object v0
.end method
