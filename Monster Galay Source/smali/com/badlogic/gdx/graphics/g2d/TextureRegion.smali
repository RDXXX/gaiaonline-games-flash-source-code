.class public Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.super Ljava/lang/Object;
.source "TextureRegion.java"


# instance fields
.field texture:Lcom/badlogic/gdx/graphics/Texture;

.field u:F

.field u2:F

.field v:F

.field v2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 37
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "u2"    # F
    .param p5, "v2"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 49
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 44
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 62
    return-void
.end method

.method public static split(Lcom/badlogic/gdx/graphics/Texture;II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p0, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p1, "tileWidth"    # I
    .param p2, "tileHeight"    # I

    .prologue
    .line 248
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 249
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flip(ZZ)V
    .locals 2
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 174
    .local v0, "temp":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 175
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 177
    .end local v0    # "temp":F
    :cond_0
    if-eqz p2, :cond_1

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 179
    .restart local v0    # "temp":F
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 180
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 182
    .end local v0    # "temp":F
    :cond_1
    return-void
.end method

.method public getRegionHeight()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRegionWidth()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRegionX()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRegionY()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getU()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    return v0
.end method

.method public getU2()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    return v0
.end method

.method public getV2()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    return v0
.end method

.method public scroll(FF)V
    .locals 6
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 189
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_0

    .line 190
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 191
    .local v1, "width":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    add-float/2addr v2, p1

    rem-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 192
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 194
    .end local v1    # "width":F
    :cond_0
    cmpl-float v2, p2, v4

    if-eqz v2, :cond_1

    .line 195
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v2, v3

    .line 196
    .local v0, "height":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    add-float/2addr v2, p2

    rem-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 197
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 199
    .end local v0    # "height":F
    :cond_1
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 0
    .param p1, "u"    # F
    .param p2, "v"    # F
    .param p3, "u2"    # F
    .param p4, "v2"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 80
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 81
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 82
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 83
    return-void
.end method

.method public setRegion(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v3, v2

    .line 74
    .local v1, "invTexWidth":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v3, v2

    .line 75
    .local v0, "invTexHeight":F
    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v3, p2

    mul-float/2addr v3, v0

    add-int v4, p1, p3

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-int v5, p2, p4

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 76
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    const/4 v2, 0x0

    .line 66
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 67
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 68
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 87
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 89
    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 94
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    .line 95
    return-void
.end method

.method public setRegionHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 169
    return-void
.end method

.method public setRegionWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 159
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    int-to-float v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 160
    return-void
.end method

.method public setRegionX(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 142
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 143
    return-void
.end method

.method public setRegionY(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 150
    int-to-float v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 151
    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 103
    return-void
.end method

.method public setU(F)V
    .locals 0
    .param p1, "u"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 111
    return-void
.end method

.method public setU2(F)V
    .locals 0
    .param p1, "u2"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 127
    return-void
.end method

.method public setV(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 118
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 119
    return-void
.end method

.method public setV2(F)V
    .locals 0
    .param p1, "v2"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 135
    return-void
.end method

.method public split(II)[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 15
    .param p1, "tileWidth"    # I
    .param p2, "tileHeight"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v2

    .line 210
    .local v2, "x":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v3

    .line 211
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v13

    .line 212
    .local v13, "width":I
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v8

    .line 214
    .local v8, "height":I
    if-gez v13, :cond_0

    .line 215
    sub-int/2addr v2, v13

    .line 216
    neg-int v13, v13

    .line 219
    :cond_0
    if-gez v8, :cond_1

    .line 220
    sub-int/2addr v3, v8

    .line 221
    neg-int v8, v8

    .line 224
    :cond_1
    div-int v10, v8, p2

    .line 225
    .local v10, "rows":I
    div-int v7, v13, p1

    .line 227
    .local v7, "cols":I
    move v11, v2

    .line 228
    .local v11, "startX":I
    filled-new-array {v10, v7}, [I

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 229
    .local v12, "tiles":[[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    if-ge v9, v10, :cond_3

    .line 230
    move v2, v11

    .line 231
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 232
    aget-object v14, v12, v9

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    aput-object v0, v14, v6

    .line 231
    add-int/lit8 v6, v6, 0x1

    add-int v2, v2, p1

    goto :goto_1

    .line 229
    :cond_2
    add-int/lit8 v9, v9, 0x1

    add-int v3, v3, p2

    goto :goto_0

    .line 236
    .end local v6    # "col":I
    :cond_3
    return-object v12
.end method
