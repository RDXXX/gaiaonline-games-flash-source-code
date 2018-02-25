.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ComboList"
.end annotation


# instance fields
.field entryHeight:F

.field firstUp:Z

.field oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

.field selected:I

.field textOffsetX:F

.field textOffsetY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;Ljava/lang/String;FF)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    .line 208
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 202
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    .line 203
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->textOffsetX:F

    .line 204
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->textOffsetY:F

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 285
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->firstUp:Z

    .line 209
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->x:F

    .line 210
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->y:F

    .line 211
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    .line 212
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 214
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->focus(Lcom/badlogic/gdx/scenes/scene2d/Actor;I)V

    .line 215
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->layout()V

    .line 216
    return-void
.end method

.method private layout()V
    .locals 10

    .prologue
    .line 219
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v2, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 220
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v4, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->listSelection:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 222
    .local v4, "listSelection":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const/4 v6, 0x0

    .line 223
    .local v6, "prefWidth":F
    const/4 v5, 0x0

    .line 225
    .local v5, "prefHeight":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 226
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    aget-object v1, v7, v3

    .line 227
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    .line 228
    .local v0, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .end local v1    # "entry":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v8

    neg-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    .line 233
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    .line 234
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v8, v8, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    .line 235
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v7

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v8

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 236
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    mul-float v5, v7, v8

    .line 237
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->textOffsetX:F

    .line 238
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v8

    neg-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->textOffsetY:F

    .line 240
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->width:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    .line 241
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v8, v8, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    .line 242
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    .line 243
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->y:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->y:F

    .line 244
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 248
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->listBackground:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 249
    .local v0, "listBackground":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v10, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->listSelection:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 250
    .local v10, "listSelection":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 251
    .local v7, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboBoxStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 253
    .local v8, "fontColor":Lcom/badlogic/gdx/graphics/Color;
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 254
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 255
    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    .line 256
    .local v11, "posY":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 257
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    if-ne v1, v9, :cond_0

    .line 258
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->y:F

    add-float/2addr v1, v11

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    sub-float v4, v1, v2

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    move-object v1, v10

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 260
    :cond_0
    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 261
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 262
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    aget-object v1, v1, v9

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->textOffsetX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->y:F

    add-float/2addr v3, v11

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->textOffsetY:F

    sub-float/2addr v3, v4

    invoke-virtual {v7, p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 263
    invoke-virtual {v7, v12, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(FF)V

    .line 264
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    sub-float/2addr v11, v1

    .line 256
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->oldScreenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 270
    :cond_3
    return-void
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 313
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->width:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v0, 0x0

    .line 274
    if-eqz p3, :cond_0

    .line 282
    :goto_0
    return v0

    .line 275
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 277
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->selection:I

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    aget-object v3, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$SelectionListener;->selected(Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;ILjava/lang/String;)V

    .line 282
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public touchMoved(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->height:F

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->entryHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 305
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->entries:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->selected:I

    .line 308
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->firstUp:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 293
    :goto_0
    return v1

    .line 292
    :cond_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ComboBox$ComboList;->firstUp:Z

    goto :goto_0
.end method
