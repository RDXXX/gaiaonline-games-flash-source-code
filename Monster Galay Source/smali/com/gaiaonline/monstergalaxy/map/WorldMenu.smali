.class public Lcom/gaiaonline/monstergalaxy/map/WorldMenu;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "WorldMenu.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;
    }
.end annotation


# instance fields
.field private isOpen:Z

.field private listener:Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

.field private menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

.field private menuButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 7
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->setStretchable(Z)V

    .line 49
    const/high16 v0, 0x43f00000    # 480.0f

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->setSize(FF)V

    .line 50
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, v4, v4}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 52
    const-string v0, "menu.off"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 53
    .local v2, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "menu.on"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 56
    .local v3, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MENU_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/high16 v4, 0x43540000    # 212.0f

    const/high16 v5, 0x41f00000    # 30.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menuButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 58
    new-instance v0, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    const-string v1, "menu"

    invoke-direct {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    .line 60
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menuButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public isOpen()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->isOpen:Z

    return v0
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 105
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->MENU_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->toggleMenu()V

    .line 108
    :cond_0
    return-void
.end method

.method public setListener(Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->listener:Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

    .line 71
    return-void
.end method

.method public toggleMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    const-string v0, "ui_menu_slide"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iput-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->isOpen:Z

    .line 80
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->close()V

    .line 81
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->listener:Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->listener:Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;->onWorldMenuToggled(Z)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 90
    iput-boolean v2, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->isOpen:Z

    .line 91
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;->open()V

    .line 92
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->listener:Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->listener:Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;

    invoke-interface {v0, v2}, Lcom/gaiaonline/monstergalaxy/map/WorldMenu$Listener;->onWorldMenuToggled(Z)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/WorldMenu;->menu:Lcom/gaiaonline/monstergalaxy/map/WorldMenuItems;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method
