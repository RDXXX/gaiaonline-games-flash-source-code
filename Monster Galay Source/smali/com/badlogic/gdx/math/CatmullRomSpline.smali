.class public Lcom/badlogic/gdx/math/CatmullRomSpline;
.super Ljava/lang/Object;
.source "CatmullRomSpline.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2daa144d239805bbL


# instance fields
.field T1:Lcom/badlogic/gdx/math/Vector3;

.field T2:Lcom/badlogic/gdx/math/Vector3;

.field private controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T1:Lcom/badlogic/gdx/math/Vector3;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T2:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getControlPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getPath(I)Ljava/util/List;
    .locals 16
    .param p1, "numPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v11, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector3;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v11

    .line 55
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 56
    .local v1, "T1":Lcom/badlogic/gdx/math/Vector3;
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 58
    .local v2, "T2":Lcom/badlogic/gdx/math/Vector3;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x3

    if-gt v7, v13, :cond_3

    .line 59
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const/high16 v13, 0x3f800000    # 1.0f

    add-int/lit8 v14, p1, 0x1

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 61
    .local v8, "increment":F
    move v12, v8

    .line 63
    .local v12, "t":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v7, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v15, v7, -0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v7, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    move/from16 v0, p1

    if-ge v9, v0, :cond_2

    .line 67
    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v12

    mul-float/2addr v13, v12

    mul-float/2addr v13, v12

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v12

    mul-float/2addr v14, v12

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v3, v13, v14

    .line 69
    .local v3, "h1":F
    const/high16 v13, -0x40000000    # -2.0f

    mul-float/2addr v13, v12

    mul-float/2addr v13, v12

    mul-float/2addr v13, v12

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v14, v12

    mul-float/2addr v14, v12

    add-float v4, v13, v14

    .line 71
    .local v4, "h2":F
    mul-float v13, v12, v12

    mul-float/2addr v13, v12

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v12

    mul-float/2addr v14, v12

    sub-float/2addr v13, v14

    add-float v5, v13, v12

    .line 73
    .local v5, "h3":F
    mul-float v13, v12, v12

    mul-float/2addr v13, v12

    mul-float v14, v12, v12

    sub-float v6, v13, v14

    .line 75
    .local v6, "h4":F
    new-instance v14, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v14, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 76
    .local v10, "point":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v7, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 78
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-float/2addr v12, v8

    .line 66
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 58
    .end local v3    # "h1":F
    .end local v4    # "h2":F
    .end local v5    # "h3":F
    .end local v6    # "h4":F
    .end local v10    # "point":Lcom/badlogic/gdx/math/Vector3;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 84
    .end local v8    # "increment":F
    .end local v9    # "j":I
    .end local v12    # "t":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getPath([Lcom/badlogic/gdx/math/Vector3;I)V
    .locals 15
    .param p1, "points"    # [Lcom/badlogic/gdx/math/Vector3;
    .param p2, "numPoints"    # I

    .prologue
    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, "idx":I
    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x4

    if-ge v12, v13, :cond_0

    .line 124
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    if-gt v5, v12, :cond_2

    .line 99
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .local v7, "idx":I
    aget-object v13, p1, v6

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 100
    const/high16 v12, 0x3f800000    # 1.0f

    add-int/lit8 v13, p2, 0x1

    int-to-float v13, v13

    div-float v8, v12, v13

    .line 101
    .local v8, "increment":F
    move v11, v8

    .line 103
    .local v11, "t":F
    iget-object v13, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v5, 0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 104
    iget-object v13, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v5, 0x2

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 106
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_1

    .line 107
    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float v1, v12, v13

    .line 109
    .local v1, "h1":F
    const/high16 v12, -0x40000000    # -2.0f

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    mul-float/2addr v12, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    add-float v2, v12, v13

    .line 111
    .local v2, "h2":F
    mul-float v12, v11, v11

    mul-float/2addr v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    sub-float/2addr v12, v13

    add-float v3, v12, v11

    .line 113
    .local v3, "h3":F
    mul-float v12, v11, v11

    mul-float/2addr v12, v11

    mul-float v13, v11, v11

    sub-float v4, v12, v13

    .line 115
    .local v4, "h4":F
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget-object v13, p1, v7

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 116
    .local v10, "point":Lcom/badlogic/gdx/math/Vector3;
    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v13, v5, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 117
    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 118
    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 119
    add-float/2addr v11, v8

    .line 106
    add-int/lit8 v9, v9, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto :goto_2

    .line 98
    .end local v1    # "h1":F
    .end local v2    # "h2":F
    .end local v3    # "h3":F
    .end local v4    # "h4":F
    .end local v10    # "point":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    goto/16 :goto_1

    .line 123
    .end local v8    # "increment":F
    .end local v9    # "j":I
    .end local v11    # "t":F
    :cond_2
    aget-object v13, p1, v6

    iget-object v12, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    iget-object v14, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto/16 :goto_0
.end method

.method public getTangentNormals(ILcom/badlogic/gdx/math/Vector3;)Ljava/util/List;
    .locals 5
    .param p1, "numPoints"    # I
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->getTangents(I)Ljava/util/List;

    move-result-object v3

    .line 224
    .local v3, "tangents":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "normals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector3;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector3;

    .line 227
    .local v2, "tangent":Lcom/badlogic/gdx/math/Vector3;
    new-instance v4, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v4, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v2    # "tangent":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    return-object v1
.end method

.method public getTangentNormals(ILjava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "numPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "up":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->getTangents(I)Ljava/util/List;

    move-result-object v5

    .line 234
    .local v5, "tangents":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v3, "normals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector3;>;"
    const/4 v0, 0x0

    .line 237
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    .line 238
    .local v4, "tangent":Lcom/badlogic/gdx/math/Vector3;
    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v7, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 240
    .end local v4    # "tangent":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    return-object v3
.end method

.method public getTangentNormals2D(I)Ljava/util/List;
    .locals 18
    .param p1, "numPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v13, "tangents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector3;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 214
    :cond_0
    return-object v13

    .line 179
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 180
    .local v1, "T1":Lcom/badlogic/gdx/math/Vector3;
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 182
    .local v2, "T2":Lcom/badlogic/gdx/math/Vector3;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x3

    if-gt v7, v15, :cond_0

    .line 183
    const/high16 v15, 0x3f800000    # 1.0f

    add-int/lit8 v16, p1, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 184
    .local v8, "increment":F
    move v12, v8

    .line 186
    .local v12, "t":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v16, v7, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v16, v7, 0x2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-virtual/range {v15 .. v16}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 189
    new-instance v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v15, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v15}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 190
    .local v10, "normal":Lcom/badlogic/gdx/math/Vector3;
    iget v14, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 191
    .local v14, "x":F
    iget v15, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v15, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 192
    neg-float v15, v14

    iput v15, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 193
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    move/from16 v0, p1

    if-ge v9, v0, :cond_2

    .line 196
    const/high16 v15, 0x40c00000    # 6.0f

    mul-float/2addr v15, v12

    mul-float/2addr v15, v12

    const/high16 v16, 0x40c00000    # 6.0f

    mul-float v16, v16, v12

    sub-float v3, v15, v16

    .line 197
    .local v3, "h1":F
    const/high16 v15, -0x3f400000    # -6.0f

    mul-float/2addr v15, v12

    mul-float/2addr v15, v12

    const/high16 v16, 0x40c00000    # 6.0f

    mul-float v16, v16, v12

    add-float v4, v15, v16

    .line 198
    .local v4, "h2":F
    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v15, v12

    mul-float/2addr v15, v12

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v16, v16, v12

    sub-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v5, v15, v16

    .line 199
    .local v5, "h3":F
    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v15, v12

    mul-float/2addr v15, v12

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v16, v16, v12

    sub-float v6, v15, v16

    .line 201
    .local v6, "h4":F
    new-instance v16, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    .line 202
    .local v11, "point":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v16, v7, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v15}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 203
    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 204
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 205
    invoke-virtual {v11}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 206
    iget v14, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 207
    iget v15, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v15, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 208
    neg-float v15, v14

    iput v15, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 209
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-float/2addr v12, v8

    .line 195
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 182
    .end local v3    # "h1":F
    .end local v4    # "h2":F
    .end local v5    # "h3":F
    .end local v6    # "h4":F
    .end local v11    # "point":Lcom/badlogic/gdx/math/Vector3;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public getTangents(I)Ljava/util/List;
    .locals 16
    .param p1, "numPoints"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v12, "tangents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/math/Vector3;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v12

    .line 135
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 136
    .local v1, "T1":Lcom/badlogic/gdx/math/Vector3;
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 138
    .local v2, "T2":Lcom/badlogic/gdx/math/Vector3;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x3

    if-gt v7, v13, :cond_3

    .line 139
    const/high16 v13, 0x3f800000    # 1.0f

    add-int/lit8 v14, p1, 0x1

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 140
    .local v8, "increment":F
    move v11, v8

    .line 142
    .local v11, "t":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v7, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v15, v7, -0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v7, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 145
    new-instance v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v13, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    move/from16 v0, p1

    if-ge v9, v0, :cond_2

    .line 148
    const/high16 v13, 0x40c00000    # 6.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v14, v11

    sub-float v3, v13, v14

    .line 149
    .local v3, "h1":F
    const/high16 v13, -0x3f400000    # -6.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v14, v11

    add-float v4, v13, v14

    .line 150
    .local v4, "h2":F
    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    add-float v5, v13, v14

    .line 151
    .local v5, "h3":F
    const/high16 v13, 0x40400000    # 3.0f

    mul-float/2addr v13, v11

    mul-float/2addr v13, v11

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    sub-float v6, v13, v14

    .line 153
    .local v6, "h4":F
    new-instance v14, Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v14, v13}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    .line 154
    .local v10, "point":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v14, v7, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 155
    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 156
    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 157
    invoke-virtual {v10}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-float/2addr v11, v8

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 138
    .end local v3    # "h1":F
    .end local v4    # "h2":F
    .end local v5    # "h3":F
    .end local v6    # "h4":F
    .end local v10    # "point":Lcom/badlogic/gdx/math/Vector3;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 162
    .end local v8    # "increment":F
    .end local v9    # "j":I
    .end local v11    # "t":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    if-lt v13, v14, :cond_0

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x3

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
