.class public Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;
.super Ljava/lang/Object;
.source "MD5Mesh.java"


# static fields
.field static _A:Lcom/badlogic/gdx/math/Vector3;

.field static _B:Lcom/badlogic/gdx/math/Vector3;

.field static _n:Lcom/badlogic/gdx/math/Vector3;

.field static bn:Lcom/badlogic/gdx/math/Vector3;

.field static quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

.field static vn:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public floatsPerVertex:I

.field public floatsPerWeight:I

.field public indices:[S

.field public numTriangles:I

.field public numVertices:I

.field public numWeights:I

.field public shader:Ljava/lang/String;

.field public vertices:[F

.field public weights:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    .line 214
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    .line 215
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    .line 216
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    .line 227
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    .line 228
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcNor(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p0, "v1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "v2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    .line 220
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 221
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    .line 222
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 223
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_A:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_B:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    .line 224
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->_n:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public static calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[S[FII)V
    .locals 52
    .param p0, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p1, "weights"    # [F
    .param p2, "vertices"    # [F
    .param p3, "indices"    # [S
    .param p4, "verts"    # [F
    .param p5, "vstride"    # I
    .param p6, "wstride"    # I

    .prologue
    .line 232
    const/16 v35, 0x2

    .local v35, "vertexOffset":I
    const/16 v19, 0x0

    .local v19, "k":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v35

    move/from16 v1, v48

    if-ge v0, v1, :cond_1

    .line 233
    const/4 v5, 0x0

    .line 234
    .local v5, "finalX":F
    const/4 v6, 0x0

    .line 235
    .local v6, "finalY":F
    const/4 v7, 0x0

    .line 237
    .local v7, "finalZ":F
    aget v48, p2, v35

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v46, v0

    .line 238
    .local v46, "weightOffset":I
    add-int/lit8 v48, v35, 0x1

    aget v48, p2, v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v45, v0

    .line 239
    .local v45, "weightCount":I
    mul-int v46, v46, p6

    .line 241
    const/16 v17, 0x0

    .local v17, "j":I
    move/from16 v47, v46

    .end local v46    # "weightOffset":I
    .local v47, "weightOffset":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v45

    if-ge v0, v1, :cond_0

    .line 242
    add-int/lit8 v46, v47, 0x1

    .end local v47    # "weightOffset":I
    .restart local v46    # "weightOffset":I
    aget v48, p1, v47

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v48, v0

    shl-int/lit8 v18, v48, 0x3

    .line 243
    .local v18, "jointOffset":I
    add-int/lit8 v47, v46, 0x1

    .end local v46    # "weightOffset":I
    .restart local v47    # "weightOffset":I
    aget v4, p1, v46

    .line 244
    .local v4, "bias":F
    add-int/lit8 v46, v47, 0x1

    .end local v47    # "weightOffset":I
    .restart local v46    # "weightOffset":I
    aget v42, p1, v47

    .line 245
    .local v42, "vx":F
    add-int/lit8 v47, v46, 0x1

    .end local v46    # "weightOffset":I
    .restart local v47    # "weightOffset":I
    aget v43, p1, v46

    .line 246
    .local v43, "vy":F
    add-int/lit8 v46, v47, 0x1

    .end local v47    # "weightOffset":I
    .restart local v46    # "weightOffset":I
    aget v44, p1, v47

    .line 247
    .local v44, "vz":F
    add-int/lit8 v46, v46, 0x3

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x4

    aget v25, v48, v49

    .line 250
    .local v25, "qx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x5

    aget v26, v48, v49

    .line 251
    .local v26, "qy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x6

    aget v27, v48, v49

    .line 252
    .local v27, "qz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x7

    aget v24, v48, v49

    .line 254
    .local v24, "qw":F
    move/from16 v0, v25

    neg-float v14, v0

    .local v14, "ix":F
    move/from16 v0, v26

    neg-float v15, v0

    .local v15, "iy":F
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v16, v0

    .local v16, "iz":F
    move/from16 v13, v24

    .line 256
    .local v13, "iw":F
    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v48, v0

    mul-float v48, v48, v42

    mul-float v49, v26, v43

    sub-float v48, v48, v49

    mul-float v49, v27, v44

    sub-float v28, v48, v49

    .line 257
    .local v28, "tw":F
    mul-float v48, v24, v42

    mul-float v49, v26, v44

    add-float v48, v48, v49

    mul-float v49, v27, v43

    sub-float v29, v48, v49

    .line 258
    .local v29, "tx":F
    mul-float v48, v24, v43

    mul-float v49, v27, v42

    add-float v48, v48, v49

    mul-float v49, v25, v44

    sub-float v30, v48, v49

    .line 259
    .local v30, "ty":F
    mul-float v48, v24, v44

    mul-float v49, v25, v43

    add-float v48, v48, v49

    mul-float v49, v26, v42

    sub-float v31, v48, v49

    .line 261
    .local v31, "tz":F
    mul-float v48, v29, v13

    mul-float v49, v28, v14

    add-float v48, v48, v49

    mul-float v49, v30, v16

    add-float v48, v48, v49

    mul-float v49, v31, v15

    sub-float v42, v48, v49

    .line 262
    mul-float v48, v30, v13

    mul-float v49, v28, v15

    add-float v48, v48, v49

    mul-float v49, v31, v14

    add-float v48, v48, v49

    mul-float v49, v29, v16

    sub-float v43, v48, v49

    .line 263
    mul-float v48, v31, v13

    mul-float v49, v28, v16

    add-float v48, v48, v49

    mul-float v49, v29, v15

    add-float v48, v48, v49

    mul-float v49, v30, v14

    sub-float v44, v48, v49

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x1

    aget v48, v48, v49

    add-float v48, v48, v42

    mul-float v48, v48, v4

    add-float v5, v5, v48

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x2

    aget v48, v48, v49

    add-float v48, v48, v43

    mul-float v48, v48, v4

    add-float v6, v6, v48

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x3

    aget v48, v48, v49

    add-float v48, v48, v44

    mul-float v48, v48, v4

    add-float v7, v7, v48

    .line 241
    add-int/lit8 v17, v17, 0x1

    move/from16 v47, v46

    .end local v46    # "weightOffset":I
    .restart local v47    # "weightOffset":I
    goto/16 :goto_1

    .line 270
    .end local v4    # "bias":F
    .end local v13    # "iw":F
    .end local v14    # "ix":F
    .end local v15    # "iy":F
    .end local v16    # "iz":F
    .end local v18    # "jointOffset":I
    .end local v24    # "qw":F
    .end local v25    # "qx":F
    .end local v26    # "qy":F
    .end local v27    # "qz":F
    .end local v28    # "tw":F
    .end local v29    # "tx":F
    .end local v30    # "ty":F
    .end local v31    # "tz":F
    .end local v42    # "vx":F
    .end local v43    # "vy":F
    .end local v44    # "vz":F
    :cond_0
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "k":I
    .local v20, "k":I
    aput v5, p4, v19

    .line 271
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "k":I
    .restart local v19    # "k":I
    aput v6, p4, v20

    .line 272
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "k":I
    .restart local v20    # "k":I
    aput v7, p4, v19

    .line 273
    add-int/lit8 v19, v20, 0x2

    .line 275
    .end local v20    # "k":I
    .restart local v19    # "k":I
    add-int/lit8 v19, v19, 0x3

    .line 232
    add-int v35, v35, p5

    goto/16 :goto_0

    .line 278
    .end local v5    # "finalX":F
    .end local v6    # "finalY":F
    .end local v7    # "finalZ":F
    .end local v17    # "j":I
    .end local v45    # "weightCount":I
    .end local v47    # "weightOffset":I
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v9, v0, :cond_2

    .line 280
    aget-short v10, p3, v9

    .line 281
    .local v10, "i1":S
    add-int/lit8 v48, v9, 0x1

    aget-short v11, p3, v48

    .line 282
    .local v11, "i2":S
    add-int/lit8 v48, v9, 0x2

    aget-short v12, p3, v48

    .line 283
    .local v12, "i3":S
    mul-int/lit8 v39, v10, 0x8

    .line 284
    .local v39, "vo1":I
    mul-int/lit8 v40, v11, 0x8

    .line 285
    .local v40, "vo2":I
    mul-int/lit8 v41, v12, 0x8

    .line 287
    .local v41, "vo3":I
    new-instance v32, Lcom/badlogic/gdx/math/Vector3;

    aget v48, p4, v39

    add-int/lit8 v49, v39, 0x1

    aget v49, p4, v49

    add-int/lit8 v50, v39, 0x2

    aget v50, p4, v50

    move-object/from16 v0, v32

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 288
    .local v32, "v1":Lcom/badlogic/gdx/math/Vector3;
    new-instance v33, Lcom/badlogic/gdx/math/Vector3;

    aget v48, p4, v40

    add-int/lit8 v49, v40, 0x1

    aget v49, p4, v49

    add-int/lit8 v50, v40, 0x2

    aget v50, p4, v50

    move-object/from16 v0, v33

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 289
    .local v33, "v2":Lcom/badlogic/gdx/math/Vector3;
    new-instance v34, Lcom/badlogic/gdx/math/Vector3;

    aget v48, p4, v41

    add-int/lit8 v49, v41, 0x1

    aget v49, p4, v49

    add-int/lit8 v50, v41, 0x2

    aget v50, p4, v50

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 292
    .local v34, "v3":Lcom/badlogic/gdx/math/Vector3;
    invoke-static/range {v32 .. v34}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calcNor(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 295
    .local v8, "fn":Lcom/badlogic/gdx/math/Vector3;
    mul-int/lit8 v21, v10, 0x7

    .line 296
    .local v21, "ovo1":I
    mul-int/lit8 v22, v11, 0x7

    .line 297
    .local v22, "ovo2":I
    mul-int/lit8 v23, v12, 0x7

    .line 299
    .local v23, "ovo3":I
    add-int/lit8 v48, v21, 0x4

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 300
    add-int/lit8 v48, v21, 0x5

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 301
    add-int/lit8 v48, v21, 0x6

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 302
    add-int/lit8 v48, v22, 0x4

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 303
    add-int/lit8 v48, v22, 0x5

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 304
    add-int/lit8 v48, v22, 0x6

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 305
    add-int/lit8 v48, v23, 0x4

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 306
    add-int/lit8 v48, v23, 0x5

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 307
    add-int/lit8 v48, v23, 0x6

    aget v49, p2, v48

    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v50, v0

    add-float v49, v49, v50

    aput v49, p2, v48

    .line 278
    add-int/lit8 v9, v9, 0x3

    goto/16 :goto_2

    .line 310
    .end local v8    # "fn":Lcom/badlogic/gdx/math/Vector3;
    .end local v10    # "i1":S
    .end local v11    # "i2":S
    .end local v12    # "i3":S
    .end local v21    # "ovo1":I
    .end local v22    # "ovo2":I
    .end local v23    # "ovo3":I
    .end local v32    # "v1":Lcom/badlogic/gdx/math/Vector3;
    .end local v33    # "v2":Lcom/badlogic/gdx/math/Vector3;
    .end local v34    # "v3":Lcom/badlogic/gdx/math/Vector3;
    .end local v39    # "vo1":I
    .end local v40    # "vo2":I
    .end local v41    # "vo3":I
    :cond_2
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v9, v0, :cond_3

    .line 311
    aget-short v10, p3, v9

    .line 312
    .restart local v10    # "i1":S
    add-int/lit8 v48, v9, 0x1

    aget-short v11, p3, v48

    .line 313
    .restart local v11    # "i2":S
    add-int/lit8 v48, v9, 0x2

    aget-short v12, p3, v48

    .line 314
    .restart local v12    # "i3":S
    mul-int/lit8 v21, v10, 0x7

    .line 315
    .restart local v21    # "ovo1":I
    mul-int/lit8 v22, v11, 0x7

    .line 316
    .restart local v22    # "ovo2":I
    mul-int/lit8 v23, v12, 0x7

    .line 318
    .restart local v23    # "ovo3":I
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v49, v21, 0x4

    aget v49, p2, v49

    add-int/lit8 v50, v21, 0x5

    aget v50, p2, v50

    add-int/lit8 v51, v21, 0x6

    aget v51, p2, v51

    invoke-virtual/range {v48 .. v51}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 319
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 320
    add-int/lit8 v48, v21, 0x4

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 321
    add-int/lit8 v48, v21, 0x5

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 322
    add-int/lit8 v48, v21, 0x6

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 324
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v49, v22, 0x4

    aget v49, p2, v49

    add-int/lit8 v50, v22, 0x5

    aget v50, p2, v50

    add-int/lit8 v51, v22, 0x6

    aget v51, p2, v51

    invoke-virtual/range {v48 .. v51}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 325
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 326
    add-int/lit8 v48, v22, 0x4

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 327
    add-int/lit8 v48, v22, 0x5

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 328
    add-int/lit8 v48, v22, 0x6

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 330
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v49, v23, 0x4

    aget v49, p2, v49

    add-int/lit8 v50, v23, 0x5

    aget v50, p2, v50

    add-int/lit8 v51, v23, 0x6

    aget v51, p2, v51

    invoke-virtual/range {v48 .. v51}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 331
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 332
    add-int/lit8 v48, v23, 0x4

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 333
    add-int/lit8 v48, v23, 0x5

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 334
    add-int/lit8 v48, v23, 0x6

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v49, v0

    aput v49, p2, v48

    .line 310
    add-int/lit8 v9, v9, 0x3

    goto/16 :goto_3

    .line 338
    .end local v10    # "i1":S
    .end local v11    # "i2":S
    .end local v12    # "i3":S
    .end local v21    # "ovo1":I
    .end local v22    # "ovo2":I
    .end local v23    # "ovo3":I
    :cond_3
    const/16 v35, 0x2

    :goto_4
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v35

    move/from16 v1, v48

    if-ge v0, v1, :cond_5

    .line 339
    aget v48, p2, v35

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v46, v0

    .line 340
    .restart local v46    # "weightOffset":I
    add-int/lit8 v48, v35, 0x1

    aget v48, p2, v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v45, v0

    .line 341
    .restart local v45    # "weightCount":I
    mul-int v46, v46, p6

    .line 343
    const/16 v17, 0x0

    .restart local v17    # "j":I
    move/from16 v47, v46

    .end local v46    # "weightOffset":I
    .restart local v47    # "weightOffset":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v45

    if-ge v0, v1, :cond_4

    .line 344
    add-int/lit8 v46, v47, 0x1

    .end local v47    # "weightOffset":I
    .restart local v46    # "weightOffset":I
    aget v48, p1, v47

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v48, v0

    shl-int/lit8 v18, v48, 0x3

    .line 351
    .restart local v18    # "jointOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x4

    aget v25, v48, v49

    .line 352
    .restart local v25    # "qx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x5

    aget v26, v48, v49

    .line 353
    .restart local v26    # "qy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x6

    aget v27, v48, v49

    .line 354
    .restart local v27    # "qz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v48, v0

    add-int/lit8 v49, v18, 0x7

    aget v24, v48, v49

    .line 356
    .restart local v24    # "qw":F
    add-int/lit8 v48, v35, 0x2

    aget v36, p2, v48

    .line 357
    .local v36, "vnx":F
    add-int/lit8 v48, v35, 0x3

    aget v37, p2, v48

    .line 358
    .local v37, "vny":F
    add-int/lit8 v48, v35, 0x4

    aget v38, p2, v48

    .line 360
    .local v38, "vnz":F
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v48

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 361
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v25

    move-object/from16 v1, v48

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 362
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v26

    move-object/from16 v1, v48

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 363
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v27

    move-object/from16 v1, v48

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 364
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v24

    move-object/from16 v1, v48

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 365
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->invert()V

    .line 366
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v48 .. v49}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 368
    add-int/lit8 v47, v46, 0x1

    .end local v46    # "weightOffset":I
    .restart local v47    # "weightOffset":I
    aget v48, p1, v46

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v49, v0

    add-float v48, v48, v49

    aput v48, p1, v46

    .line 369
    add-int/lit8 v46, v47, 0x1

    .end local v47    # "weightOffset":I
    .restart local v46    # "weightOffset":I
    aget v48, p1, v47

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v49, v0

    add-float v48, v48, v49

    aput v48, p1, v47

    .line 370
    add-int/lit8 v47, v46, 0x1

    .end local v46    # "weightOffset":I
    .restart local v47    # "weightOffset":I
    aget v48, p1, v46

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v49, v0

    add-float v48, v48, v49

    aput v48, p1, v46

    .line 343
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 338
    .end local v18    # "jointOffset":I
    .end local v24    # "qw":F
    .end local v25    # "qx":F
    .end local v26    # "qy":F
    .end local v27    # "qz":F
    .end local v36    # "vnx":F
    .end local v37    # "vny":F
    .end local v38    # "vnz":F
    :cond_4
    add-int v35, v35, p5

    goto/16 :goto_4

    .line 374
    .end local v17    # "j":I
    .end local v45    # "weightCount":I
    .end local v47    # "weightOffset":I
    :cond_5
    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v9, v0, :cond_6

    .line 375
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v49, v9, 0x5

    aget v49, p1, v49

    add-int/lit8 v50, v9, 0x6

    aget v50, p1, v50

    add-int/lit8 v51, v9, 0x7

    aget v51, p1, v51

    invoke-virtual/range {v48 .. v51}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 376
    sget-object v48, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v48 .. v48}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 377
    add-int/lit8 v48, v9, 0x5

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v49, v0

    aput v49, p1, v48

    .line 378
    add-int/lit8 v48, v9, 0x6

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v49, v0

    aput v49, p1, v48

    .line 379
    add-int/lit8 v48, v9, 0x7

    sget-object v49, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v49

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v49, v0

    aput v49, p1, v48

    .line 374
    add-int v9, v9, p6

    goto :goto_6

    .line 381
    :cond_6
    return-void
.end method

.method public static calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 31
    .param p0, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p1, "weights"    # [F
    .param p2, "vertices"    # [F
    .param p3, "verts"    # [F
    .param p4, "vstride"    # I
    .param p5, "wstride"    # I
    .param p6, "bbox"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 160
    const/16 v22, 0x2

    .local v22, "vertexOffset":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "finalX":F
    const/4 v4, 0x0

    .line 163
    .local v4, "finalY":F
    const/4 v5, 0x0

    .line 165
    .local v5, "finalZ":F
    aget v29, p2, v22

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 166
    .local v27, "weightOffset":I
    add-int/lit8 v29, v22, 0x1

    aget v29, p2, v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v26, v0

    .line 167
    .local v26, "weightCount":I
    shl-int/lit8 v29, v27, 0x2

    add-int v27, v27, v29

    .line 169
    const/4 v10, 0x0

    .local v10, "j":I
    move/from16 v28, v27

    .end local v27    # "weightOffset":I
    .local v28, "weightOffset":I
    :goto_1
    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    .line 170
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v29, p1, v28

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    shl-int/lit8 v11, v29, 0x3

    .line 171
    .local v11, "jointOffset":I
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    aget v2, p1, v27

    .line 172
    .local v2, "bias":F
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v23, p1, v28

    .line 173
    .local v23, "vx":F
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    aget v24, p1, v27

    .line 174
    .local v24, "vy":F
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v25, p1, v28

    .line 176
    .local v25, "vz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x4

    aget v15, v29, v30

    .line 177
    .local v15, "qx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x5

    aget v16, v29, v30

    .line 178
    .local v16, "qy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x6

    aget v17, v29, v30

    .line 179
    .local v17, "qz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x7

    aget v14, v29, v30

    .line 181
    .local v14, "qw":F
    neg-float v7, v15

    .local v7, "ix":F
    move/from16 v0, v16

    neg-float v8, v0

    .local v8, "iy":F
    move/from16 v0, v17

    neg-float v9, v0

    .local v9, "iz":F
    move v6, v14

    .line 183
    .local v6, "iw":F
    neg-float v0, v15

    move/from16 v29, v0

    mul-float v29, v29, v23

    mul-float v30, v16, v24

    sub-float v29, v29, v30

    mul-float v30, v17, v25

    sub-float v18, v29, v30

    .line 184
    .local v18, "tw":F
    mul-float v29, v14, v23

    mul-float v30, v16, v25

    add-float v29, v29, v30

    mul-float v30, v17, v24

    sub-float v19, v29, v30

    .line 185
    .local v19, "tx":F
    mul-float v29, v14, v24

    mul-float v30, v17, v23

    add-float v29, v29, v30

    mul-float v30, v15, v25

    sub-float v20, v29, v30

    .line 186
    .local v20, "ty":F
    mul-float v29, v14, v25

    mul-float v30, v15, v24

    add-float v29, v29, v30

    mul-float v30, v16, v23

    sub-float v21, v29, v30

    .line 188
    .local v21, "tz":F
    mul-float v29, v19, v6

    mul-float v30, v18, v7

    add-float v29, v29, v30

    mul-float v30, v20, v9

    add-float v29, v29, v30

    mul-float v30, v21, v8

    sub-float v23, v29, v30

    .line 189
    mul-float v29, v20, v6

    mul-float v30, v18, v8

    add-float v29, v29, v30

    mul-float v30, v21, v7

    add-float v29, v29, v30

    mul-float v30, v19, v9

    sub-float v24, v29, v30

    .line 190
    mul-float v29, v21, v6

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v19, v8

    add-float v29, v29, v30

    mul-float v30, v20, v7

    sub-float v25, v29, v30

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x1

    aget v29, v29, v30

    add-float v29, v29, v23

    mul-float v29, v29, v2

    add-float v3, v3, v29

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x2

    aget v29, v29, v30

    add-float v29, v29, v24

    mul-float v29, v29, v2

    add-float v4, v4, v29

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x3

    aget v29, v29, v30

    add-float v29, v29, v25

    mul-float v29, v29, v2

    add-float v5, v5, v29

    .line 169
    add-int/lit8 v10, v10, 0x1

    move/from16 v28, v27

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    goto/16 :goto_1

    .line 197
    .end local v2    # "bias":F
    .end local v6    # "iw":F
    .end local v7    # "ix":F
    .end local v8    # "iy":F
    .end local v9    # "iz":F
    .end local v11    # "jointOffset":I
    .end local v14    # "qw":F
    .end local v15    # "qx":F
    .end local v16    # "qy":F
    .end local v17    # "qz":F
    .end local v18    # "tw":F
    .end local v19    # "tx":F
    .end local v20    # "ty":F
    .end local v21    # "tz":F
    .end local v23    # "vx":F
    .end local v24    # "vy":F
    .end local v25    # "vz":F
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 199
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "k":I
    .local v13, "k":I
    aput v3, p3, v12

    .line 200
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "k":I
    .restart local v12    # "k":I
    aput v4, p3, v13

    .line 201
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "k":I
    .restart local v13    # "k":I
    aput v5, p3, v12

    .line 202
    add-int/lit8 v12, v13, 0x2

    .line 160
    .end local v13    # "k":I
    .restart local v12    # "k":I
    add-int v22, v22, p4

    goto/16 :goto_0

    .line 204
    .end local v3    # "finalX":F
    .end local v4    # "finalY":F
    .end local v5    # "finalZ":F
    .end local v10    # "j":I
    .end local v26    # "weightCount":I
    .end local v28    # "weightOffset":I
    :cond_1
    return-void
.end method

.method public static calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 33
    .param p0, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p1, "weights"    # [F
    .param p2, "vertices"    # [F
    .param p3, "verts"    # [F
    .param p4, "vstride"    # I
    .param p5, "wstride"    # I
    .param p6, "bbox"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 79
    const/16 v22, 0x2

    .local v22, "vertexOffset":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 80
    const/4 v3, 0x0

    .line 81
    .local v3, "finalX":F
    const/4 v4, 0x0

    .line 82
    .local v4, "finalY":F
    const/4 v5, 0x0

    .line 84
    .local v5, "finalZ":F
    aget v29, p2, v22

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v27, v0

    .line 85
    .local v27, "weightOffset":I
    add-int/lit8 v29, v22, 0x1

    aget v29, p2, v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v26, v0

    .line 86
    .local v26, "weightCount":I
    mul-int v27, v27, p5

    .line 89
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v30, v22, 0x2

    aget v30, p2, v30

    add-int/lit8 v31, v22, 0x3

    aget v31, p2, v31

    add-int/lit8 v32, v22, 0x4

    aget v32, p2, v32

    invoke-virtual/range {v29 .. v32}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 94
    const/4 v10, 0x0

    .local v10, "j":I
    move/from16 v28, v27

    .end local v27    # "weightOffset":I
    .local v28, "weightOffset":I
    :goto_1
    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    .line 95
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v29, p1, v28

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    shl-int/lit8 v11, v29, 0x3

    .line 96
    .local v11, "jointOffset":I
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    aget v2, p1, v27

    .line 97
    .local v2, "bias":F
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v23, p1, v28

    .line 98
    .local v23, "vx":F
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    aget v24, p1, v27

    .line 99
    .local v24, "vy":F
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v25, p1, v28

    .line 102
    .local v25, "vz":F
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    aget v30, p1, v27

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "weightOffset":I
    .restart local v27    # "weightOffset":I
    aget v31, p1, v28

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "weightOffset":I
    .restart local v28    # "weightOffset":I
    aget v32, p1, v27

    invoke-virtual/range {v29 .. v32}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x4

    aget v15, v29, v30

    .line 105
    .local v15, "qx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x5

    aget v16, v29, v30

    .line 106
    .local v16, "qy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x6

    aget v17, v29, v30

    .line 107
    .local v17, "qz":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x7

    aget v14, v29, v30

    .line 110
    .local v14, "qw":F
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v0, v29

    iput v15, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->x:F

    .line 111
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v16

    move-object/from16 v1, v29

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->y:F

    .line 112
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move/from16 v0, v17

    move-object/from16 v1, v29

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->z:F

    .line 113
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    move-object/from16 v0, v29

    iput v14, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->w:F

    .line 114
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->quat:Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;

    sget-object v30, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v29 .. v30}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Quaternion;->rotate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 115
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 116
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    sget-object v30, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v29 .. v30}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 119
    neg-float v7, v15

    .local v7, "ix":F
    move/from16 v0, v16

    neg-float v8, v0

    .local v8, "iy":F
    move/from16 v0, v17

    neg-float v9, v0

    .local v9, "iz":F
    move v6, v14

    .line 121
    .local v6, "iw":F
    neg-float v0, v15

    move/from16 v29, v0

    mul-float v29, v29, v23

    mul-float v30, v16, v24

    sub-float v29, v29, v30

    mul-float v30, v17, v25

    sub-float v18, v29, v30

    .line 122
    .local v18, "tw":F
    mul-float v29, v14, v23

    mul-float v30, v16, v25

    add-float v29, v29, v30

    mul-float v30, v17, v24

    sub-float v19, v29, v30

    .line 123
    .local v19, "tx":F
    mul-float v29, v14, v24

    mul-float v30, v17, v23

    add-float v29, v29, v30

    mul-float v30, v15, v25

    sub-float v20, v29, v30

    .line 124
    .local v20, "ty":F
    mul-float v29, v14, v25

    mul-float v30, v15, v24

    add-float v29, v29, v30

    mul-float v30, v16, v23

    sub-float v21, v29, v30

    .line 126
    .local v21, "tz":F
    mul-float v29, v19, v6

    mul-float v30, v18, v7

    add-float v29, v29, v30

    mul-float v30, v20, v9

    add-float v29, v29, v30

    mul-float v30, v21, v8

    sub-float v23, v29, v30

    .line 127
    mul-float v29, v20, v6

    mul-float v30, v18, v8

    add-float v29, v29, v30

    mul-float v30, v21, v7

    add-float v29, v29, v30

    mul-float v30, v19, v9

    sub-float v24, v29, v30

    .line 128
    mul-float v29, v21, v6

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v19, v8

    add-float v29, v29, v30

    mul-float v30, v20, v7

    sub-float v25, v29, v30

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x1

    aget v29, v29, v30

    add-float v29, v29, v23

    mul-float v29, v29, v2

    add-float v3, v3, v29

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x2

    aget v29, v29, v30

    add-float v29, v29, v24

    mul-float v29, v29, v2

    add-float v4, v4, v29

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    move-object/from16 v29, v0

    add-int/lit8 v30, v11, 0x3

    aget v29, v29, v30

    add-float v29, v29, v25

    mul-float v29, v29, v2

    add-float v5, v5, v29

    .line 94
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 135
    .end local v2    # "bias":F
    .end local v6    # "iw":F
    .end local v7    # "ix":F
    .end local v8    # "iy":F
    .end local v9    # "iz":F
    .end local v11    # "jointOffset":I
    .end local v14    # "qw":F
    .end local v15    # "qx":F
    .end local v16    # "qy":F
    .end local v17    # "qz":F
    .end local v18    # "tw":F
    .end local v19    # "tx":F
    .end local v20    # "ty":F
    .end local v21    # "tz":F
    .end local v23    # "vx":F
    .end local v24    # "vy":F
    .end local v25    # "vz":F
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 137
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "k":I
    .local v13, "k":I
    aput v3, p3, v12

    .line 138
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "k":I
    .restart local v12    # "k":I
    aput v4, p3, v13

    .line 139
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "k":I
    .restart local v13    # "k":I
    aput v5, p3, v12

    .line 140
    add-int/lit8 v12, v13, 0x2

    .line 143
    .end local v13    # "k":I
    .restart local v12    # "k":I
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual/range {v29 .. v29}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 145
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "k":I
    .restart local v13    # "k":I
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v29, v0

    aput v29, p3, v12

    .line 146
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "k":I
    .restart local v12    # "k":I
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v29, v0

    aput v29, p3, v13

    .line 147
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "k":I
    .restart local v13    # "k":I
    sget-object v29, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->bn:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v29, v0

    aput v29, p3, v12

    .line 79
    add-int v22, v22, p4

    move v12, v13

    .end local v13    # "k":I
    .restart local v12    # "k":I
    goto/16 :goto_0

    .line 156
    .end local v3    # "finalX":F
    .end local v4    # "finalY":F
    .end local v5    # "finalZ":F
    .end local v10    # "j":I
    .end local v26    # "weightCount":I
    .end local v28    # "weightOffset":I
    :cond_1
    return-void
.end method


# virtual methods
.method public calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V
    .locals 7
    .param p1, "bindPoseSkeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p2, "verts"    # [F

    .prologue
    .line 211
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateNormalsBind(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[S[FII)V

    .line 212
    return-void
.end method

.method public calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 7
    .param p1, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p2, "verts"    # [F
    .param p3, "bbox"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVertices(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 73
    return-void
.end method

.method public calculateVerticesJni(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F)V
    .locals 4
    .param p1, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p2, "verts"    # [F

    .prologue
    .line 207
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;->joints:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    invoke-static {v0, v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Jni;->calculateVertices([F[F[F[FI)V

    .line 208
    return-void
.end method

.method public calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[FLcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 7
    .param p1, "skeleton"    # Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;
    .param p2, "verts"    # [F
    .param p3, "bbox"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    move-object v0, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->calculateVerticesN(Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Joints;[F[F[FIILcom/badlogic/gdx/math/collision/BoundingBox;)V

    .line 69
    return-void
.end method

.method public createVertexArray()[F
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->createVertexArray(I)[F

    move-result-object v0

    return-object v0
.end method

.method public createVertexArray(I)[F
    .locals 7
    .param p1, "stride"    # I

    .prologue
    .line 50
    iget v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    mul-int/2addr v5, p1

    new-array v4, v5, [F

    .line 51
    .local v4, "verts":[F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    .line 52
    .local v3, "vertex_stride":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 53
    add-int/lit8 v1, v1, 0x3

    .line 54
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    aget v5, v5, v0

    aput v5, v4, v1

    .line 55
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    aput v5, v4, v2

    .line 56
    const/16 v5, 0x8

    if-ne p1, v5, :cond_0

    .line 57
    add-int/lit8 v1, v1, 0x3

    .line 52
    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    .line 60
    :cond_1
    return-object v4
.end method

.method public getIndices()[S
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    return-object v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    .line 386
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    .line 387
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    .line 388
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    .line 389
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    .line 391
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    .line 392
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    .line 393
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, v1, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    :cond_2
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->shader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 407
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numVertices:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 408
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numWeights:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 409
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->numTriangles:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 410
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerVertex:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 411
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->floatsPerWeight:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->vertices:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->indices:[S

    aget-short v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loaders/md5/MD5Mesh;->weights:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 421
    :cond_2
    return-void
.end method
