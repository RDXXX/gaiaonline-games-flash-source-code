.class public Lcom/gaiaonline/monstergalaxy/battle/LevelBar;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "LevelBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;
    }
.end annotation


# instance fields
.field actualLevel:I

.field maxLevel:I

.field private progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

.field progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIF)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialProgrees"    # I
    .param p3, "endProgress"    # I
    .param p4, "actuallevel"    # I
    .param p5, "maxlevel"    # I
    .param p6, "delayTime"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 28
    iput p4, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->actualLevel:I

    .line 29
    iput p5, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->maxLevel:I

    .line 31
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v1, "aImage1"

    const-string v2, "empty.xp.bar"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 32
    .local v0, "aImage1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 33
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 34
    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 36
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->maxLevel:I

    if-eq p4, v1, :cond_0

    if-le p4, p5, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->showMaxLevel()V

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    const-string v2, "aImage2"

    .line 43
    const-string v3, "full.xp.bar"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 42
    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    .line 44
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v2, v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->width:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->width:F

    .line 45
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v2, v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    .line 47
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v2, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    div-float/2addr v2, v4

    const/high16 v3, 0x3fc00000    # 1.5f

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->y:F

    .line 48
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v1, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->x:F

    .line 50
    new-instance v1, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    invoke-direct {v1, p0, p2, p3}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;-><init>(Lcom/gaiaonline/monstergalaxy/battle/LevelBar;II)V

    iput-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    .line 51
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    invoke-static {v1, p6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 52
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/LevelBar;)Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 101
    return-void
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public restartAction(III)V
    .locals 1
    .param p1, "initialProgrees"    # I
    .param p2, "endProgress"    # I
    .param p3, "newLevel"    # I

    .prologue
    .line 59
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->maxLevel:I

    if-ge p3, v0, :cond_0

    .line 60
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    invoke-direct {v0, p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;-><init>(Lcom/gaiaonline/monstergalaxy/battle/LevelBar;II)V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    .line 61
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->showMaxLevel()V

    goto :goto_0
.end method

.method public setOnConpletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)V
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressaction:Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar$ProgressTo;->setCompletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 95
    :cond_0
    return-void
.end method

.method public showMaxLevel()V
    .locals 7

    .prologue
    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    .line 69
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    const-string v3, "full.xp.bar.yellow"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    iput-object v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 83
    :goto_0
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Fonts;->italic:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 84
    .local v0, "aBmpFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 85
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    const-string v2, "aText2"

    const-string v3, "MAX"

    invoke-direct {v1, v2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V

    .line 86
    .local v1, "max":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v2, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->width:F

    div-float/2addr v2, v5

    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    .line 87
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v2, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    .line 88
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->setProgress(F)V

    .line 89
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    invoke-virtual {p0, v2, v1}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 90
    return-void

    .line 73
    .end local v0    # "aBmpFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v1    # "max":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    :cond_0
    new-instance v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    const-string v3, "aImage2"

    .line 74
    const-string v4, "full.xp.bar.yellow"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 73
    iput-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    .line 75
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    invoke-virtual {p0, v2}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 77
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->width:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->width:F

    .line 78
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    .line 80
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    iget v3, v3, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->height:F

    div-float/2addr v3, v5

    sub-float/2addr v3, v6

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->y:F

    .line 81
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->progressImage:Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v3

    mul-float/2addr v3, v5

    iput v3, v2, Lcom/gaiaonline/monstergalaxy/battle/ProgressBarImage;->x:F

    goto :goto_0
.end method

.method public touchDown(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(FFI)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method
