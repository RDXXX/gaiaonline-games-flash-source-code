.class public Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;
.super Ljava/lang/Object;
.source "ObjLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIndex(Ljava/lang/String;I)I
    .locals 2
    .param p0, "index"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 186
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1

    .line 187
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "idx":I
    if-gez v0, :cond_2

    .line 189
    add-int v1, p1, v0

    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public static loadObj(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObj(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "flipV"    # Z

    .prologue
    .line 44
    const-string v3, ""

    .line 47
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "l":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-static {v3, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v5

    .end local v0    # "b":Ljava/lang/StringBuffer;
    .end local v2    # "l":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static loadObjFromString(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 35
    .param p0, "obj"    # Ljava/lang/String;
    .param p1, "flipV"    # Z

    .prologue
    .line 78
    const-string v31, "\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, "lines":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .line 80
    .local v27, "vertices":[F
    array-length v0, v11

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    new-array v15, v0, [F

    .line 81
    .local v15, "normals":[F
    array-length v0, v11

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 83
    .local v22, "uv":[F
    const/16 v19, 0x0

    .line 84
    .local v19, "numVertices":I
    const/16 v17, 0x0

    .line 85
    .local v17, "numNormals":I
    const/16 v18, 0x0

    .line 86
    .local v18, "numUV":I
    const/16 v16, 0x0

    .line 88
    .local v16, "numFaces":I
    array-length v0, v11

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    new-array v8, v0, [I

    .line 89
    .local v8, "facesVerts":[I
    array-length v0, v11

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    new-array v6, v0, [I

    .line 90
    .local v6, "facesNormals":[I
    array-length v0, v11

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    new-array v7, v0, [I

    .line 91
    .local v7, "facesUV":[I
    const/16 v26, 0x0

    .line 92
    .local v26, "vertexIndex":I
    const/4 v14, 0x0

    .line 93
    .local v14, "normalIndex":I
    const/16 v24, 0x0

    .line 94
    .local v24, "uvIndex":I
    const/4 v5, 0x0

    .line 96
    .local v5, "faceIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v9, v0, :cond_b

    .line 97
    aget-object v10, v11, v9

    .line 98
    .local v10, "line":Ljava/lang/String;
    const-string v31, "v "

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 99
    const-string v31, "[ ]+"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 100
    .local v21, "tokens":[Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    aput v31, v27, v26

    .line 101
    add-int/lit8 v31, v26, 0x1

    const/16 v32, 0x2

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    aput v32, v27, v31

    .line 102
    add-int/lit8 v31, v26, 0x2

    const/16 v32, 0x3

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    aput v32, v27, v31

    .line 103
    add-int/lit8 v26, v26, 0x3

    .line 104
    add-int/lit8 v19, v19, 0x1

    .line 96
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const-string v31, "vn "

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 109
    const-string v31, "[ ]+"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 110
    .restart local v21    # "tokens":[Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    aput v31, v15, v14

    .line 111
    add-int/lit8 v31, v14, 0x1

    const/16 v32, 0x2

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    aput v32, v15, v31

    .line 112
    add-int/lit8 v31, v14, 0x2

    const/16 v32, 0x3

    aget-object v32, v21, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    aput v32, v15, v31

    .line 113
    add-int/lit8 v14, v14, 0x3

    .line 114
    add-int/lit8 v17, v17, 0x1

    .line 115
    goto :goto_1

    .line 118
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_2
    const-string v31, "vt"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 119
    const-string v31, "[ ]+"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 120
    .restart local v21    # "tokens":[Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    aput v31, v22, v24

    .line 121
    add-int/lit8 v32, v24, 0x1

    if-eqz p1, :cond_3

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v33, 0x2

    aget-object v33, v21, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v33

    sub-float v31, v31, v33

    :goto_2
    aput v31, v22, v32

    .line 122
    add-int/lit8 v24, v24, 0x2

    .line 123
    add-int/lit8 v18, v18, 0x1

    .line 124
    goto :goto_1

    .line 121
    :cond_3
    const/16 v31, 0x2

    aget-object v31, v21, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    goto :goto_2

    .line 127
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_4
    const-string v31, "f "

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 128
    const-string v31, "[ ]+"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 130
    .restart local v21    # "tokens":[Ljava/lang/String;
    const/16 v31, 0x1

    aget-object v31, v21, v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 131
    .local v20, "parts":[Ljava/lang/String;
    const/16 v31, 0x0

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v8, v5

    .line 132
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    const/16 v31, 0x2

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v6, v5

    .line 133
    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_6

    const/16 v31, 0x1

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v7, v5

    .line 134
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 136
    const/16 v31, 0x2

    aget-object v31, v21, v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 137
    const/16 v31, 0x0

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v8, v5

    .line 138
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_7

    const/16 v31, 0x2

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v6, v5

    .line 139
    :cond_7
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    const/16 v31, 0x1

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v7, v5

    .line 140
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 142
    const/16 v31, 0x3

    aget-object v31, v21, v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 143
    const/16 v31, 0x0

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v8, v5

    .line 144
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    const/16 v31, 0x2

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v6, v5

    .line 145
    :cond_9
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_a

    const/16 v31, 0x1

    aget-object v31, v20, v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v31

    aput v31, v7, v5

    .line 146
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 147
    add-int/lit8 v16, v16, 0x1

    .line 148
    goto/16 :goto_1

    .line 152
    .end local v10    # "line":Ljava/lang/String;
    .end local v20    # "parts":[Ljava/lang/String;
    .end local v21    # "tokens":[Ljava/lang/String;
    :cond_b
    mul-int/lit8 v32, v16, 0x3

    if-lez v17, :cond_d

    const/16 v31, 0x3

    :goto_3
    add-int/lit8 v33, v31, 0x3

    if-lez v18, :cond_e

    const/16 v31, 0x2

    :goto_4
    add-int v31, v31, v33

    mul-int v31, v31, v32

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 154
    .local v28, "verts":[F
    const/4 v9, 0x0

    const/16 v29, 0x0

    .local v29, "vi":I
    move/from16 v30, v29

    .end local v29    # "vi":I
    .local v30, "vi":I
    :goto_5
    mul-int/lit8 v31, v16, 0x3

    move/from16 v0, v31

    if-ge v9, v0, :cond_f

    .line 155
    aget v31, v8, v9

    mul-int/lit8 v25, v31, 0x3

    .line 156
    .local v25, "vertexIdx":I
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "vi":I
    .restart local v29    # "vi":I
    aget v31, v27, v25

    aput v31, v28, v30

    .line 157
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "vi":I
    .restart local v30    # "vi":I
    add-int/lit8 v31, v25, 0x1

    aget v31, v27, v31

    aput v31, v28, v29

    .line 158
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "vi":I
    .restart local v29    # "vi":I
    add-int/lit8 v31, v25, 0x2

    aget v31, v27, v31

    aput v31, v28, v30

    .line 160
    if-lez v17, :cond_12

    .line 161
    aget v31, v6, v9

    mul-int/lit8 v13, v31, 0x3

    .line 162
    .local v13, "normalIdx":I
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "vi":I
    .restart local v30    # "vi":I
    aget v31, v15, v13

    aput v31, v28, v29

    .line 163
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "vi":I
    .restart local v29    # "vi":I
    add-int/lit8 v31, v13, 0x1

    aget v31, v15, v31

    aput v31, v28, v30

    .line 164
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "vi":I
    .restart local v30    # "vi":I
    add-int/lit8 v31, v13, 0x2

    aget v31, v15, v31

    aput v31, v28, v29

    .line 166
    .end local v13    # "normalIdx":I
    :goto_6
    if-lez v18, :cond_c

    .line 167
    aget v31, v7, v9

    mul-int/lit8 v23, v31, 0x2

    .line 168
    .local v23, "uvIdx":I
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "vi":I
    .restart local v29    # "vi":I
    aget v31, v22, v23

    aput v31, v28, v30

    .line 169
    add-int/lit8 v30, v29, 0x1

    .end local v29    # "vi":I
    .restart local v30    # "vi":I
    add-int/lit8 v31, v23, 0x1

    aget v31, v22, v31

    aput v31, v28, v29

    .end local v23    # "uvIdx":I
    :cond_c
    move/from16 v29, v30

    .line 154
    .end local v30    # "vi":I
    .restart local v29    # "vi":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v30, v29

    .end local v29    # "vi":I
    .restart local v30    # "vi":I
    goto :goto_5

    .line 152
    .end local v25    # "vertexIdx":I
    .end local v28    # "verts":[F
    .end local v30    # "vi":I
    :cond_d
    const/16 v31, 0x0

    goto :goto_3

    :cond_e
    const/16 v31, 0x0

    goto :goto_4

    .line 173
    .restart local v28    # "verts":[F
    .restart local v30    # "vi":I
    :cond_f
    const/4 v12, 0x0

    .line 175
    .local v12, "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v4, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    new-instance v31, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v32, 0x0

    const/16 v33, 0x3

    const-string v34, "a_position"

    invoke-direct/range {v31 .. v34}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    if-lez v17, :cond_10

    new-instance v31, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v32, 0x2

    const/16 v33, 0x3

    const-string v34, "a_normal"

    invoke-direct/range {v31 .. v34}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_10
    if-lez v18, :cond_11

    new-instance v31, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v32, 0x3

    const/16 v33, 0x2

    const-string v34, "a_texCoord0"

    invoke-direct/range {v31 .. v34}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_11
    new-instance v12, Lcom/badlogic/gdx/graphics/Mesh;

    .end local v12    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    const/16 v32, 0x1

    mul-int/lit8 v33, v16, 0x3

    const/16 v34, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v31

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 181
    .restart local v12    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 182
    return-object v12

    .end local v4    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    .end local v12    # "mesh":Lcom/badlogic/gdx/graphics/Mesh;
    .end local v30    # "vi":I
    .restart local v25    # "vertexIdx":I
    .restart local v29    # "vi":I
    :cond_12
    move/from16 v30, v29

    .end local v29    # "vi":I
    .restart local v30    # "vi":I
    goto/16 :goto_6
.end method
