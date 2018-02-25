.class public Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
.super Ljava/lang/Object;
.source "Decal.java"


# static fields
.field public static final C1:I = 0x3

.field public static final C2:I = 0x9

.field public static final C3:I = 0xf

.field public static final C4:I = 0x15

.field public static final SIZE:I = 0x18

.field public static final U1:I = 0x4

.field public static final U2:I = 0xa

.field public static final U3:I = 0x10

.field public static final U4:I = 0x16

.field public static final V1:I = 0x5

.field public static final V2:I = 0xb

.field public static final V3:I = 0x11

.field public static final V4:I = 0x17

.field private static final VERTEX_SIZE:I = 0x6

.field public static final X1:I = 0x0

.field public static final X2:I = 0x6

.field public static final X3:I = 0xc

.field public static final X4:I = 0x12

.field protected static final X_AXIS:Lcom/badlogic/gdx/math/Vector3;

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x7

.field public static final Y3:I = 0xd

.field public static final Y4:I = 0x13

.field protected static final Y_AXIS:Lcom/badlogic/gdx/math/Vector3;

.field public static final Z1:I = 0x2

.field public static final Z2:I = 0x8

.field public static final Z3:I = 0xe

.field public static final Z4:I = 0x14

.field protected static final Z_AXIS:Lcom/badlogic/gdx/math/Vector3;

.field static final dir:Lcom/badlogic/gdx/math/Vector3;

.field protected static rotator:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp:Lcom/badlogic/gdx/math/Vector3;

.field private static tmp2:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field protected dimensions:Lcom/badlogic/gdx/math/Vector2;

.field protected material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

.field protected position:Lcom/badlogic/gdx/math/Vector3;

.field protected rotation:Lcom/badlogic/gdx/math/Quaternion;

.field protected scale:Lcom/badlogic/gdx/math/Vector2;

.field public transformationOffset:Lcom/badlogic/gdx/math/Vector2;

.field protected updated:Z

.field public value:I

.field protected vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 484
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 522
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    .line 523
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->X_AXIS:Lcom/badlogic/gdx/math/Vector3;

    .line 524
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Y_AXIS:Lcom/badlogic/gdx/math/Vector3;

    .line 525
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Z_AXIS:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 46
    invoke-static {}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 58
    return-void
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 1
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v0, -0x1

    .line 556
    invoke-static {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "srcBlendFactor"    # I
    .param p4, "dstBlendFactor"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 580
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;-><init>()V

    .line 581
    .local v0, "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 582
    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setBlending(II)V

    .line 583
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 584
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 585
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setColor(FFFF)V

    .line 586
    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 2
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "hasTransparency"    # Z

    .prologue
    const/4 v0, -0x1

    .line 567
    if-eqz p3, :cond_1

    const/16 v1, 0x302

    :goto_0
    if-eqz p3, :cond_0

    const/16 v0, 0x303

    :cond_0
    invoke-static {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3
    .param p0, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v2, -0x1

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p0, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 4
    .param p0, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p1, "hasTransparency"    # Z

    .prologue
    const/4 v0, -0x1

    .line 542
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v3, v1

    if-eqz p1, :cond_1

    const/16 v1, 0x302

    :goto_0
    if-eqz p1, :cond_0

    const/16 v0, 0x303

    :cond_0
    invoke-static {v2, v3, p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method protected getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getRotation()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return v0
.end method

.method public lookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 492
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 493
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 494
    return-void
.end method

.method protected resetVertices()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 414
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v4, v4

    div-float v1, v4, v5

    .line 415
    .local v1, "left":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v2, v1, v4

    .line 416
    .local v2, "right":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, v4, v5

    .line 417
    .local v3, "top":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v3, v4

    .line 420
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aput v1, v4, v7

    .line 421
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 422
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x2

    aput v6, v4, v5

    .line 424
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x6

    aput v2, v4, v5

    .line 425
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x7

    aput v3, v4, v5

    .line 426
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x8

    aput v6, v4, v5

    .line 428
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xc

    aput v1, v4, v5

    .line 429
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xd

    aput v0, v4, v5

    .line 430
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xe

    aput v6, v4, v5

    .line 432
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x12

    aput v2, v4, v5

    .line 433
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x13

    aput v0, v4, v5

    .line 434
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x14

    aput v6, v4, v5

    .line 436
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 437
    return-void
.end method

.method public rotateX(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 79
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->X_AXIS:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 82
    return-void
.end method

.method public rotateY(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 88
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Y_AXIS:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 91
    return-void
.end method

.method public rotateZ(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 97
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->Z_AXIS:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 100
    return-void
.end method

.method public setBlending(II)V
    .locals 1
    .param p1, "srcBlendFactor"    # I
    .param p2, "dstBlendFactor"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    .line 478
    return-void
.end method

.method public setColor(FFFF)V
    .locals 5
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 67
    mul-float v2, v4, p4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    mul-float v3, v4, p3

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    mul-float v3, v4, p2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-float v3, v4, p1

    float-to-int v3, v3

    or-int v1, v2, v3

    .line 68
    .local v1, "intBits":I
    const v2, -0x1000001

    and-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 69
    .local v0, "color":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 70
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x9

    aput v0, v2, v3

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0xf

    aput v0, v2, v3

    .line 72
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x15

    aput v0, v2, v3

    .line 73
    return-void
.end method

.method public setDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 285
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 271
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 200
    return-void
.end method

.method public setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10
    .param p1, "dir"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 106
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 107
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v6, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 110
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 250
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 242
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 215
    return-void
.end method

.method public setScaleY(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 228
    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 461
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updateUVs()V

    .line 462
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 258
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 133
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 154
    return-void
.end method

.method public setZ(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 175
    return-void
.end method

.method protected transformVertices()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 315
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v6, :cond_0

    .line 316
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v0, v6

    .line 317
    .local v0, "tx":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v6

    .line 323
    .local v1, "ty":F
    :goto_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v9

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 324
    .local v3, "x":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v10

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 325
    .local v4, "y":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v5, v6, v11

    .line 327
    .local v5, "z":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 328
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 329
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 330
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 331
    .local v2, "w":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 332
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v6, v9

    .line 333
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v6, v10

    .line 334
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v5, v6, v11

    .line 335
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 336
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 337
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 338
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 340
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v9

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v9

    .line 341
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v10

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v10

    .line 342
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v11

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v7, v8

    aput v7, v6, v11

    .line 345
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v12

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 346
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v13

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 347
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    aget v5, v6, v7

    .line 349
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v12

    .line 350
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v13

    .line 351
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 352
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 353
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 354
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v6, v12

    .line 355
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v6, v13

    .line 356
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    aget v5, v6, v7

    .line 357
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v12

    .line 358
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v13

    .line 359
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 360
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 362
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v12

    .line 363
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v13

    .line 364
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 367
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    aget v6, v6, v7

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 368
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 369
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    aget v5, v6, v7

    .line 371
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 372
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 373
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 374
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 375
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 376
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    aget v3, v6, v7

    .line 377
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    aget v4, v6, v7

    .line 378
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    aget v5, v6, v7

    .line 379
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 380
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 381
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 382
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 384
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 385
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v9, v1

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 386
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 389
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    aget v6, v6, v7

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 390
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    aget v6, v6, v7

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 391
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    aget v5, v6, v7

    .line 393
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 394
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 395
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 396
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 397
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 398
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    aget v3, v6, v7

    .line 399
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    aget v4, v6, v7

    .line 400
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    aget v5, v6, v7

    .line 401
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 402
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 403
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 404
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 406
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 407
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v9, v1

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 408
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 409
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 410
    return-void

    .line 319
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    .end local v2    # "w":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "z":F
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ty":F
    move v0, v1

    .restart local v0    # "tx":F
    goto/16 :goto_0
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 190
    return-void
.end method

.method public translateX(F)V
    .locals 2
    .param p1, "units"    # F

    .prologue
    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 125
    return-void
.end method

.method public translateY(F)V
    .locals 2
    .param p1, "units"    # F

    .prologue
    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 146
    return-void
.end method

.method public translateZ(F)V
    .locals 2
    .param p1, "units"    # F

    .prologue
    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 167
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->resetVertices()V

    .line 299
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformVertices()V

    .line 301
    :cond_0
    return-void
.end method

.method protected updateUVs()V
    .locals 4

    .prologue
    .line 441
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 443
    .local v0, "tr":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    aput v3, v1, v2

    .line 444
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    aput v3, v1, v2

    .line 446
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    aput v3, v1, v2

    .line 447
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xb

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    aput v3, v1, v2

    .line 449
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x10

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    aput v3, v1, v2

    .line 450
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x11

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    aput v3, v1, v2

    .line 452
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x16

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    aput v3, v1, v2

    .line 453
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x17

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    aput v3, v1, v2

    .line 454
    return-void
.end method
