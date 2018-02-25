.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Group.java"


# static fields
.field public static debug:Z

.field public static debugTexture:Lcom/badlogic/gdx/graphics/Texture;

.field static final p:Lcom/badlogic/gdx/math/Vector2;

.field static final ref:Lcom/badlogic/gdx/math/Vector2;

.field static final xAxis:Lcom/badlogic/gdx/math/Vector2;

.field static final yAxis:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field protected final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field public focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            ">;"
        }
    .end annotation
.end field

.field protected final immutableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field protected final immutableGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            ">;"
        }
    .end annotation
.end field

.field public keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected final namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field protected final oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

.field final point:Lcom/badlogic/gdx/math/Vector2;

.field protected final scenetransform:Lcom/badlogic/gdx/math/Matrix3;

.field public scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field protected final tmp4:Lcom/badlogic/gdx/math/Matrix4;

.field protected final transform:Lcom/badlogic/gdx/math/Matrix3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    .line 152
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->xAxis:Lcom/badlogic/gdx/math/Vector2;

    .line 153
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->yAxis:Lcom/badlogic/gdx/math/Vector2;

    .line 154
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->p:Lcom/badlogic/gdx/math/Vector2;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->ref:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp4:Lcom/badlogic/gdx/math/Matrix4;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    .line 51
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 52
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 53
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    .line 63
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableChildren:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableGroups:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 69
    return-void
.end method

.method public static disableDebugging()V
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 530
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    .line 531
    return-void
.end method

.method public static enableDebugging(Ljava/lang/String;)V
    .locals 3
    .param p0, "debugTextureFile"    # Ljava/lang/String;

    .prologue
    .line 524
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 525
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    .line 526
    return-void
.end method

.method public static toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V
    .locals 15
    .param p0, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "out"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 163
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2

    .line 164
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    .line 165
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v13, p1, v13

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 166
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v13, p2, v13

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 239
    :goto_0
    return-void

    .line 168
    :cond_0
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_1

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_1

    .line 169
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v13, p1, v13

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 170
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v13, p2, v13

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 172
    :cond_1
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v13, p1, v13

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    sub-float/2addr v13, v14

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v13, v14

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 173
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v13, p2, v13

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    sub-float/2addr v13, v14

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v13, v14

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 177
    :cond_2
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v13, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v1, v13

    .line 178
    .local v1, "cos":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v13, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v4, v13

    .line 180
    .local v4, "sin":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    .line 181
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_3

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_3

    .line 182
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v7, p1, v13

    .line 183
    .local v7, "tox":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v8, p2, v13

    .line 185
    .local v8, "toy":F
    mul-float v13, v7, v1

    mul-float v14, v8, v4

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 186
    neg-float v13, v4

    mul-float/2addr v13, v7

    mul-float v14, v8, v1

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    .line 188
    .end local v7    # "tox":F
    .end local v8    # "toy":F
    :cond_3
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    add-float v9, v13, v14

    .line 189
    .local v9, "worldOriginX":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    add-float v10, v13, v14

    .line 190
    .local v10, "worldOriginY":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    neg-float v2, v13

    .line 191
    .local v2, "fx":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    neg-float v3, v13

    .line 193
    .local v3, "fy":F
    mul-float v13, v1, v2

    mul-float v14, v4, v3

    sub-float v11, v13, v14

    .line 194
    .local v11, "x1":F
    mul-float v13, v4, v2

    mul-float v14, v1, v3

    add-float v12, v13, v14

    .line 195
    .local v12, "y1":F
    add-float/2addr v11, v9

    .line 196
    add-float/2addr v12, v10

    .line 198
    sub-float v7, p1, v11

    .line 199
    .restart local v7    # "tox":F
    sub-float v8, p2, v12

    .line 201
    .restart local v8    # "toy":F
    mul-float v13, v7, v1

    mul-float v14, v8, v4

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 202
    neg-float v13, v4

    mul-float/2addr v13, v7

    mul-float v14, v8, v1

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    .line 205
    .end local v2    # "fx":F
    .end local v3    # "fy":F
    .end local v7    # "tox":F
    .end local v8    # "toy":F
    .end local v9    # "worldOriginX":F
    .end local v10    # "worldOriginY":F
    .end local v11    # "x1":F
    .end local v12    # "y1":F
    :cond_4
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_5

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_5

    .line 206
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    sub-float v7, p1, v13

    .line 207
    .restart local v7    # "tox":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    sub-float v8, p2, v13

    .line 209
    .restart local v8    # "toy":F
    mul-float v13, v7, v1

    mul-float v14, v8, v4

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 210
    neg-float v13, v4

    mul-float/2addr v13, v7

    mul-float v14, v8, v1

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 212
    move-object/from16 v0, p3

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 213
    move-object/from16 v0, p3

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0

    .line 215
    .end local v7    # "tox":F
    .end local v8    # "toy":F
    :cond_5
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    mul-float v5, v13, v14

    .line 216
    .local v5, "srefX":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    mul-float v6, v13, v14

    .line 218
    .local v6, "srefY":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    add-float v9, v13, v14

    .line 219
    .restart local v9    # "worldOriginX":F
    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    add-float v10, v13, v14

    .line 220
    .restart local v10    # "worldOriginY":F
    neg-float v2, v5

    .line 221
    .restart local v2    # "fx":F
    neg-float v3, v6

    .line 223
    .restart local v3    # "fy":F
    mul-float v13, v1, v2

    mul-float v14, v4, v3

    sub-float v11, v13, v14

    .line 224
    .restart local v11    # "x1":F
    mul-float v13, v4, v2

    mul-float v14, v1, v3

    add-float v12, v13, v14

    .line 225
    .restart local v12    # "y1":F
    add-float/2addr v11, v9

    .line 226
    add-float/2addr v12, v10

    .line 228
    sub-float v7, p1, v11

    .line 229
    .restart local v7    # "tox":F
    sub-float v8, p2, v12

    .line 231
    .restart local v8    # "toy":F
    mul-float v13, v7, v1

    mul-float v14, v8, v4

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 232
    neg-float v13, v4

    mul-float/2addr v13, v7

    mul-float v14, v8, v1

    add-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 234
    move-object/from16 v0, p3

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 235
    move-object/from16 v0, p3

    iget v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    div-float/2addr v13, v14

    move-object/from16 v0, p3

    iput v13, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto/16 :goto_0
.end method


# virtual methods
.method public act(F)V
    .locals 3
    .param p1, "delta"    # F

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 94
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 95
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isMarkedToRemove()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->markToRemove(Z)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 98
    add-int/lit8 v1, v1, -0x1

    .line 92
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_1
    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 387
    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actorAfter"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 415
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :goto_0
    instance-of v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_0
    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 422
    return-void

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 394
    instance-of v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p2

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_1
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 397
    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actorBefore"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 404
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 405
    instance-of v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v1, p2

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    iget-object v1, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_1
    iput-object p0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 408
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 538
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->visible:Z

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0
.end method

.method protected drawChild(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "child"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p3, "parentAlpha"    # F

    .prologue
    .line 138
    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 142
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 127
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 128
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 129
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 130
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 135
    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 453
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v0, :cond_1

    .line 454
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 455
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 456
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 461
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .local v1, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_1
    return-object v1

    .line 455
    .end local v1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    move-object v1, v0

    .line 461
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    goto :goto_1
.end method

.method public focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "pointer"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object p1, v0, p2

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 505
    :cond_0
    return-void
.end method

.method public getActors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableChildren:Ljava/util/List;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->immutableGroups:Ljava/util/List;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 366
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 367
    .local v3, "len":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 368
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 370
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 372
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 373
    .local v1, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v1, :cond_0

    .line 377
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_1
    return-object v1

    .line 367
    .restart local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v1    # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 377
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public keyDown(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->keyDown(I)Z

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyTyped(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->keyTyped(C)Z

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->keyUp(I)Z

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 513
    :cond_0
    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 428
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->unfocusAll(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 431
    return-void
.end method

.method public removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    instance-of v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 438
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->namesToActors:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->unfocusAll(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 446
    :cond_2
    return-void

    .line 443
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 444
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorRecursive(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 147
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 148
    return-void
.end method

.method public scrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 521
    :cond_0
    return-void
.end method

.method public scrolled(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scrolled(I)Z

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setupTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 18
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->updateTransform()V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp4:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 116
    sget-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_0

    .line 117
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_1

    const/high16 v7, 0x43480000    # 200.0f

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    const/4 v8, 0x0

    cmpl-float v1, v1, v8

    if-nez v1, :cond_2

    const/high16 v8, 0x43480000    # 200.0f

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v14

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 120
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldBatchTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp4:Lcom/badlogic/gdx/math/Matrix4;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 124
    return-void

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    goto :goto_1
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 544
    return-void
.end method

.method public swapActor(II)Z
    .locals 3
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 470
    .local v0, "maxIndex":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v1

    .line 471
    :cond_1
    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 473
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 4
    .param p1, "first"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "second"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/4 v3, -0x1

    .line 481
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 482
    .local v0, "firstIndex":I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 483
    .local v1, "secondIndex":I
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 485
    :goto_0
    return v2

    .line 484
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 485
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 243
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchable:Z

    if-nez v5, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v3

    .line 245
    :cond_1
    sget-boolean v5, Lcom/badlogic/gdx/scenes/scene2d/Group;->debug:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "Group"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v5, v5, p3

    if-eqz v5, :cond_3

    .line 248
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 249
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 250
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, p3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 251
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, p3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchDown(FFI)Z

    move v3, v4

    .line 252
    goto :goto_0

    .line 255
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 256
    .local v2, "len":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 257
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 258
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    if-nez v5, :cond_5

    .line 256
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 260
    :cond_5
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 262
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchDown(FFI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    instance-of v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_6

    .line 264
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :goto_2
    move v3, v4

    .line 267
    goto/16 :goto_0

    .line 266
    .restart local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_6
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->lastTouchedChild:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_2
.end method

.method public touchDragged(FFI)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchable:Z

    if-nez v5, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v3

    .line 318
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v5, v5, p3

    if-eqz v5, :cond_2

    .line 319
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 320
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 321
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, p3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 322
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, p3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchDragged(FFI)Z

    move v3, v4

    .line 323
    goto :goto_0

    .line 326
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 327
    .local v2, "len":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 328
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 329
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    if-nez v5, :cond_4

    .line 327
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 331
    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 333
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchDragged(FFI)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0
.end method

.method public touchMoved(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchable:Z

    if-nez v4, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v3

    .line 302
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 303
    .local v2, "len":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 304
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 305
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    if-nez v4, :cond_3

    .line 303
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 307
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 309
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchMoved(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public touchUp(FFI)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->touchable:Z

    if-nez v5, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v3

    .line 278
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v5, v5, p3

    if-eqz v5, :cond_2

    .line 279
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 280
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 281
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, p3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 282
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v3, p3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchUp(FFI)Z

    move v3, v4

    .line 283
    goto :goto_0

    .line 286
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 287
    .local v2, "len":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 288
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 289
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Z

    if-nez v5, :cond_4

    .line 287
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 291
    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p1, p2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toChildCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;FFLcom/badlogic/gdx/math/Vector2;)V

    .line 293
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->point:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v5, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchUp(FFI)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0
.end method

.method public unfocusAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v2, v1, v0

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->unfocusAll()V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_1
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 559
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 560
    return-void
.end method

.method public unfocusAll(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/4 v2, 0x0

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->focusedActor:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 567
    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v1, p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->scrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 573
    :cond_3
    return-void
.end method

.method protected updateTransform()V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 72
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_6

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 76
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 77
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 78
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    neg-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix3;->setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix3;->trn(FF)Lcom/badlogic/gdx/math/Matrix3;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    .line 87
    :goto_1
    return-void

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_0

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scenetransform:Lcom/badlogic/gdx/math/Matrix3;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    goto :goto_1
.end method
