.class public Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# static fields
.field public static final BOTTOM_CENTER:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x6

.field public static final BOTTOM_RIGHT:I = 0x8

.field public static final MIDDLE_CENTER:I = 0x4

.field public static final MIDDLE_LEFT:I = 0x3

.field public static final MIDDLE_RIGHT:I = 0x5

.field public static final TOP_CENTER:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x2


# instance fields
.field final patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 35
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 10
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int v7, v0, p3

    .line 40
    .local v7, "middleWidth":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    sub-int/2addr v0, p4

    sub-int v6, v0, p5

    .line 41
    .local v6, "middleHeight":I
    const/16 v0, 0x9

    new-array v8, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v9, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, v7

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v7

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v7

    move-object v1, p1

    move v3, p4

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    add-int v3, p4, v6

    move-object v1, p1

    move v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p4, v6

    move-object v1, p1

    move v2, p2

    move v4, v7

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v7

    add-int v3, p4, v6

    move-object v1, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 48
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "patches"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    array-length v0, p1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NinePatch needs nine TextureRegions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 53
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->checkValidity()V

    .line 54
    return-void
.end method

.method private checkValidity()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Left side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 64
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Right side patches must have the same width"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 69
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Bottom patches must have the same height"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 74
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Top patches must have the same height"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_7
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 9
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v8, p4, v0

    .line 80
    .local v8, "widthTopBottom":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v6, p5, v0

    .line 81
    .local v6, "heightLeftRight":F
    move v7, v8

    .line 84
    .local v7, "widthCenter":F
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v2, p2, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, p3

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    add-float v2, v0, v8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v2, p2, v0

    move-object v0, p1

    move v3, p3

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    add-float v2, v0, v8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v3, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 98
    add-float/2addr p3, v6

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v2, p2, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, p3

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    add-float v2, v0, v8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 104
    return-void
.end method

.method public getBottomHeight()F
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getLeftWidth()F
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getRightWidth()F
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTopHeight()F
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTotalHeight()F
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getTotalWidth()F
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->patches:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method
