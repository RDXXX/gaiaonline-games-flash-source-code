.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
.super Ljava/lang/Object;
.source "BitmapFontCache.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private color:F

.field private final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private idx:I

.field private integer:Z

.field private final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field private final tmpColor:Lcom/badlogic/gdx/graphics/Color;

.field private vertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "integer"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 35
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpColor:Lcom/badlogic/gdx/graphics/Color;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 49
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 50
    return-void
.end method

.method private addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V
    .locals 9
    .param p1, "glyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 194
    add-float v5, p2, p4

    .line 195
    .local v5, "x2":F
    add-float v6, p3, p5

    .line 196
    .local v6, "y2":F
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 197
    .local v0, "u":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 198
    .local v1, "u2":F
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 199
    .local v2, "v":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 201
    .local v3, "v2":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 202
    .local v4, "vertices":[F
    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-nez v7, :cond_0

    .line 203
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p2, v4, v7

    .line 204
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p3, v4, v7

    .line 205
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 206
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v0, v4, v7

    .line 207
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v2, v4, v7

    .line 209
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p2, v4, v7

    .line 210
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v6, v4, v7

    .line 211
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 212
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v0, v4, v7

    .line 213
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v3, v4, v7

    .line 215
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v5, v4, v7

    .line 216
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v6, v4, v7

    .line 217
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 218
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v1, v4, v7

    .line 219
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v3, v4, v7

    .line 221
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v5, v4, v7

    .line 222
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput p3, v4, v7

    .line 223
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 224
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v1, v4, v7

    .line 225
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v2, v4, v7

    .line 251
    :goto_0
    return-void

    .line 227
    :cond_0
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, p2

    int-to-float v8, v8

    aput v8, v4, v7

    .line 228
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, p3

    int-to-float v8, v8

    aput v8, v4, v7

    .line 229
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 230
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v0, v4, v7

    .line 231
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v2, v4, v7

    .line 233
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, p2

    int-to-float v8, v8

    aput v8, v4, v7

    .line 234
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, v6

    int-to-float v8, v8

    aput v8, v4, v7

    .line 235
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 236
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v0, v4, v7

    .line 237
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v3, v4, v7

    .line 239
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, v5

    int-to-float v8, v8

    aput v8, v4, v7

    .line 240
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, v6

    int-to-float v8, v8

    aput v8, v4, v7

    .line 241
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 242
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v1, v4, v7

    .line 243
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v3, v4, v7

    .line 245
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, v5

    int-to-float v8, v8

    aput v8, v4, v7

    .line 246
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    float-to-int v8, p3

    int-to-float v8, v8

    aput v8, v4, v7

    .line 247
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    iget v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v8, v4, v7

    .line 248
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v1, v4, v7

    .line 249
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    aput v2, v4, v7

    goto/16 :goto_0
.end method

.method private addToCache(Ljava/lang/CharSequence;FFII)F
    .locals 14
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 139
    move/from16 v13, p2

    .line 140
    .local v13, "startX":F
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 141
    .local v8, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const/4 v2, 0x0

    .line 142
    .local v2, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    :cond_0
    move/from16 v12, p4

    .line 143
    .end local p4    # "start":I
    .local v12, "start":I
    move/from16 v0, p5

    if-ge v12, v0, :cond_1

    .line 144
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 p4, v12, 0x1

    .end local v12    # "start":I
    .restart local p4    # "start":I
    invoke-interface {p1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    .line 146
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    add-float v3, p2, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float v4, p3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v5, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 147
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float p2, p2, v1

    move/from16 v12, p4

    .line 151
    .end local p4    # "start":I
    .restart local v12    # "start":I
    :cond_1
    :goto_0
    move/from16 v0, p5

    if-ge v12, v0, :cond_6

    .line 152
    add-int/lit8 p4, v12, 0x1

    .end local v12    # "start":I
    .restart local p4    # "start":I
    invoke-interface {p1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 153
    .local v7, "ch":C
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v9

    .line 154
    .local v9, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v9, :cond_2

    .line 155
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    add-float p2, p2, v1

    .line 156
    move-object v2, v9

    .line 157
    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    add-float v3, p2, v1

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    add-float v4, p3, v1

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v5, v1

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 158
    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    add-float p2, p2, v1

    :cond_2
    move/from16 v12, p4

    .line 160
    .end local p4    # "start":I
    .restart local v12    # "start":I
    goto :goto_0

    .line 162
    .end local v7    # "ch":C
    .end local v9    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v12    # "start":I
    .restart local p4    # "start":I
    :cond_3
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .local v10, "scaleX":F
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .local v11, "scaleY":F
    move/from16 v12, p4

    .line 163
    .end local p4    # "start":I
    .restart local v12    # "start":I
    :goto_1
    move/from16 v0, p5

    if-ge v12, v0, :cond_4

    .line 164
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 p4, v12, 0x1

    .end local v12    # "start":I
    .restart local p4    # "start":I
    invoke-interface {p1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_7

    .line 166
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float v3, p2, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    add-float v4, p3, v1

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float v5, v1, v10

    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v6, v1, v11

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 171
    iget v1, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float p2, p2, v1

    move/from16 v12, p4

    .line 175
    .end local p4    # "start":I
    .restart local v12    # "start":I
    :cond_4
    :goto_2
    move/from16 v0, p5

    if-ge v12, v0, :cond_6

    .line 176
    add-int/lit8 p4, v12, 0x1

    .end local v12    # "start":I
    .restart local p4    # "start":I
    invoke-interface {p1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 177
    .restart local v7    # "ch":C
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v9

    .line 178
    .restart local v9    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v9, :cond_5

    .line 179
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float p2, p2, v1

    .line 180
    move-object v2, v9

    .line 181
    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float v3, p2, v1

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v1, v1

    mul-float/2addr v1, v11

    add-float v4, p3, v1

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v1, v1

    mul-float v5, v1, v10

    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v1, v1

    mul-float v6, v1, v11

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 186
    iget v1, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    add-float p2, p2, v1

    :cond_5
    move/from16 v12, p4

    .line 188
    .end local p4    # "start":I
    .restart local v12    # "start":I
    goto :goto_2

    .end local v7    # "ch":C
    .end local v9    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    :cond_6
    move/from16 p4, v12

    .line 190
    .end local v12    # "start":I
    .restart local p4    # "start":I
    sub-float v1, p2, v13

    return v1

    .restart local v10    # "scaleX":F
    .restart local v11    # "scaleY":F
    :cond_7
    move/from16 v12, p4

    .end local p4    # "start":I
    .restart local v12    # "start":I
    goto :goto_1
.end method

.method private reset(I)V
    .locals 2
    .param p1, "glyphCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 131
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    .line 134
    mul-int/lit8 v0, p1, 0x14

    .line 135
    .local v0, "vertexCount":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 396
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 106
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "alphaModulation"    # F

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 110
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 111
    .local v1, "oldAlpha":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 112
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 114
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 115
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 116
    return-void
.end method

.method public getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 119
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 120
    .local v1, "floatBits":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    .line 121
    .local v2, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpColor:Lcom/badlogic/gdx/graphics/Color;

    .line 122
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v3, v2, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 123
    ushr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 124
    ushr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 125
    ushr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 126
    return-object v0
.end method

.method public getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    return v0
.end method

.method public setColor(F)V
    .locals 4
    .param p1, "color"    # F

    .prologue
    .line 78
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 83
    :cond_0
    return-void

    .line 79
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 80
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 81
    .local v2, "vertices":[F
    const/4 v0, 0x2

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    aput p1, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public setColor(FFFF)V
    .locals 8
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    .line 95
    mul-float v5, v7, p4

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    mul-float v6, v7, p3

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    mul-float v6, v7, p2

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    mul-float v6, v7, p1

    float-to-int v6, v6

    or-int v2, v5, v6

    .line 96
    .local v2, "intBits":I
    const v5, -0x1000001

    and-int/2addr v5, v2

    invoke-static {v5}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v0

    .line 97
    .local v0, "color":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    .line 102
    :cond_0
    return-void

    .line 98
    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 99
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 100
    .local v4, "vertices":[F
    const/4 v1, 0x2

    .local v1, "i":I
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 101
    aput v0, v4, v1

    .line 100
    add-int/lit8 v1, v1, 0x5

    goto :goto_0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 5
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 87
    .local v0, "color":F
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 92
    :cond_0
    return-void

    .line 88
    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 89
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 90
    .local v3, "vertices":[F
    const/4 v1, 0x2

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 91
    aput v0, v3, v1

    .line 90
    add-int/lit8 v1, v1, 0x5

    goto :goto_0
.end method

.method public setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 280
    const/4 v4, 0x0

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 15
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "alignmentWidth"    # F
    .param p5, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 289
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 291
    .local v8, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 292
    .local v9, "length":I
    invoke-direct {p0, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->reset(I)V

    .line 294
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float p3, p3, v1

    .line 295
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 297
    .local v7, "down":F
    const/4 v11, 0x0

    .line 298
    .local v11, "maxWidth":F
    move/from16 v13, p3

    .line 299
    .local v13, "startY":F
    const/4 v5, 0x0

    .line 300
    .local v5, "start":I
    const/4 v12, 0x0

    .line 301
    .local v12, "numLines":I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 302
    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    .line 303
    .local v6, "lineEnd":I
    const/4 v14, 0x0

    .line 304
    .local v14, "xOffset":F
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-eq v0, v1, :cond_0

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 306
    .local v10, "lineWidth":F
    sub-float v14, p4, v10

    .line 307
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-ne v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v14, v1

    .line 309
    .end local v10    # "lineWidth":F
    :cond_0
    add-float v3, p2, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v10

    .line 310
    .restart local v10    # "lineWidth":F
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 311
    add-int/lit8 v5, v6, 0x1

    .line 312
    add-float p3, p3, v7

    .line 313
    add-int/lit8 v12, v12, 0x1

    .line 314
    goto :goto_0

    .line 315
    .end local v6    # "lineEnd":I
    .end local v10    # "lineWidth":F
    .end local v14    # "xOffset":F
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 316
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v3, v12, -0x1

    int-to-float v3, v3

    iget-object v4, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 317
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 56
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    .line 57
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 258
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 268
    sub-int v0, p5, p4

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->reset(I)V

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float/2addr p3, v0

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public setUseIntegerPositions(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 402
    return-void
.end method

.method public setWrappedText(Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wrapWidth"    # F

    .prologue
    .line 326
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 16
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wrapWidth"    # F
    .param p5, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 335
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 337
    .local v10, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 338
    .local v11, "length":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->reset(I)V

    .line 340
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float p3, p3, v2

    .line 341
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 343
    .local v9, "down":F
    const/4 v13, 0x0

    .line 344
    .local v13, "maxWidth":F
    const/4 v6, 0x0

    .line 345
    .local v6, "start":I
    const/4 v14, 0x0

    .line 346
    .local v14, "numLines":I
    :goto_0
    if-ge v6, v11, :cond_4

    .line 347
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v6, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v2

    add-int v7, v6, v2

    .line 348
    .local v7, "lineEnd":I
    if-ge v7, v11, :cond_0

    .line 349
    :goto_1
    if-le v7, v6, :cond_0

    .line 350
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 351
    .local v8, "ch":C
    const/16 v2, 0x20

    if-eq v8, v2, :cond_0

    const/16 v2, 0xa

    if-ne v8, v2, :cond_3

    .line 355
    .end local v8    # "ch":C
    :cond_0
    if-ne v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 356
    :cond_1
    const/4 v15, 0x0

    .line 357
    .local v15, "xOffset":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_2

    .line 358
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 359
    .local v12, "lineWidth":F
    sub-float v15, p4, v12

    .line 360
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v15, v2

    .line 362
    .end local v12    # "lineWidth":F
    :cond_2
    add-float v4, p2, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v12

    .line 363
    .restart local v12    # "lineWidth":F
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 364
    add-int/lit8 v6, v7, 0x1

    .line 365
    add-float p3, p3, v9

    .line 366
    add-int/lit8 v14, v14, 0x1

    .line 367
    goto :goto_0

    .line 352
    .end local v12    # "lineWidth":F
    .end local v15    # "xOffset":F
    .restart local v8    # "ch":C
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 353
    goto :goto_1

    .line 368
    .end local v7    # "lineEnd":I
    .end local v8    # "ch":C
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v13, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v4, v14, -0x1

    int-to-float v4, v4

    iget-object v5, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v2
.end method

.method public translate(FF)V
    .locals 5
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    const/4 v4, 0x0

    .line 63
    cmpl-float v3, p1, v4

    if-nez v3, :cond_1

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    .line 75
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v3, :cond_2

    .line 65
    float-to-int v3, p1

    int-to-float p1, v3

    .line 66
    float-to-int v3, p2

    int-to-float p2, v3

    .line 68
    :cond_2
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 69
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    add-float/2addr v3, p2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 70
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertices:[F

    .line 71
    .local v2, "vertices":[F
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 72
    aget v3, v2, v0

    add-float/2addr v3, p1

    aput v3, v2, v0

    .line 73
    add-int/lit8 v3, v0, 0x1

    aget v4, v2, v3

    add-float/2addr v4, p2

    aput v4, v2, v3

    .line 71
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    return v0
.end method
