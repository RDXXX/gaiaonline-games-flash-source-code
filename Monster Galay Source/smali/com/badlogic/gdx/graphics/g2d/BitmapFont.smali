.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.super Ljava/lang/Object;
.source "BitmapFont.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    }
.end annotation


# static fields
.field private static final LOG2_PAGE_SIZE:I = 0x9

.field private static final PAGES:I = 0x80

.field private static final PAGE_SIZE:I = 0x200

.field static final capChars:[C

.field static final xChars:[C


# instance fields
.field private color:F

.field final data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

.field private flipped:Z

.field private integer:Z

.field region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    .line 60
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    return-void

    .line 59
    nop

    :array_0
    .array-data 2
        0x78s
        0x65s
        0x61s
        0x6fs
        0x6es
        0x73s
        0x72s
        0x63s
        0x75s
        0x6ds
        0x76s
        0x77s
        0x7as
    .end array-data

    .line 60
    nop

    :array_1
    .array-data 2
        0x4ds
        0x4es
        0x42s
        0x44s
        0x43s
        0x45s
        0x46s
        0x4bs
        0x41s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4cs
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 241
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V
    .locals 4
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z
    .param p4, "integer"    # Z

    .prologue
    .line 280
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0, v1, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 281
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 2
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "flip"    # Z

    .prologue
    .line 258
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 3
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .prologue
    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 266
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 3
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "integer"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 66
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 284
    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .end local p2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imgFile:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 285
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    .line 286
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 287
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 288
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "flip"    # Z

    .prologue
    .line 249
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 251
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 854
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 855
    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 856
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 857
    .end local p2    # "start":I
    :goto_1
    return p2

    .line 855
    .restart local p2    # "start":I
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 857
    goto :goto_1
.end method

.method private load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V
    .locals 14
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    .line 292
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v6, v13, v12

    .line 293
    .local v6, "invTexWidth":F
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v5, v13, v12

    .line 294
    .local v5, "invTexHeight":F
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v10, v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 295
    .local v10, "u":F
    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v11, v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 297
    .local v11, "v":F
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .local v0, "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "i$":I
    .end local v7    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v9, v0, v4

    .line 298
    .local v9, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v9, :cond_1

    .line 297
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 299
    :cond_1
    move-object v1, v9

    .local v1, "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v8, :cond_0

    aget-object v2, v1, v3

    .line 300
    .local v2, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v2, :cond_2

    .line 299
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    :cond_2
    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v12, v10

    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 302
    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iget v13, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v12, v10

    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 303
    iget-boolean v12, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v12, :cond_3

    .line 304
    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float/2addr v12, v11

    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 305
    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v13, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float/2addr v12, v11

    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    goto :goto_2

    .line 307
    :cond_3
    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float/2addr v12, v11

    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 308
    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget v13, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v5

    add-float/2addr v12, v11

    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    goto :goto_2

    .line 312
    .end local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v4    # "i$":I
    :cond_4
    return-void
.end method


# virtual methods
.method public computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "glyphAdvances"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p3, "glyphPositions"    # Lcom/badlogic/gdx/utils/FloatArray;

    .prologue
    const/4 v9, 0x0

    .line 636
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 637
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 638
    const/4 v3, 0x0

    .line 639
    .local v3, "index":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 640
    .local v1, "end":I
    const/4 v6, 0x0

    .line 641
    .local v6, "width":I
    const/4 v4, 0x0

    .line 642
    .local v4, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 643
    :goto_0
    if-ge v3, v1, :cond_2

    .line 644
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 645
    .local v0, "ch":C
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 646
    .local v2, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_1

    .line 647
    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v7

    add-int/2addr v6, v7

    .line 648
    :cond_0
    move-object v4, v2

    .line 649
    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 650
    int-to-float v7, v6

    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 651
    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    add-int/2addr v6, v7

    .line 643
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "ch":C
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_2
    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 655
    int-to-float v7, v6

    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 672
    :goto_1
    return-void

    .line 657
    :cond_3
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 658
    .local v5, "scaleX":F
    :goto_2
    if-ge v3, v1, :cond_6

    .line 659
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 660
    .restart local v0    # "ch":C
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 661
    .restart local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_5

    .line 662
    if-eqz v4, :cond_4

    int-to-float v7, v6

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 663
    :cond_4
    move-object v4, v2

    .line 664
    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 665
    int-to-float v7, v6

    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 666
    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    add-int/2addr v6, v7

    .line 658
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 669
    .end local v0    # "ch":C
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_6
    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 670
    int-to-float v7, v6

    invoke-virtual {p3, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_1
.end method

.method public computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I
    .locals 9
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "availableWidth"    # F

    .prologue
    .line 678
    move v2, p2

    .line 679
    .local v2, "index":I
    const/4 v5, 0x0

    .line 680
    .local v5, "width":I
    const/4 v3, 0x0

    .line 681
    .local v3, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 682
    :goto_0
    if-ge v2, p3, :cond_1

    .line 683
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 684
    .local v0, "ch":C
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 685
    .local v1, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v1, :cond_3

    .line 686
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v6

    add-int/2addr v5, v6

    .line 687
    :cond_0
    move-object v3, v1

    .line 688
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    add-int/2addr v6, v5

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v6, p4

    if-lez v6, :cond_2

    .line 705
    .end local v0    # "ch":C
    .end local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1
    sub-int v6, v2, p2

    return v6

    .line 689
    .restart local v0    # "ch":C
    .restart local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_2
    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    add-int/2addr v5, v6

    .line 682
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "ch":C
    .end local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_4
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 694
    .local v4, "scaleX":F
    :goto_1
    if-ge v2, p3, :cond_1

    .line 695
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 696
    .restart local v0    # "ch":C
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 697
    .restart local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v1, :cond_6

    .line 698
    if-eqz v3, :cond_5

    int-to-float v6, v5

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 699
    :cond_5
    move-object v3, v1

    .line 700
    int-to-float v6, v5

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    cmpl-float v6, v6, p4

    if-gtz v6, :cond_1

    .line 701
    int-to-float v6, v5

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 694
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public containsCharacter(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 884
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 809
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 320
    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 20
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "start"    # I
    .param p6, "end"    # I

    .prologue
    .line 331
    move-object/from16 v0, p1

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 332
    .local v12, "batchColor":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    .line 334
    .local v3, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float p4, p4, v2

    .line 335
    move/from16 v19, p3

    .line 336
    .local v19, "startX":F
    const/4 v15, 0x0

    .line 337
    .local v15, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    :cond_0
    move/from16 v18, p5

    .line 338
    .end local p5    # "start":I
    .local v18, "start":I
    move/from16 v0, v18

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 p5, v18, 0x1

    .end local v18    # "start":I
    .restart local p5    # "start":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v15

    .line 340
    if-eqz v15, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-nez v2, :cond_2

    .line 342
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    add-float v4, p3, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    add-float v5, p4, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v6, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v7, v2

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 352
    :goto_0
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v2, v2

    add-float p3, p3, v2

    move/from16 v18, p5

    .line 356
    .end local p5    # "start":I
    .restart local v18    # "start":I
    :cond_1
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p6

    if-ge v0, v1, :cond_a

    .line 357
    add-int/lit8 p5, v18, 0x1

    .end local v18    # "start":I
    .restart local p5    # "start":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 358
    .local v13, "ch":C
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v14

    .line 359
    .local v14, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v14, :cond_3

    move/from16 v18, p5

    .end local p5    # "start":I
    .restart local v18    # "start":I
    goto :goto_1

    .line 347
    .end local v13    # "ch":C
    .end local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v18    # "start":I
    .restart local p5    # "start":I
    :cond_2
    move/from16 v0, p3

    float-to-int v2, v0

    iget v4, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p4

    float-to-int v2, v0

    iget v5, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v6, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v7, v2

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_0

    .line 360
    .restart local v13    # "ch":C
    .restart local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_3
    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v2

    int-to-float v2, v2

    add-float p3, p3, v2

    .line 361
    move-object v15, v14

    .line 362
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-nez v2, :cond_4

    .line 363
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    add-float v4, p3, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    add-float v5, p4, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v6, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v7, v2

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 373
    :goto_2
    iget v2, v14, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v2, v2

    add-float p3, p3, v2

    move/from16 v18, p5

    .line 374
    .end local p5    # "start":I
    .restart local v18    # "start":I
    goto :goto_1

    .line 368
    .end local v18    # "start":I
    .restart local p5    # "start":I
    :cond_4
    move/from16 v0, p3

    float-to-int v2, v0

    iget v4, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move/from16 v0, p4

    float-to-int v2, v0

    iget v5, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v6, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v7, v2

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_2

    .line 376
    .end local v13    # "ch":C
    .end local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    move/from16 v16, v0

    .local v16, "scaleX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    move/from16 v17, v0

    .local v17, "scaleY":F
    move/from16 v18, p5

    .line 377
    .end local p5    # "start":I
    .restart local v18    # "start":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, p6

    if-ge v0, v1, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 p5, v18, 0x1

    .end local v18    # "start":I
    .restart local p5    # "start":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v15

    .line 379
    if-eqz v15, :cond_b

    .line 380
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-nez v2, :cond_7

    .line 381
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float v4, p3, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float v5, p4, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v2, v2

    mul-float v6, v2, v16

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    mul-float v7, v2, v17

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 395
    :goto_4
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float p3, p3, v2

    move/from16 v18, p5

    .line 399
    .end local p5    # "start":I
    .restart local v18    # "start":I
    :cond_6
    :goto_5
    move/from16 v0, v18

    move/from16 v1, p6

    if-ge v0, v1, :cond_a

    .line 400
    add-int/lit8 p5, v18, 0x1

    .end local v18    # "start":I
    .restart local p5    # "start":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 401
    .restart local v13    # "ch":C
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v14

    .line 402
    .restart local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v14, :cond_8

    move/from16 v18, p5

    .end local p5    # "start":I
    .restart local v18    # "start":I
    goto :goto_5

    .line 388
    .end local v13    # "ch":C
    .end local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v18    # "start":I
    .restart local p5    # "start":I
    :cond_7
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float v2, v2, p3

    float-to-int v2, v2

    int-to-float v4, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float v2, v2, p4

    float-to-int v2, v2

    int-to-float v5, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    int-to-float v6, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    int-to-float v7, v2

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_4

    .line 403
    .restart local v13    # "ch":C
    .restart local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_8
    invoke-virtual {v15, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float p3, p3, v2

    .line 404
    move-object v15, v14

    .line 405
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    if-nez v2, :cond_9

    .line 406
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float v4, p3, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float v5, p4, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v2, v2

    mul-float v6, v2, v16

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    mul-float v7, v2, v17

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 420
    :goto_6
    iget v2, v14, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float p3, p3, v2

    move/from16 v18, p5

    .line 421
    .end local p5    # "start":I
    .restart local v18    # "start":I
    goto/16 :goto_5

    .line 413
    .end local v18    # "start":I
    .restart local p5    # "start":I
    :cond_9
    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float v2, v2, p3

    float-to-int v2, v2

    int-to-float v4, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    add-float v2, v2, p4

    float-to-int v2, v2

    int-to-float v5, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    int-to-float v6, v2

    iget v2, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v2, v2

    int-to-float v7, v2

    iget v8, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    iget v9, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    iget v10, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    iget v11, v15, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_6

    .end local v13    # "ch":C
    .end local v14    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v16    # "scaleX":F
    .end local v17    # "scaleY":F
    .end local p5    # "start":I
    .restart local v18    # "start":I
    :cond_a
    move/from16 p5, v18

    .line 423
    .end local v18    # "start":I
    .restart local p5    # "start":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    sub-float v4, p3, v19

    iput v4, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v4, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v2

    .restart local v16    # "scaleX":F
    .restart local v17    # "scaleY":F
    :cond_b
    move/from16 v18, p5

    .end local p5    # "start":I
    .restart local v18    # "start":I
    goto/16 :goto_3
.end method

.method public drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 435
    const/4 v5, 0x0

    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public drawMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 15
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "alignmentWidth"    # F
    .param p6, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 446
    move-object/from16 v0, p1

    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 447
    .local v8, "batchColor":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 448
    .local v9, "down":F
    const/4 v6, 0x0

    .line 449
    .local v6, "start":I
    const/4 v13, 0x0

    .line 450
    .local v13, "numLines":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 451
    .local v10, "length":I
    const/4 v12, 0x0

    .line 452
    .local v12, "maxWidth":F
    :goto_0
    if-ge v6, v10, :cond_1

    .line 453
    const/16 v1, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    .line 454
    .local v7, "lineEnd":I
    const/4 v14, 0x0

    .line 455
    .local v14, "xOffset":F
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-eq v0, v1, :cond_0

    .line 456
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 457
    .local v11, "lineWidth":F
    sub-float v14, p5, v11

    .line 458
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-ne v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v14, v1

    .line 460
    .end local v11    # "lineWidth":F
    :cond_0
    add-float v4, p3, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 461
    .restart local v11    # "lineWidth":F
    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 462
    add-int/lit8 v6, v7, 0x1

    .line 463
    add-float p4, p4, v9

    .line 464
    add-int/lit8 v13, v13, 0x1

    .line 465
    goto :goto_0

    .line 466
    .end local v7    # "lineEnd":I
    .end local v11    # "lineWidth":F
    .end local v14    # "xOffset":F
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 468
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v12, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 469
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v3, v13, -0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 470
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1
.end method

.method public drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 7
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "wrapWidth"    # F

    .prologue
    .line 480
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public drawWrapped(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 20
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "wrapWidth"    # F
    .param p6, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 491
    move-object/from16 v0, p1

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->color:F

    .line 492
    .local v10, "batchColor":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 493
    .local v12, "down":F
    const/4 v8, 0x0

    .line 494
    .local v8, "start":I
    const/16 v17, 0x0

    .line 495
    .local v17, "numLines":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 496
    .local v13, "length":I
    const/4 v15, 0x0

    .line 497
    .local v15, "maxWidth":F
    :goto_0
    if-ge v8, v13, :cond_7

    .line 498
    const/16 v3, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v3, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v8, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v3

    add-int v9, v8, v3

    .line 500
    .local v9, "lineEnd":I
    if-ge v9, v13, :cond_5

    .line 501
    move/from16 v18, v9

    .line 502
    .local v18, "originalLineEnd":I
    :goto_1
    if-le v9, v8, :cond_0

    .line 503
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 504
    .local v11, "ch":C
    const/16 v3, 0x20

    if-eq v11, v3, :cond_0

    const/16 v3, 0xa

    if-ne v11, v3, :cond_3

    .line 507
    .end local v11    # "ch":C
    :cond_0
    if-ne v9, v8, :cond_4

    .line 508
    move/from16 v9, v18

    .line 509
    if-ne v9, v8, :cond_1

    add-int/lit8 v9, v9, 0x1

    .line 510
    :cond_1
    move/from16 v16, v9

    .line 517
    .end local v18    # "originalLineEnd":I
    .local v16, "nextLineStart":I
    :goto_2
    const/16 v19, 0x0

    .line 518
    .local v19, "xOffset":F
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-eq v0, v3, :cond_2

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    iget v14, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 520
    .local v14, "lineWidth":F
    sub-float v19, p5, v14

    .line 521
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p6

    if-ne v0, v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v19, v19, v3

    .line 523
    .end local v14    # "lineWidth":F
    :cond_2
    add-float v6, p3, v19

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    iget v14, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 524
    .restart local v14    # "lineWidth":F
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 525
    move/from16 v8, v16

    .line 526
    add-float p4, p4, v12

    .line 527
    add-int/lit8 v17, v17, 0x1

    .line 528
    goto :goto_0

    .line 505
    .end local v14    # "lineWidth":F
    .end local v16    # "nextLineStart":I
    .end local v19    # "xOffset":F
    .restart local v11    # "ch":C
    .restart local v18    # "originalLineEnd":I
    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 506
    goto :goto_1

    .line 512
    .end local v11    # "ch":C
    :cond_4
    add-int/lit8 v16, v9, 0x1

    .restart local v16    # "nextLineStart":I
    goto :goto_2

    .line 514
    .end local v16    # "nextLineStart":I
    .end local v18    # "originalLineEnd":I
    :cond_5
    if-ne v9, v8, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 515
    :cond_6
    move/from16 v16, v13

    .restart local v16    # "nextLineStart":I
    goto :goto_2

    .line 529
    .end local v9    # "lineEnd":I
    .end local v16    # "nextLineStart":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(F)V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v15, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v5, v17, -0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v3
.end method

.method public getAscent()F
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    return v0
.end method

.method public getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 8
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 548
    const/4 v4, 0x0

    .line 549
    .local v4, "width":I
    const/4 v2, 0x0

    .local v2, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    move v3, p2

    .line 550
    .end local p2    # "start":I
    .local v3, "start":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 551
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 552
    if-eqz v2, :cond_3

    .line 553
    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move v3, p2

    .line 557
    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_0
    :goto_1
    if-ge v3, p3, :cond_2

    .line 558
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 559
    .local v0, "ch":C
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 560
    .local v1, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v1, :cond_1

    .line 561
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v5

    add-int/2addr v4, v5

    .line 562
    move-object v2, v1

    .line 563
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    add-int/2addr v4, v5

    :cond_1
    move v3, p2

    .line 565
    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_1

    .line 566
    .end local v0    # "ch":C
    .end local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_2
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    int-to-float v6, v4

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 567
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v6, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 568
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v5

    .end local v3    # "start":I
    .restart local p2    # "start":I
    :cond_3
    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0
.end method

.method public getCapHeight()F
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 724
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    .line 725
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 726
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 727
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 728
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 729
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 730
    return-object v0
.end method

.method public getDescent()F
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    return v0
.end method

.method public getLineHeight()F
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    return v0
.end method

.method public getMultiLineBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 10
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 575
    const/4 v5, 0x0

    .line 576
    .local v5, "start":I
    const/4 v3, 0x0

    .line 577
    .local v3, "maxWidth":F
    const/4 v4, 0x0

    .line 578
    .local v4, "numLines":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 579
    .local v0, "length":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 580
    const/16 v6, 0xa

    invoke-static {p1, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 581
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1, v5, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v6

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 582
    .local v2, "lineWidth":F
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 583
    add-int/lit8 v5, v1, 0x1

    .line 584
    add-int/lit8 v4, v4, 0x1

    .line 585
    goto :goto_0

    .line 586
    .end local v1    # "lineEnd":I
    .end local v2    # "lineWidth":F
    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v3, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 587
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v8, v4, -0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v9, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 588
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v6
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return v0
.end method

.method public getSpaceWidth()F
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    return v0
.end method

.method public getWrappedBounds(Ljava/lang/CharSequence;F)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 13
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "wrapWidth"    # F

    .prologue
    const/16 v10, 0xa

    .line 596
    const/4 v8, 0x0

    .line 597
    .local v8, "start":I
    const/4 v6, 0x0

    .line 598
    .local v6, "numLines":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 599
    .local v1, "length":I
    const/4 v4, 0x0

    .line 600
    .local v4, "maxWidth":F
    :goto_0
    if-ge v8, v1, :cond_6

    .line 601
    invoke-static {p1, v10, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v9

    invoke-virtual {p0, p1, v8, v9, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v9

    add-int v2, v8, v9

    .line 603
    .local v2, "lineEnd":I
    if-ge v2, v1, :cond_4

    .line 604
    move v7, v2

    .line 605
    .local v7, "originalLineEnd":I
    :goto_1
    if-le v2, v8, :cond_0

    .line 606
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 607
    .local v0, "ch":C
    const/16 v9, 0x20

    if-eq v0, v9, :cond_0

    if-ne v0, v10, :cond_2

    .line 610
    .end local v0    # "ch":C
    :cond_0
    if-ne v2, v8, :cond_3

    .line 611
    move v2, v7

    .line 612
    if-ne v2, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 613
    :cond_1
    move v5, v2

    .line 620
    .end local v7    # "originalLineEnd":I
    .local v5, "nextLineStart":I
    :goto_2
    invoke-virtual {p0, p1, v8, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v9

    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 621
    .local v3, "lineWidth":F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 622
    move v8, v5

    .line 623
    add-int/lit8 v6, v6, 0x1

    .line 624
    goto :goto_0

    .line 608
    .end local v3    # "lineWidth":F
    .end local v5    # "nextLineStart":I
    .restart local v0    # "ch":C
    .restart local v7    # "originalLineEnd":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 609
    goto :goto_1

    .line 615
    .end local v0    # "ch":C
    :cond_3
    add-int/lit8 v5, v2, 0x1

    .restart local v5    # "nextLineStart":I
    goto :goto_2

    .line 617
    .end local v5    # "nextLineStart":I
    .end local v7    # "originalLineEnd":I
    :cond_4
    if-ne v2, v8, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 618
    :cond_5
    move v5, v1

    .restart local v5    # "nextLineStart":I
    goto :goto_2

    .line 625
    .end local v2    # "lineEnd":I
    .end local v5    # "nextLineStart":I
    :cond_6
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v4, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 626
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v10, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v12, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, v9, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 627
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v9
.end method

.method public getXHeight()F
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    return v0
.end method

.method public isFlipped()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    return v0
.end method

.method public scale(F)V
    .locals 2
    .param p1, "amount"    # F

    .prologue
    .line 754
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 755
    return-void
.end method

.method public setColor(F)V
    .locals 0
    .param p1, "color"    # F

    .prologue
    .line 709
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 710
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 717
    mul-float v1, v3, p4

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, v3, p3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, v3, p2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, v3, p1

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 718
    .local v0, "intBits":I
    const v1, -0x1000001

    and-int/2addr v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->intBitsToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 719
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 713
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->color:F

    .line 714
    return-void
.end method

.method public setFixedWidthGlyphs(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "glyphs"    # Ljava/lang/CharSequence;

    .prologue
    .line 814
    const/4 v3, 0x0

    .line 815
    .local v3, "maxAdvance":I
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "end":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 816
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 817
    .local v1, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    if-le v4, v3, :cond_0

    iget v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 820
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    .line 821
    .restart local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v1, :cond_2

    .line 819
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 822
    :cond_2
    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 823
    iput v3, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 824
    const/4 v4, 0x0

    check-cast v4, [[B

    iput-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    goto :goto_2

    .line 826
    .end local v1    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_3
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scaleXY"    # F

    .prologue
    .line 749
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 750
    return-void
.end method

.method public setScale(FF)V
    .locals 3
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 734
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    .line 735
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 736
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 737
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 738
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 739
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 740
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .line 741
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 742
    return-void
.end method

.method public setUseIntegerPositions(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 890
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 891
    return-void
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    return v0
.end method
