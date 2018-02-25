.class public Lcom/badlogic/gdx/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:Lcom/badlogic/gdx/graphics/Color;

.field public static final BLUE:Lcom/badlogic/gdx/graphics/Color;

.field public static final GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static final RED:Lcom/badlogic/gdx/graphics/Color;

.field public static final WHITE:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 48
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 49
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 50
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 51
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 59
    return-void
.end method

.method public static alpha(F)I
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 229
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static luminanceAlpha(FF)I
    .locals 2
    .param p0, "luminance"    # F
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 233
    mul-float v0, p0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    mul-float/2addr v1, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(FFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .prologue
    const/high16 v2, 0x41f80000    # 31.0f

    .line 237
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xb

    const/high16 v1, 0x427c0000    # 63.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888(FFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 245
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444(FFFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    .line 241
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xc

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888(FFFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 249
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static toFloatBits(FFFF)F
    .locals 4
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 224
    mul-float v1, v3, p3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, v3, p2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, v3, p1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, v3, p0

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 225
    .local v0, "color":I
    const v1, -0x1000001

    and-int/2addr v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static toFloatBits(IIII)F
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .prologue
    .line 187
    shl-int/lit8 v2, p3, 0x18

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x8

    or-int/2addr v2, v3

    or-int v0, v2, p0

    .line 188
    .local v0, "color":I
    const v2, -0x1000001

    and-int/2addr v2, v0

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v1

    .line 189
    .local v1, "floatColor":F
    return v1
.end method

.method public static toIntBits(IIII)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .prologue
    .line 201
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 104
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 105
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 107
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 109
    return-object p0
.end method

.method public clamp()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 127
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 130
    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 131
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 134
    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 135
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 138
    :cond_2
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 139
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 141
    :cond_3
    :goto_3
    return-void

    .line 128
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    goto :goto_0

    .line 132
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_1

    .line 136
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_2

    .line 140
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    if-ne p0, p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 155
    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 157
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 158
    :cond_4
    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 159
    :cond_5
    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 160
    :cond_6
    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 167
    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    .line 168
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 169
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 171
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 167
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 168
    goto :goto_1

    :cond_3
    move v2, v1

    .line 169
    goto :goto_2
.end method

.method public mul(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 91
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 95
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 96
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 78
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 82
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 83
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 65
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 66
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 68
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 69
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 70
    return-object p0
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 145
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 146
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 147
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 148
    return-void
.end method

.method public sub(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 117
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 119
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 121
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()V

    .line 122
    return-object p0
.end method

.method public toFloatBits()F
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 208
    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 209
    .local v0, "color":I
    const v1, -0x1000001

    and-int/2addr v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public toIntBits()I
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 216
    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 217
    .local v0, "color":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
