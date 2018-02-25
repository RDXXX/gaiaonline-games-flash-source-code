.class abstract Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "BackpackMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractMenuItem"
.end annotation


# instance fields
.field private button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

.field private cachedValue:I

.field private label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

.field private maxDisplayValue:I

.field private tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;


# direct methods
.method private constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->cachedValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)V

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;)Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->visible:Z

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->updateValue()V

    .line 180
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0
.end method

.method protected abstract getValue()I
.end method

.method protected init(Lcom/badlogic/gdx/scenes/scene2d/actors/Button;II)V
    .locals 7
    .param p1, "button"    # Lcom/badlogic/gdx/scenes/scene2d/actors/Button;
    .param p2, "menuId"    # I
    .param p3, "maxDisplayValue"    # I

    .prologue
    .line 143
    iput p3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->maxDisplayValue:I

    .line 144
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    .line 146
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v1, "countTab"

    const-string v2, "count.tab"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    .line 148
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;

    invoke-direct {v0, p0, p2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;I)V

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/actors/Button$ClickListener;

    .line 155
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 156
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 158
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    .line 159
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->y:F

    .line 161
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v1, 0x3ecccccd    # 0.4f

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 162
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v1, ""

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "0"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    .line 164
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->updateValue()V

    .line 167
    const/high16 v0, 0x40a00000    # 5.0f

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F

    move-result v1

    mul-float v6, v0, v1

    .line 168
    .local v6, "rightPadding":F
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->height:F

    .line 169
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->width:F

    .line 171
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 173
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 174
    return-void
.end method

.method protected updateValue()V
    .locals 8

    .prologue
    const v7, 0x3ec28f5c    # 0.38f

    const/high16 v6, 0x40000000    # 2.0f

    .line 185
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->getValue()I

    move-result v1

    .line 186
    .local v1, "value":I
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->cachedValue:I

    if-eq v2, v1, :cond_0

    .line 188
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v3, 0x3ecccccd    # 0.4f

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 189
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->setFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    .line 190
    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->cachedValue:I

    .line 192
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->maxDisplayValue:I

    if-gt v1, v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->setText(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget v4, v4, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget v4, v4, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->height:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 212
    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F

    move-result v3

    mul-float v0, v2, v3

    .line 213
    .local v0, "rightPadding":F
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->height:F

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->height:F

    .line 214
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->x:F

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->button:Lcom/badlogic/gdx/scenes/scene2d/actors/Button;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Button;->width:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->width:F

    .line 216
    .end local v0    # "rightPadding":F
    :cond_0
    return-void

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->maxDisplayValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->setText(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F

    move-result v3

    mul-float/2addr v3, v7

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    .line 203
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F

    move-result v3

    mul-float/2addr v3, v7

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleY:F

    .line 205
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->tabImage:Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget v4, v4, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;->label:Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    iget v5, v5, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    goto :goto_0
.end method
