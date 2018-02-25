.class public Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "BackpackMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$AbstractMenuItem;,
        Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;,
        Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;,
        Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;
    }
.end annotation


# instance fields
.field private blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

.field isOpen:Z

.field private listener:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;

.field private scaleFactor:F

.field private starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;

    .prologue
    .line 35
    const-string v0, "backpackMenu"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->listener:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;

    .line 39
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->scaleFactor:F

    .line 40
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    .line 41
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    .line 44
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    iget v1, v1, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->x:F

    .line 45
    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->scaleFactor:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->y:F

    .line 47
    const-string v0, "ui_menu_slide"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->listener:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BackpackListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->scaleFactor:F

    return v0
.end method

.method private isTouched(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/scenes/scene2d/Group;)Z
    .locals 4
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "group"    # Lcom/badlogic/gdx/scenes/scene2d/Group;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "isTouched":Z
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->x:F

    iget v3, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 115
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    iget v3, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 79
    iput-boolean v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->isOpen:Z

    .line 81
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->clearActions()V

    .line 82
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->clearActions()V

    .line 84
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    iput-boolean v7, v5, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->touchable:Z

    .line 85
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    iput-boolean v7, v5, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->touchable:Z

    .line 87
    invoke-static {v6, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v1

    .line 88
    .local v1, "blueCoffeeMove":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v0

    .line 89
    .local v0, "blueCoffeeFade":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    invoke-static {v6, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v4

    .line 90
    .local v4, "starSeedMove":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;

    move-result-object v3

    .line 92
    .local v3, "starSeedFade":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeOut;
    new-array v5, v10, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v4, v5, v7

    aput-object v3, v5, v9

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v2

    .line 94
    .local v2, "starSeedClose":Lcom/badlogic/gdx/scenes/scene2d/Action;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    new-array v6, v10, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v1, v6, v7

    aput-object v0, v6, v9

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 95
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    invoke-virtual {v5, v2}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 96
    return-void
.end method

.method isTouched(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p1, "touchPoint"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "justTouched":Z
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    :goto_0
    return v1

    .line 101
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 102
    .local v0, "group":Lcom/badlogic/gdx/scenes/scene2d/Group;
    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->isTouched(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/scenes/scene2d/Group;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public open()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 54
    iput-boolean v9, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->isOpen:Z

    .line 56
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->y:F

    iput v8, v7, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->y:F

    .line 57
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->y:F

    iput v8, v7, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->y:F

    .line 59
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->clearActions()V

    .line 60
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->clearActions()V

    .line 62
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    iput-boolean v9, v7, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->touchable:Z

    .line 63
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    iput-boolean v9, v7, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->touchable:Z

    .line 65
    const-string v7, "items.off"

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->scaleFactor:F

    mul-float v0, v7, v8

    .line 66
    .local v0, "backpackButtonHeight":F
    move v6, v0

    .line 67
    .local v6, "starSeedY":F
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    iget v7, v7, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->height:F

    add-float v3, v6, v7

    .line 69
    .local v3, "blueCoffeeY":F
    invoke-static {v10, v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v2

    .line 70
    .local v2, "blueCoffeeMove":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-static {v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v1

    .line 71
    .local v1, "blueCoffeeFade":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    invoke-static {v10, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v5

    .line 72
    .local v5, "starSeedMove":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-static {v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v4

    .line 74
    .local v4, "starSeedFade":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->blueCoffeeMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;

    new-array v8, v13, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v2, v8, v12

    aput-object v1, v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$BlueCoffeeMenuItem;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 75
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu;->starSeedMenuItem:Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;

    new-array v8, v13, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    aput-object v5, v8, v12

    aput-object v4, v8, v9

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gaiaonline/monstergalaxy/battle/BackpackMenu$StarSeedMenuItem;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 76
    return-void
.end method
