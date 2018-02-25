.class public abstract Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "AbstractStartupScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 21
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->isPlayingMusic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method private addNavigationButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p2, "relPoint"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .param p3, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v4, "blue.btn.small"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 67
    .local v2, "normal":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v4, "blue.btn.small.press"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 69
    .local v3, "selected":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 70
    .local v0, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 71
    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, p2, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 72
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 74
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v4, 0x3f333333    # 0.7f

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x1

    invoke-direct {v1, p4, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 75
    .local v1, "label":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 76
    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v6, 0x40a00000    # 5.0f

    add-float/2addr v5, v6

    invoke-virtual {v1, p2, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 77
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v4, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected addBackButton()V
    .locals 5

    .prologue
    .line 46
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const-string v3, "Back"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->addNavigationButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected addDoneButton()V
    .locals 5

    .prologue
    .line 41
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, 0x438c0000    # 280.0f

    const/high16 v4, 0x43700000    # 240.0f

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const-string v3, "Done"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->addNavigationButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method protected addFinishButton()V
    .locals 5

    .prologue
    .line 51
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, -0x3d900000    # -60.0f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const-string v3, "Finish"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->addNavigationButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected addNextButton()V
    .locals 5

    .prologue
    .line 36
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v3, -0x3d900000    # -60.0f

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const-string v3, "Next"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->addNavigationButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/badlogic/gdx/math/Vector2;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected addTitle(Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 29
    .local v0, "label":Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 30
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v2, 0x0

    const/high16 v3, -0x3e600000    # -20.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 31
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/startup/AbstractStartupScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 32
    return-void
.end method

.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 0
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 61
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playScreenChangeSound()V

    .line 62
    return-void
.end method
