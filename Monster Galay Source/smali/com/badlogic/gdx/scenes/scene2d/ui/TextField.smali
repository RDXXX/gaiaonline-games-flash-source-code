.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    }
.end annotation


# instance fields
.field blinkTime:F

.field final builder:Ljava/lang/StringBuilder;

.field clipboard:Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

.field cursor:I

.field cursorOn:Z

.field final fieldBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

.field final glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

.field hasSelection:Z

.field final initialPrefWidth:F

.field keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

.field lastBlink:J

.field listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

.field renderOffset:F

.field final scissor:Lcom/badlogic/gdx/math/Rectangle;

.field selectionStart:I

.field selectionWidth:F

.field selectionX:F

.field final style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

.field text:Ljava/lang/String;

.field final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field textOffset:F

.field visibleTextEnd:I

.field visibleTextStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FLcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefWidth"    # F
    .param p3, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0, p1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>(Ljava/lang/String;FF)V

    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->fieldBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->scissor:Lcom/badlogic/gdx/math/Rectangle;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 104
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 105
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 106
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 107
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 108
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->builder:Ljava/lang/StringBuilder;

    .line 110
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    .line 113
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    .line 114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 116
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 117
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 118
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    .line 119
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    .line 120
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 129
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .line 130
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialPrefWidth:F

    .line 131
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;->getDefaultClipboard()Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout()V

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->prefWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->width:F

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->prefHeight:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->height:F

    .line 135
    return-void
.end method

.method private blink()V
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 153
    .local v0, "time":J
    iget-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blinkTime:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 154
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 155
    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    .line 157
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private calculateOffsets()V
    .locals 15

    .prologue
    .line 160
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 162
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    .line 163
    .local v8, "position":F
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float v1, v8, v12

    .line 164
    .local v1, "distance":F
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->width:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v13

    sub-float v11, v12, v13

    .line 168
    .local v11, "visibleWidth":F
    const/4 v12, 0x0

    cmpg-float v12, v1, v12

    if-gtz v12, :cond_5

    .line 169
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-lez v12, :cond_4

    .line 170
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    neg-float v12, v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 180
    :cond_0
    :goto_0
    const/4 v12, 0x0

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 181
    const/4 v12, 0x0

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 182
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 183
    .local v9, "start":F
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v12, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 184
    .local v3, "len":I
    const/4 v10, 0x0

    .line 185
    .local v10, "startPos":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 186
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v12, v12, v2

    cmpl-float v12, v12, v9

    if-ltz v12, :cond_6

    .line 187
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    .line 188
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v10, v12, v2

    .line 189
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    aget v12, v12, v13

    sub-float/2addr v12, v9

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    .line 195
    :cond_1
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 196
    :goto_2
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_2

    .line 197
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v12, v12, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    aget v12, v12, v13

    sub-float/2addr v12, v10

    cmpl-float v12, v12, v11

    if-lez v12, :cond_7

    .line 199
    :cond_2
    const/4 v12, 0x0

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    .line 202
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v12, :cond_3

    .line 203
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 204
    .local v6, "minIndex":I
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 205
    .local v4, "maxIndex":I
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v12, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 206
    .local v7, "minX":F
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 207
    .local v5, "maxX":F
    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    .line 208
    sub-float v12, v5, v7

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    .line 210
    .end local v4    # "maxIndex":I
    .end local v5    # "maxX":F
    .end local v6    # "minIndex":I
    .end local v7    # "minX":F
    :cond_3
    return-void

    .line 172
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v9    # "start":F
    .end local v10    # "startPos":F
    :cond_4
    const/4 v12, 0x0

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    goto/16 :goto_0

    .line 174
    :cond_5
    cmpl-float v12, v1, v11

    if-lez v12, :cond_0

    .line 175
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float v13, v1, v11

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    goto/16 :goto_0

    .line 185
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v9    # "start":F
    .restart local v10    # "startPos":F
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 196
    :cond_7
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    goto :goto_2
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v9, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 215
    .local v9, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 216
    .local v10, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 217
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->selection:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 218
    .local v11, "selection":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->cursor:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 220
    .local v8, "cursorPatch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->invalidated:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->layout()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 223
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 224
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->height:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v12, v1, v2

    .line 225
    .local v12, "textY":F
    iget v1, v10, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v10, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v10, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 226
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    .line 228
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v1, :cond_1

    .line 229
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionX:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float v3, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y:F

    add-float/2addr v1, v12

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float/2addr v1, v2

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v1, v2

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionWidth:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    move-object v1, p1

    move-object v2, v11

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textOffset:F

    add-float v4, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y:F

    add-float v5, v1, v12

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextStart:I

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->visibleTextEnd:I

    move-object v1, v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 234
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v1, p0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->blink()V

    .line 236
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    if-eqz v1, :cond_2

    .line 237
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->x:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->y:F

    add-float/2addr v1, v12

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    sub-float/2addr v1, v2

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v1, v2

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    move-object v1, v8

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 241
    :cond_2
    return-void
.end method

.method public getOnscreenKeyboard()Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 426
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public keyDown(I)Z
    .locals 14
    .param p1, "keycode"    # I

    .prologue
    const/16 v13, 0x16

    const/16 v12, 0x15

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 273
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v3, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 275
    .local v3, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v9, p0, :cond_14

    .line 277
    sget-object v9, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v10, 0x81

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v10, 0x82

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 278
    :cond_0
    const/16 v9, 0x32

    if-ne p1, v9, :cond_3

    .line 279
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 284
    .local v1, "c":C
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 290
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 291
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v3, v8, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 294
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    const/16 v8, 0x1f

    if-ne p1, v8, :cond_4

    .line 295
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v8, :cond_4

    .line 296
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 297
    .local v6, "minIndex":I
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 298
    .local v5, "maxIndex":I
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v9, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 362
    .end local v5    # "maxIndex":I
    .end local v6    # "minIndex":I
    :cond_4
    :goto_1
    return v7

    .line 303
    :cond_5
    sget-object v9, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v10, 0x3b

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v10, 0x3c

    invoke-interface {v9, v10}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 304
    :cond_6
    if-ne p1, v12, :cond_8

    .line 305
    iget-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v9, :cond_7

    .line 306
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 307
    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 309
    :cond_7
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 311
    :cond_8
    if-ne p1, v13, :cond_a

    .line 312
    iget-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v9, :cond_9

    .line 313
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 314
    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 316
    :cond_9
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 318
    :cond_a
    if-ne p1, v11, :cond_c

    .line 319
    iget-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v9, :cond_b

    .line 320
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 321
    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 323
    :cond_b
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 325
    :cond_c
    const/16 v9, 0x84

    if-ne p1, v9, :cond_e

    .line 326
    iget-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v9, :cond_d

    .line 327
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 328
    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 330
    :cond_d
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 333
    :cond_e
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 334
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto :goto_1

    .line 338
    :cond_f
    if-ne p1, v12, :cond_10

    .line 339
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 340
    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 342
    :cond_10
    if-ne p1, v13, :cond_11

    .line 343
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 345
    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 347
    :cond_11
    if-ne p1, v11, :cond_12

    .line 348
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 349
    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 351
    :cond_12
    const/16 v9, 0x84

    if-ne p1, v9, :cond_13

    .line 352
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 353
    iput-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 356
    :cond_13
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 357
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto/16 :goto_1

    :cond_14
    move v7, v8

    .line 362
    goto/16 :goto_1
.end method

.method public keyTyped(C)Z
    .locals 8
    .param p1, "character"    # C

    .prologue
    const/4 v4, 0x0

    .line 366
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 368
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p0, :cond_f

    .line 369
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-gtz v3, :cond_0

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v3, :cond_1

    .line 370
    :cond_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v3, :cond_6

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 372
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 373
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 385
    :cond_1
    :goto_0
    const/16 v3, 0x7f

    if-ne p1, v3, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v3, :cond_3

    .line 386
    :cond_2
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v3, :cond_9

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 388
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 400
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 401
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v3, :cond_c

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 403
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 418
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    invoke-interface {v3, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)V

    .line 419
    :cond_5
    const/4 v3, 0x1

    .line 421
    :goto_3
    return v3

    .line 375
    :cond_6
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 376
    .local v2, "minIndex":I
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 378
    .local v1, "maxIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_7

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 380
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 381
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 382
    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    goto/16 :goto_0

    .line 378
    :cond_7
    const-string v3, ""

    goto :goto_4

    :cond_8
    const-string v3, ""

    goto :goto_5

    .line 390
    .end local v1    # "maxIndex":I
    .end local v2    # "minIndex":I
    :cond_9
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 391
    .restart local v2    # "minIndex":I
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 393
    .restart local v1    # "maxIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_a

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 395
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 396
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 397
    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    goto/16 :goto_1

    .line 393
    :cond_a
    const-string v3, ""

    goto :goto_6

    :cond_b
    const-string v3, ""

    goto :goto_7

    .line 406
    .end local v1    # "maxIndex":I
    .end local v2    # "minIndex":I
    :cond_c
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 407
    .restart local v2    # "minIndex":I
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 409
    .restart local v1    # "maxIndex":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_d

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 411
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 413
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 414
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 415
    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    goto/16 :goto_2

    .line 409
    :cond_d
    const-string v3, ""

    goto :goto_8

    :cond_e
    const-string v3, ""

    goto :goto_9

    .end local v1    # "maxIndex":I
    .end local v2    # "minIndex":I
    :cond_f
    move v3, v4

    .line 421
    goto/16 :goto_3
.end method

.method public layout()V
    .locals 6

    .prologue
    .line 139
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 140
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 142
    .local v0, "background":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 144
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 146
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->prefHeight:F

    .line 147
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialPrefWidth:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->prefWidth:F

    .line 148
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->invalidated:Z

    .line 149
    return-void
.end method

.method public setClipboard(Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;)V
    .locals 0
    .param p1, "clipboard"    # Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clipboard:Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    .line 510
    return-void
.end method

.method public setOnscreenKeyboard(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    .line 488
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 464
    .local v0, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "text must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 466
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 467
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 468
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeGlyphAdvancesAndPositions(Ljava/lang/CharSequence;Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 469
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->invalidateHierarchy()V

    .line 470
    return-void
.end method

.method public setTextFieldListener(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    .line 457
    return-void
.end method

.method public touchDown(FFI)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    if-eqz p3, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 246
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 247
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 248
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;->show(Z)V

    .line 249
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    sub-float/2addr p1, v4

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v0, v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v1, v4, v0

    .line 252
    .local v1, "pos":F
    cmpl-float v4, v1, p1

    if-lez v4, :cond_3

    .line 253
    add-int/lit8 v4, v0, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .end local v1    # "pos":F
    :cond_2
    move v2, v3

    .line 257
    goto :goto_0

    .line 250
    .restart local v1    # "pos":F
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method
