.class public Lcom/gaiaonline/monstergalaxy/battle/PauseButton;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "PauseButton.java"


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V
    .locals 6
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .prologue
    const/4 v4, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setStretchable(Z)V

    .line 12
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v4, v4}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 13
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 14
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->pauseOff:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    .line 15
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->pauseOff:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->setSize(FF)V

    .line 17
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->PAUSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->pauseOff:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->pauseOn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/battle/PauseButton;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 18
    return-void
.end method
