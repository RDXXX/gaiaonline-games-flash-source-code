.class public Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "BackpackButton.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;


# instance fields
.field private button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

.field private screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;)V
    .locals 7
    .param p1, "screen"    # Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setStretchable(Z)V

    .line 24
    const/high16 v0, 0x43f00000    # 480.0f

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setSize(FF)V

    .line 25
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v2, v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 27
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    .line 30
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACKPACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const-string v0, "items.off"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 31
    const-string v0, "items.on"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/high16 v4, 0x43540000    # 212.0f

    const/high16 v5, 0x41f00000    # 30.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 33
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    .line 34
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->close()V

    .line 64
    return-void
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    iget-boolean v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->isOpen:Z

    return v0
.end method

.method public onMenuItemSelected(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->DRINK_BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 88
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "currentIslandId":Ljava/lang/String;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v0

    const-string v1, "monetization"

    const-string v2, "use_item"

    const-string v3, "blue_coffee"

    const-string v4, "blue_coffee_backpack"

    const-string v5, ""

    invoke-interface/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v6    # "currentIslandId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->closeMenu()V

    .line 93
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CAPTURE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->setVisible(Z)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->close()V

    .line 73
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    iget-object v2, v2, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 75
    .local v0, "menuActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 80
    .end local v0    # "menuActor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    return-void
.end method

.method public showMenu()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->open()V

    .line 51
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    iget-object v1, v1, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 55
    :cond_0
    const-string v0, "ui_menu_slide"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public touched(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    iget-boolean v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->isOpen:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->menu:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->isTouched(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->button:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {p0, v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->contains(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackButton;->screen:Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->BACKPACK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->touched(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    goto :goto_0
.end method
