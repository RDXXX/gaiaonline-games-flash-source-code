.class public abstract Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "ButtonUI.java"


# instance fields
.field protected screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 0
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 14
    return-void
.end method


# virtual methods
.method public addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .locals 2
    .param p1, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p2, "texture"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 44
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    invoke-direct {v0, v1, p1, p2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 46
    .local v0, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    invoke-virtual {v0, p5, p6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 47
    invoke-virtual {v0, p7, p3, p4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->visible:Z

    .line 50
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 52
    return-object v0
.end method

.method public addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .locals 8
    .param p1, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p2, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "selected"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 18
    const/4 v4, 0x0

    .line 19
    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 18
    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    return-object v0
.end method

.method public addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .locals 8
    .param p1, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p2, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "selected"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 24
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    return-object v0
.end method

.method public addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .locals 6
    .param p1, "eventCode"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p2, "normal"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "selected"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p4, "disabled"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "reference"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .prologue
    .line 30
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 32
    .local v0, "button":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setSize(FF)V

    .line 33
    invoke-virtual {v0, p7, p5, p6}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 35
    return-object v0
.end method

.method public setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 0
    .param p1, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 40
    return-void
.end method
