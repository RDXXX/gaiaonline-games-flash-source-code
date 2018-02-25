.class public Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;
.super Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
.source "TextFieldScreenElement.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# static fields
.field private static final NINEPATCH_CORNER_SIZE:I = 0xc


# instance fields
.field textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method public constructor <init>(F)V
    .locals 9
    .param p1, "prefWidth"    # F

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v2, 0xc

    .line 19
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 21
    const-string v1, "name.bg"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->getNinePatch(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v6

    .line 24
    .local v6, "bg":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    const-string v1, "cursor"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    move-object v0, p0

    move v2, v8

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->getNinePatch(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    .line 26
    .local v3, "cursor":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    const-string v4, "name.bg"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    move-object v5, v6

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    .line 28
    .local v0, "style":Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-string v2, ""

    const/high16 v4, 0x41c00000    # 24.0f

    sub-float v4, p1, v4

    .line 29
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-direct {v1, v2, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 28
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    .line 31
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 33
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->dummyGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->keyboardFocusedActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 34
    return-void
.end method

.method private getNinePatch(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 14
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v3

    move/from16 v4, p2

    move/from16 v5, p4

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 39
    .local v0, "topLeftPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v9

    add-int v3, v9, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v4

    .line 41
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    sub-int v9, v9, p2

    sub-int v5, v9, p3

    move/from16 v6, p4

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 42
    .local v1, "topCenterPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v9

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v4, v9, p3

    .line 44
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v5

    move/from16 v6, p3

    move/from16 v7, p4

    .line 42
    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 45
    .local v2, "topRightPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    .line 46
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v9

    add-int v6, v9, p4

    .line 47
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    sub-int v9, v9, p4

    sub-int v8, v9, p5

    move/from16 v7, p2

    .line 45
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 48
    .local v3, "middleLeftPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v9

    add-int v6, v9, p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v9

    add-int v7, v9, p4

    .line 50
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    sub-int v9, v9, p2

    sub-int v8, v9, p3

    .line 51
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    sub-int v9, v9, p4

    sub-int v9, v9, p5

    .line 48
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 52
    .local v4, "middleCenterPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v9

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v7, v9, p3

    .line 54
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v9

    add-int v8, v9, p4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    .line 55
    sub-int v9, v9, p4

    sub-int v10, v9, p5

    move/from16 v9, p3

    .line 52
    invoke-direct/range {v5 .. v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 56
    .local v5, "middleRightPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    .line 57
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v9

    .line 58
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v9, v9, p5

    move/from16 v10, p2

    move/from16 v11, p5

    .line 56
    invoke-direct/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 59
    .local v6, "bottomLeftPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 60
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v9

    add-int v9, v9, p2

    .line 61
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v10

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v10, p5

    .line 62
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v11

    sub-int v11, v11, p2

    sub-int v11, v11, p3

    move/from16 v12, p5

    .line 59
    invoke-direct/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 63
    .local v7, "bottomCenterPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v9

    .line 64
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v10

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v10, p3

    .line 65
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v11

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v12

    add-int/2addr v11, v12

    sub-int v11, v11, p5

    move/from16 v12, p3

    move/from16 v13, p5

    .line 63
    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 67
    .local v8, "bottomRightPatch":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    .line 68
    aput-object v1, v10, v11

    const/4 v11, 0x2

    aput-object v2, v10, v11

    const/4 v11, 0x3

    aput-object v3, v10, v11

    const/4 v11, 0x4

    .line 69
    aput-object v4, v10, v11

    const/4 v11, 0x5

    aput-object v5, v10, v11

    const/4 v11, 0x6

    aput-object v6, v10, v11

    const/4 v11, 0x7

    .line 70
    aput-object v7, v10, v11

    const/16 v11, 0x8

    aput-object v8, v10, v11

    .line 67
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-object v9
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keyDown(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyDown(I)Z

    move-result v0

    return v0
.end method

.method public keyTyped(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 96
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyTyped(C)Z

    move-result v0

    return v0
.end method

.method public keyUp(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyUp(I)Z

    move-result v0

    return v0
.end method

.method public scrolled(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->scrolled(I)Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setText(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyDown(I)Z

    .line 82
    return-void
.end method

.method public touchDown(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->touchDragged(FFI)Z

    move-result v0

    return v0
.end method

.method public touchMoved(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/screen/TextFieldScreenElement;->textField:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->touchMoved(FF)Z

    move-result v0

    return v0
.end method

.method public touchUp(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
