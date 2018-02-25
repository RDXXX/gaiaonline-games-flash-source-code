.class public Lcom/gaiaonline/monstergalaxy/battle/TeamHud;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "TeamHud.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;
    }
.end annotation


# static fields
.field private static final CLOSE_DURATION:F = 0.5f

.field private static final OPEN_DURATION:F = 0.5f


# instance fields
.field private deployedMogaIndex:I

.field private isLeftHud:Z

.field private isOpen:Z

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mogaHudStdHeight:F

.field private mogaHuds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;",
            ">;"
        }
    .end annotation
.end field

.field private mogaHudsGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private playingAnimation:Z

.field private selectedMogaIndex:Ljava/lang/Integer;

.field private topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public constructor <init>(Z)V
    .locals 10
    .param p1, "isLeftHud"    # Z

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 84
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->deployedMogaIndex:I

    .line 85
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isLeftHud:Z

    .line 86
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v7

    .line 90
    .local v7, "scaleFactor":F
    const-string v1, "team_hud_bg"

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->hudBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v8

    .line 91
    .local v8, "topLeftHudBg":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    sub-float/2addr v1, v2

    iput v1, v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 94
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v2, 0x3f3ae148    # 0.73f

    mul-float/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 95
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v1, "choose_moga_text"

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "Choose Your Moga"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 96
    .local v0, "chooseMogaText":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    iget v2, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 97
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->height:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 99
    const-string v1, "arrowDown"

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->arrowDownBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaledImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v6

    .line 100
    .local v6, "arrowDownBtn":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    iget v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    iget v2, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    add-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    iput v1, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 101
    iget v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    iget v2, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->height:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, v6, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 103
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 104
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 105
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 106
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 108
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudsGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    .line 111
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudStdHeight:F

    .line 113
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudsGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 114
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 115
    return-void
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->playingAnimation:Z

    return-void
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->selectedMogaIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen:Z

    return-void
.end method

.method private addMogaHuds()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudsGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 138
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 143
    return-void

    .line 139
    :cond_0
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->deployedMogaIndex:I

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudsGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 138
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getClosedHudPosition(I)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "hudIndex"    # I

    .prologue
    .line 168
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 169
    .local v0, "position":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 170
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isLeftHud:Z

    if-nez v1, :cond_0

    .line 172
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x42a60000    # 83.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 174
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudStdHeight:F

    sub-float/2addr v1, v2

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    .line 175
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 174
    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 176
    return-object v0
.end method

.method private getOpenHudPosition(I)Lcom/badlogic/gdx/math/Vector2;
    .locals 8
    .param p1, "hudIndex"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "x":I
    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isLeftHud:Z

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    const/high16 v2, 0x42a60000    # 83.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 164
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, v0

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v4, p1, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHudStdHeight:F

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v1
.end method


# virtual methods
.method public blueCoffeeApplied(I)V
    .locals 1
    .param p1, "mogaIndex"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->blueCoffeeApplied()V

    .line 372
    return-void
.end method

.method public close(ZI)V
    .locals 12
    .param p1, "animate"    # Z
    .param p2, "deployedMogaIndex"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    .line 263
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->deployedMogaIndex:I

    .line 265
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->addMogaHuds()V

    .line 269
    const/4 v3, 0x0

    .line 271
    .local v3, "hud1Action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    const/4 v4, -0x1

    .line 272
    .local v4, "hudIndex":I
    const/4 v5, 0x0

    .local v5, "mogaIndex":I
    :goto_0
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_4

    .line 302
    if-nez v3, :cond_0

    .line 303
    invoke-static {v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveBy;

    move-result-object v3

    .line 304
    invoke-virtual {p0, v3}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 307
    :cond_0
    if-eqz v3, :cond_1

    .line 308
    new-instance v7, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;

    invoke-direct {v7, p0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$2;-><init>(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 324
    :cond_1
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 325
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    if-eqz p1, :cond_8

    move v8, v9

    :goto_1
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->selectedMogaIndex:Ljava/lang/Integer;

    invoke-interface {v7, v8, v10}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;->onTeamHudClose(ZLjava/lang/Integer;)V

    .line 327
    :cond_2
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->playingAnimation:Z

    .line 329
    if-nez p1, :cond_3

    .line 330
    iput-boolean v9, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen:Z

    .line 332
    :cond_3
    return-void

    .line 274
    :cond_4
    if-eq v5, p2, :cond_6

    .line 275
    add-int/lit8 v4, v4, 0x1

    .line 276
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    .line 278
    .local v2, "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    invoke-virtual {v2, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->showPortraitOnly(Z)V

    .line 280
    invoke-direct {p0, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getClosedHudPosition(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 282
    .local v1, "closedHudPosition":Lcom/badlogic/gdx/math/Vector2;
    if-eqz p1, :cond_7

    .line 283
    invoke-direct {p0, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getOpenHudPosition(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 284
    .local v6, "openHudPosition":Lcom/badlogic/gdx/math/Vector2;
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->x:F

    .line 285
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->y:F

    .line 286
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v0

    .line 288
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    if-nez v4, :cond_5

    .line 289
    move-object v3, v0

    .line 292
    :cond_5
    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 272
    .end local v0    # "action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    .end local v1    # "closedHudPosition":Lcom/badlogic/gdx/math/Vector2;
    .end local v2    # "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    .end local v6    # "openHudPosition":Lcom/badlogic/gdx/math/Vector2;
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    .restart local v1    # "closedHudPosition":Lcom/badlogic/gdx/math/Vector2;
    .restart local v2    # "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    :cond_7
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->x:F

    .line 296
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->y:F

    goto :goto_2

    .line 325
    .end local v1    # "closedHudPosition":Lcom/badlogic/gdx/math/Vector2;
    .end local v2    # "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    :cond_8
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    return-void

    .line 340
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    .line 341
    .local v0, "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->dispose()V

    goto :goto_0
.end method

.method public getMogaCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen:Z

    return v0
.end method

.method public onBlueCoffee(I)V
    .locals 1
    .param p1, "mogaIndex"    # I

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->playingAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;->onBlueCoffee(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public onMogaSelected(I)V
    .locals 1
    .param p1, "mogaIndex"    # I

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->playingAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->selectedMogaIndex:Ljava/lang/Integer;

    .line 351
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    invoke-interface {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;->onMogaSelected(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public open(ZI)V
    .locals 12
    .param p1, "animate"    # Z
    .param p2, "deployedMogaIndex"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 187
    iput p2, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->deployedMogaIndex:I

    .line 188
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->selectedMogaIndex:Ljava/lang/Integer;

    .line 189
    iput-boolean v8, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->isOpen:Z

    .line 190
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->topLeftHudGroup:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, v10, Lcom/badlogic/gdx/scenes/scene2d/Group;->visible:Z

    .line 192
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->addMogaHuds()V

    .line 195
    const-string v7, "ui_coffee"

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 197
    const/4 v3, 0x0

    .line 199
    .local v3, "hud1Action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    const/4 v4, -0x1

    .line 200
    .local v4, "hudIndex":I
    const/4 v5, 0x0

    .local v5, "mogaIndex":I
    :goto_1
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 230
    if-eqz v3, :cond_0

    .line 231
    new-instance v7, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;

    invoke-direct {v7, p0}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/TeamHud;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 244
    :cond_0
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 245
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    if-eqz p1, :cond_7

    :goto_2
    invoke-interface {v7, v9}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;->onTeamHudOpen(Z)V

    .line 247
    :cond_1
    iput-boolean p1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->playingAnimation:Z

    .line 248
    return-void

    .end local v3    # "hud1Action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    .end local v4    # "hudIndex":I
    .end local v5    # "mogaIndex":I
    :cond_2
    move v7, v9

    .line 190
    goto :goto_0

    .line 201
    .restart local v3    # "hud1Action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    .restart local v4    # "hudIndex":I
    .restart local v5    # "mogaIndex":I
    :cond_3
    if-eq v5, p2, :cond_5

    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    .line 206
    .local v2, "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->updateHealthbar()V

    .line 207
    invoke-virtual {v2, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->showAll(Z)V

    .line 209
    invoke-direct {p0, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getOpenHudPosition(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    .line 211
    .local v6, "openHudPosition":Lcom/badlogic/gdx/math/Vector2;
    if-eqz p1, :cond_6

    .line 212
    invoke-direct {p0, v4}, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->getClosedHudPosition(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 213
    .local v1, "closedHudPosition":Lcom/badlogic/gdx/math/Vector2;
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->x:F

    .line 214
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->y:F

    .line 215
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v7, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v0

    .line 217
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    if-nez v4, :cond_4

    .line 218
    move-object v3, v0

    .line 221
    :cond_4
    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 200
    .end local v0    # "action":Lcom/badlogic/gdx/scenes/scene2d/AnimationAction;
    .end local v1    # "closedHudPosition":Lcom/badlogic/gdx/math/Vector2;
    .end local v2    # "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    .end local v6    # "openHudPosition":Lcom/badlogic/gdx/math/Vector2;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    .restart local v2    # "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    .restart local v6    # "openHudPosition":Lcom/badlogic/gdx/math/Vector2;
    :cond_6
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->x:F

    .line 225
    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v7, v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->y:F

    goto :goto_3

    .end local v2    # "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    .end local v6    # "openHudPosition":Lcom/badlogic/gdx/math/Vector2;
    :cond_7
    move v9, v8

    .line 245
    goto :goto_2
.end method

.method public setListener(Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/battle/TeamHud$Listener;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 120
    return-void
.end method

.method public setRival(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
    .locals 3
    .param p1, "rival"    # Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    return-void

    .line 152
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    .line 153
    .local v0, "hud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;->setRival(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    goto :goto_0
.end method

.method public setTeam(Lcom/gaiaonline/monstergalaxy/model/trainer/Team;)V
    .locals 4
    .param p1, "team"    # Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    .prologue
    .line 124
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 130
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 127
    .local v1, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;

    invoke-direct {v2, v1, v0, p0}, Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;-><init>(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;ILcom/gaiaonline/monstergalaxy/battle/MogaMiniHud$Listener;)V

    .line 128
    .local v2, "mogaHud":Lcom/gaiaonline/monstergalaxy/battle/MogaMiniHud;
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/TeamHud;->mogaHuds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setZodiacPowerTypes()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method
