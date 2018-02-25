.class Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Glyph"
.end annotation


# instance fields
.field height:I

.field kerning:[[B

.field public srcX:I

.field public srcY:I

.field u:F

.field u2:F

.field v:F

.field v2:F

.field width:I

.field xadvance:I

.field xoffset:I

.field yoffset:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getKerning(C)I
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 838
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v2, p1, 0x9

    aget-object v0, v1, v2

    .line 840
    .local v0, "page":[B
    if-eqz v0, :cond_0

    and-int/lit16 v1, p1, 0x1ff

    aget-byte v1, v0, v1

    .line 842
    .end local v0    # "page":[B
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setKerning(II)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "value"    # I

    .prologue
    .line 846
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v2, p1, 0x9

    aget-object v0, v1, v2

    .line 848
    .local v0, "page":[B
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v2, p1, 0x9

    const/16 v3, 0x200

    new-array v0, v3, [B

    aput-object v0, v1, v2

    .line 849
    :cond_1
    and-int/lit16 v1, p1, 0x1ff

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 850
    return-void
.end method
