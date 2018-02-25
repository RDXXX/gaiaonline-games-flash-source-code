.class public Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "BattleReportScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# instance fields
.field private aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

.field private completedUnpaidQuests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/Quest;",
            ">;"
        }
    .end annotation
.end field

.field private maxlevel:I

.field private scaleFactor:F

.field private scaleFactorX:F


# direct methods
.method public constructor <init>()V
    .locals 97

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 50
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    .line 58
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v3

    .line 58
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->completedUnpaidQuests:Ljava/util/List;

    .line 61
    const-string v3, "b_level_up"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 63
    const-string v3, "ui_coffee"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    .line 66
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getHorizontalAR()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    .line 67
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBattleReport()Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    .line 69
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getMaxLevel()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->maxlevel:I

    .line 74
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v4, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v65

    .line 81
    .local v65, "fadeIn":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    const/high16 v3, 0x40200000    # 2.5f

    move-object/from16 v0, v65

    invoke-static {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v63

    .line 83
    .local v63, "delay":Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v50

    .line 85
    .local v50, "aTeam":Lcom/gaiaonline/monstergalaxy/model/trainer/Team;
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 86
    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 85
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 88
    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 90
    new-instance v57, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 91
    const-string v3, "reportcard.bg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 90
    move-object/from16 v0, v57

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 93
    .local v57, "bg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v4

    div-float/2addr v3, v4

    .line 94
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->getScaleFactor()F

    move-result v5

    div-float/2addr v4, v5

    .line 92
    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setSize(FF)V

    .line 96
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 97
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 100
    const/16 v69, 0x0

    .local v69, "i":I
    :goto_0
    const/4 v3, 0x3

    move/from16 v0, v69

    if-lt v0, v3, :cond_6

    .line 110
    const/16 v70, 0x0

    .line 111
    .local v70, "iterator":I
    invoke-virtual/range {v50 .. v50}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 122
    const-string v3, "green.btn.small"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v74

    .line 124
    .local v74, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v3, "green.btn.small.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v78

    .line 126
    .local v78, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v78

    invoke-direct {v8, v0, v3, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 128
    .local v8, "nextButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, -0x3d7e0000    # -65.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v8, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v3, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    const-string v4, "Next"

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 132
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v10, 0x3f333333    # 0.7f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 131
    invoke-virtual/range {v3 .. v13}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 134
    const/high16 v3, 0x43390000    # 185.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v92, v0

    .line 135
    .local v92, "yBar0":I
    const/high16 v3, 0x43110000    # 145.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v93, v0

    .line 136
    .local v93, "yBar1":I
    const/high16 v3, 0x42d20000    # 105.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v94, v0

    .line 137
    .local v94, "yBar2":I
    const/high16 v3, 0x43fa0000    # 500.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v89, v0

    .line 139
    .local v89, "xBar":I
    new-instance v46, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v3, "aGroup"

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 140
    .local v46, "aBarXp":Lcom/badlogic/gdx/scenes/scene2d/Group;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v46

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 141
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v46

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 142
    move/from16 v0, v89

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, v46

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 143
    move/from16 v0, v92

    int-to-float v3, v0

    move-object/from16 v0, v46

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 147
    new-instance v56, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "abrImage"

    const-string v4, "bar"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 148
    .local v56, "barImageXP":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    move-object/from16 v0, v56

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v56

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 149
    move-object/from16 v0, v56

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v56

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 150
    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 152
    new-instance v9, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v10, "xp_earned_label"

    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 153
    const-string v12, "XP EARNED"

    sget-object v13, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 152
    invoke-direct/range {v9 .. v14}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 154
    .local v9, "aTextXp":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    iput v3, v9, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 155
    const/high16 v3, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    iput v3, v9, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 156
    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 157
    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 159
    move-object/from16 v0, v46

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v46

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 160
    move-object/from16 v0, v46

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v46

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 162
    new-instance v45, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v3, "a_group"

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 163
    .local v45, "aBarTot":Lcom/badlogic/gdx/scenes/scene2d/Group;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v45

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 164
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v45

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 165
    const/4 v3, 0x0

    move-object/from16 v0, v45

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 166
    move/from16 v0, v93

    int-to-float v3, v0

    move-object/from16 v0, v45

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 168
    new-instance v55, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "bar_image"

    const-string v4, "bar"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 169
    .local v55, "barImageTot":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    move/from16 v0, v89

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, v55

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 170
    move/from16 v0, v93

    int-to-float v3, v0

    move-object/from16 v0, v55

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 171
    move-object/from16 v0, v55

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v55

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 172
    move-object/from16 v0, v55

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v55

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 175
    new-instance v10, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v11, "total_label"

    sget-object v12, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 176
    const-string v13, "TOTAL"

    sget-object v14, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 175
    invoke-direct/range {v10 .. v15}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 177
    .local v10, "aTextTot":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    iput v3, v10, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 178
    const/high16 v3, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    iput v3, v10, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 179
    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 180
    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 182
    move-object/from16 v0, v45

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v45

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 183
    move-object/from16 v0, v45

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v45

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 186
    new-instance v44, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v3, "aGroupl"

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>(Ljava/lang/String;)V

    .line 187
    .local v44, "aBarLv":Lcom/badlogic/gdx/scenes/scene2d/Group;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v44

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 188
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v44

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 189
    move/from16 v0, v89

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, v44

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 190
    move/from16 v0, v94

    int-to-float v3, v0

    move-object/from16 v0, v44

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 192
    new-instance v54, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "nlevel_bar_image"

    .line 193
    const-string v4, "bar"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 192
    move-object/from16 v0, v54

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 194
    .local v54, "barImageLv":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    move-object/from16 v0, v54

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v54

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 195
    move-object/from16 v0, v54

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v54

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 196
    move-object/from16 v0, v44

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 198
    new-instance v11, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v12, "aTextl"

    sget-object v13, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v14, "LEVEL"

    .line 199
    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 198
    invoke-direct/range {v11 .. v16}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 200
    .local v11, "aTextLv":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    iput v3, v11, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 201
    const/high16 v3, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    iput v3, v11, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 202
    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 203
    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 205
    move-object/from16 v0, v44

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v44

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 206
    move-object/from16 v0, v44

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v44

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 209
    const/16 v70, 0x0

    .line 210
    invoke-virtual/range {v50 .. v50}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 294
    const/4 v3, 0x0

    move/from16 v0, v92

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v51

    .line 295
    .local v51, "action0":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    const/4 v3, 0x0

    move/from16 v0, v93

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v52

    .line 296
    .local v52, "action1":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    const/4 v3, 0x0

    move/from16 v0, v94

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v53

    .line 298
    .local v53, "action2":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    invoke-virtual/range {v46 .. v46}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearActions()V

    .line 299
    invoke-virtual/range {v45 .. v45}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearActions()V

    .line 300
    invoke-virtual/range {v44 .. v44}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearActions()V

    .line 301
    invoke-virtual/range {v55 .. v55}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->clearActions()V

    .line 303
    const v3, 0x3e99999a    # 0.3f

    move-object/from16 v0, v51

    invoke-static {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 305
    move-object/from16 v0, v45

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 306
    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 308
    const v3, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v52

    invoke-static {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 310
    const v3, 0x3fa66666    # 1.3f

    move-object/from16 v0, v53

    invoke-static {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasCapturedMogas()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getCapturedMogas()Ljava/util/List;

    move-result-object v62

    .line 317
    .local v62, "capturedMogaList":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 318
    .local v47, "aCapturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    invoke-virtual/range {v47 .. v47}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getCaptureBonus()F

    move-result v3

    .line 318
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v60

    .line 320
    .local v60, "captureRate":Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getRarity()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getName()Ljava/lang/String;

    move-result-object v61

    .line 321
    .local v61, "captureText":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "x XP Bonus - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 324
    .local v30, "bonusText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v4, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 325
    new-instance v29, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object/from16 v31, v0

    .line 326
    sget-object v33, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->TERTIARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v34, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v32, v30

    .line 325
    invoke-direct/range {v29 .. v34}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 328
    .local v29, "bonusLabel":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    invoke-static/range {v29 .. v29}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 330
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v88, v0

    .line 332
    .local v88, "wid":F
    move/from16 v0, v93

    int-to-float v3, v0

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, v29

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 333
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v88, v3

    move-object/from16 v0, v29

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, v29

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 334
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleX:F

    .line 335
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->scaleY:F

    .line 337
    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v77

    .line 338
    .local v77, "scalebonus":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v66

    .line 339
    .local v66, "fadebonus":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v4, 0x0

    aput-object v77, v3, v4

    const/4 v4, 0x1

    .line 340
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, v66

    invoke-static {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v59

    .line 341
    .local v59, "bonussecuence":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v59

    invoke-static {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 346
    .end local v29    # "bonusLabel":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v30    # "bonusText":Ljava/lang/String;
    .end local v47    # "aCapturedMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v59    # "bonussecuence":Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;
    .end local v60    # "captureRate":Ljava/lang/String;
    .end local v61    # "captureText":Ljava/lang/String;
    .end local v62    # "capturedMogaList":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/moga/Moga;>;"
    .end local v66    # "fadebonus":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    .end local v77    # "scalebonus":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    .end local v88    # "wid":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->isHighScore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    sget-object v33, Lcom/gaiaonline/monstergalaxy/app/Fonts;->italic:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 349
    .local v33, "aFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const v3, 0x3f19999a    # 0.6f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 350
    new-instance v31, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v32, "aText2"

    .line 351
    const-string v34, "NEW HIGHSCORE!"

    sget-object v35, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v36, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 350
    invoke-direct/range {v31 .. v36}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 352
    .local v31, "highscore":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    const/high16 v3, 0x43aa0000    # 340.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float v91, v3, v4

    .line 353
    .local v91, "xText":F
    const/high16 v3, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float v96, v3, v4

    .line 354
    .local v96, "yText":F
    move/from16 v0, v91

    move-object/from16 v1, v31

    iput v0, v1, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 355
    const/high16 v3, -0x3de00000    # -40.0f

    move-object/from16 v0, v31

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 356
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->color:Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3f4ccccd    # 0.8f

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 357
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v67

    .line 358
    .local v67, "fadein":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    const/high16 v3, 0x3f000000    # 0.5f

    move/from16 v0, v91

    move/from16 v1, v96

    invoke-static {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v73

    .line 360
    .local v73, "move":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v4, 0x0

    aput-object v67, v3, v4

    const/4 v4, 0x1

    aput-object v73, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 361
    invoke-static/range {v31 .. v31}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 365
    .end local v31    # "highscore":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v33    # "aFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v67    # "fadein":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    .end local v73    # "move":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .end local v91    # "xText":F
    .end local v96    # "yText":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getNumberOfRewardedBlueCoffees()I

    move-result v3

    if-gtz v3, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getNumberOfRewardedStarSeeds()I

    move-result v3

    if-lez v3, :cond_4

    .line 368
    :cond_2
    new-instance v76, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 369
    const-string v3, "found.items.bg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 368
    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 370
    .local v76, "rewardArea":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, -0x3db80000    # -50.0f

    move-object/from16 v0, v76

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v76

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v34, v0

    const-string v35, "ITEMS FOUND"

    const/high16 v36, 0x42a00000    # 80.0f

    const/high16 v37, -0x3e380000    # -25.0f

    sget-object v38, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v39, 0x3f000000    # 0.5f

    .line 374
    sget-object v40, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v41, 0x0

    const/16 v42, 0x1

    .line 373
    invoke-virtual/range {v34 .. v42}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 376
    const/16 v75, 0x0

    .line 377
    .local v75, "offset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getNumberOfRewardedBlueCoffees()I

    move-result v3

    if-lez v3, :cond_3

    .line 378
    new-instance v58, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 379
    const-string v3, "blue.coffee.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 378
    move-object/from16 v0, v58

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 380
    .local v58, "bluecoffe":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x428c0000    # 70.0f

    const/high16 v5, -0x3da40000    # -55.0f

    move-object/from16 v0, v58

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v34, v0

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getNumberOfRewardedBlueCoffees()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 384
    const/high16 v36, 0x42ae0000    # 87.0f

    const/high16 v37, -0x3da40000    # -55.0f

    sget-object v38, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v39, 0x3f19999a    # 0.6f

    sget-object v40, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v41, 0x1

    .line 385
    const/16 v42, 0x1

    .line 382
    invoke-virtual/range {v34 .. v42}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 386
    const/high16 v75, -0x3e380000    # -25.0f

    .line 389
    .end local v58    # "bluecoffe":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getNumberOfRewardedStarSeeds()I

    move-result v3

    if-lez v3, :cond_4

    .line 390
    new-instance v86, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 391
    const-string v3, "capture.starseed.icon"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 390
    move-object/from16 v0, v86

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 392
    .local v86, "starseed":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x428c0000    # 70.0f

    const/high16 v5, -0x3da40000    # -55.0f

    add-float v5, v5, v75

    move-object/from16 v0, v86

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v86

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v34, v0

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getNumberOfRewardedStarSeeds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/high16 v36, 0x42ae0000    # 87.0f

    .line 396
    const/high16 v3, -0x3da40000    # -55.0f

    add-float v37, v3, v75

    sget-object v38, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v39, 0x3f19999a    # 0.6f

    sget-object v40, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 397
    const/16 v41, 0x1

    const/16 v42, 0x1

    .line 394
    invoke-virtual/range {v34 .. v42}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 402
    .end local v75    # "offset":F
    .end local v76    # "rewardArea":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v86    # "starseed":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    :cond_4
    new-instance v79, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 403
    const-string v3, "br.separator"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 402
    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 404
    .local v79, "separator":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v4, 0x0

    const/high16 v5, -0x3d7e0000    # -65.0f

    move-object/from16 v0, v79

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 407
    new-instance v84, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct/range {v84 .. v84}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 409
    .local v84, "starsGroup":Lcom/badlogic/gdx/scenes/scene2d/Group;
    new-instance v83, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "starsback"

    .line 410
    const-string v4, "br.star.bg"

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 409
    move-object/from16 v0, v83

    invoke-direct {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 412
    .local v83, "starsBack":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    move-object/from16 v0, v83

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v83

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 413
    move-object/from16 v0, v83

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v83

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 415
    move-object/from16 v0, v84

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 417
    move-object/from16 v0, v83

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    move-object/from16 v0, v84

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    .line 418
    move-object/from16 v0, v83

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    move-object/from16 v0, v84

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->height:F

    .line 420
    const-string v3, "empty.star"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v64

    .line 421
    .local v64, "emptyStar":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v3, "full.star"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v68

    .line 423
    .local v68, "fullStar":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v37, " "

    .line 429
    .local v37, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasScoredPerfect()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 430
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->getAnalytics()Lcom/gaiaonline/monstergalaxy/analytics/Analytics;

    move-result-object v3

    const-string v4, "Perfect Attack"

    invoke-interface {v3, v4}, Lcom/gaiaonline/monstergalaxy/analytics/Analytics;->sessionMLogEvent(Ljava/lang/String;)V

    .line 431
    new-instance v80, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star1"

    move-object/from16 v0, v80

    move-object/from16 v1, v68

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 432
    .local v80, "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v81, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star2"

    move-object/from16 v0, v81

    move-object/from16 v1, v68

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 433
    .local v81, "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v82, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star3"

    move-object/from16 v0, v82

    move-object/from16 v1, v68

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 434
    .local v82, "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    const-string v37, "Perfect Attack"

    .line 451
    :goto_3
    invoke-static/range {v80 .. v80}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 452
    invoke-static/range {v81 .. v81}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 453
    invoke-static/range {v82 .. v82}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 455
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v80

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 456
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v81

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 457
    const/high16 v3, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v82

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->y:F

    .line 459
    const/high16 v3, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v80

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 460
    const/high16 v3, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v81

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 461
    const/high16 v3, 0x42be0000    # 95.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v82

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->x:F

    .line 463
    move-object/from16 v0, v84

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 464
    move-object/from16 v0, v84

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 465
    move-object/from16 v0, v84

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 467
    sget-object v36, Lcom/gaiaonline/monstergalaxy/app/Fonts;->regular:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 468
    .local v36, "scoreFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const v3, 0x3f59999a    # 0.85f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 469
    new-instance v34, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v35, "scoreTest"

    .line 470
    sget-object v38, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v39, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONDARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 469
    invoke-direct/range {v34 .. v39}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 472
    .local v34, "scoreText":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    move-object/from16 v0, v83

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v34

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, v34

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 473
    const/high16 v3, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v34

    iput v3, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 474
    move-object/from16 v0, v84

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 476
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;->$(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;

    move-result-object v87

    .line 477
    .local v87, "starsfadeIn":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    const/high16 v3, 0x40200000    # 2.5f

    move-object/from16 v0, v87

    invoke-static {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;F)Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;

    move-result-object v85

    .line 478
    .local v85, "starsdelay":Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    invoke-virtual/range {v84 .. v84}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearActions()V

    .line 479
    move-object/from16 v0, v84

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 481
    invoke-virtual/range {v84 .. v85}, Lcom/badlogic/gdx/scenes/scene2d/Group;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 483
    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v84

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 484
    const/high16 v3, 0x43700000    # 240.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v84

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, v84

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-object/from16 v0, v84

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->isMogaMaxLevelReached()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->isMaxLevelAtStart()Z

    move-result v3

    if-nez v3, :cond_5

    .line 489
    const-string v40, "Greetings, Tamer! You might have noticed that one of your mogas reached its maximum level in the last battle. You\'ll need to unlock the next island before your moga can continue to earn experience and level-up."

    .line 494
    .local v40, "message":Ljava/lang/String;
    new-instance v38, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;

    const-string v41, "Keep Playing"

    .line 495
    sget-object v42, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v43, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object/from16 v39, p0

    invoke-direct/range {v38 .. v43}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 497
    .end local v40    # "message":Ljava/lang/String;
    :cond_5
    return-void

    .line 102
    .end local v8    # "nextButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .end local v9    # "aTextXp":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v10    # "aTextTot":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v11    # "aTextLv":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v34    # "scoreText":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v36    # "scoreFont":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v37    # "msg":Ljava/lang/String;
    .end local v44    # "aBarLv":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .end local v45    # "aBarTot":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .end local v46    # "aBarXp":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .end local v51    # "action0":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .end local v52    # "action1":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .end local v53    # "action2":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .end local v54    # "barImageLv":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v55    # "barImageTot":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v56    # "barImageXP":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v64    # "emptyStar":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v68    # "fullStar":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v70    # "iterator":I
    .end local v74    # "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v78    # "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v79    # "separator":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v80    # "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v81    # "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v82    # "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v83    # "starsBack":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v84    # "starsGroup":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .end local v85    # "starsdelay":Lcom/badlogic/gdx/scenes/scene2d/actions/Delay;
    .end local v87    # "starsfadeIn":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeTo;
    .end local v89    # "xBar":I
    .end local v92    # "yBar0":I
    .end local v93    # "yBar1":I
    .end local v94    # "yBar2":I
    :cond_6
    mul-int/lit8 v3, v69, 0x6e

    add-int/lit16 v0, v3, 0xd2

    move/from16 v90, v0

    .line 104
    .local v90, "xPos":I
    new-instance v72, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 105
    const-string v3, "mogabg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 104
    move-object/from16 v0, v72

    invoke-direct {v0, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 106
    .local v72, "mogabg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move/from16 v0, v90

    int-to-float v4, v0

    const/high16 v5, -0x3da40000    # -55.0f

    move-object/from16 v0, v72

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v72

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 100
    add-int/lit8 v69, v69, 0x1

    goto/16 :goto_0

    .line 111
    .end local v72    # "mogabg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v90    # "xPos":I
    .restart local v70    # "iterator":I
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 113
    .local v48, "aMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    mul-int/lit8 v4, v70, 0x6e

    add-int/lit16 v0, v4, 0xd2

    move/from16 v90, v0

    .line 115
    .restart local v90    # "xPos":I
    new-instance v71, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    invoke-virtual/range {v48 .. v48}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    .line 115
    move-object/from16 v0, v71

    invoke-direct {v0, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 117
    .local v71, "mogaAsset":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move/from16 v0, v90

    int-to-float v5, v0

    const/high16 v6, -0x3da40000    # -55.0f

    move-object/from16 v0, v71

    invoke-virtual {v0, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 119
    add-int/lit8 v70, v70, 0x1

    goto/16 :goto_1

    .line 210
    .end local v48    # "aMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v71    # "mogaAsset":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v90    # "xPos":I
    .restart local v8    # "nextButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .restart local v9    # "aTextXp":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .restart local v10    # "aTextTot":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .restart local v11    # "aTextLv":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .restart local v44    # "aBarLv":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .restart local v45    # "aBarTot":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .restart local v46    # "aBarXp":Lcom/badlogic/gdx/scenes/scene2d/Group;
    .restart local v54    # "barImageLv":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .restart local v55    # "barImageTot":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .restart local v56    # "barImageXP":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .restart local v74    # "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v78    # "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v89    # "xBar":I
    .restart local v92    # "yBar0":I
    .restart local v93    # "yBar1":I
    .restart local v94    # "yBar2":I
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 212
    .restart local v48    # "aMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    .line 213
    invoke-virtual/range {v48 .. v48}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->getMogaChangesReport(Ljava/lang/Integer;)Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;

    move-result-object v49

    .line 215
    .local v49, "aMogaChangesReport":Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;
    mul-int/lit8 v4, v70, 0x6e

    add-int/lit16 v0, v4, 0xd2

    move/from16 v90, v0

    .line 216
    .restart local v90    # "xPos":I
    const/16 v95, 0xa

    .line 218
    .local v95, "yPos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v5, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 219
    new-instance v12, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v13, "text_exp"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getVariableXP()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 221
    sget-object v17, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 219
    invoke-direct/range {v12 .. v17}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 222
    .local v12, "textXp":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    move/from16 v0, v90

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v4, v5

    .line 223
    iget v5, v12, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 222
    iput v4, v12, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 224
    move/from16 v0, v95

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    iput v4, v12, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 226
    invoke-static {v12}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 228
    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v5, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 231
    new-instance v13, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v14, "text_total"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getTotalXP()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->SECONARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 231
    invoke-direct/range {v13 .. v18}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 234
    .local v13, "textTot":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    move/from16 v0, v90

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v4, v5

    .line 235
    iget v5, v13, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 234
    iput v4, v13, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 236
    move/from16 v0, v95

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    iput v4, v13, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 238
    invoke-static {v13}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 239
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v5, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 242
    new-instance v26, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;

    const-string v4, "text_level"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    move-object/from16 v0, v26

    invoke-direct {v0, v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V

    .line 245
    .local v26, "textLevel":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f000000    # 0.5f

    move/from16 v0, v70

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float v20, v4, v5

    .line 246
    .local v20, "delayTime":F
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getLevelCompletion()I

    move-result v16

    .line 248
    .local v16, "currentCompletion":I
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getNewLevelCompletion()I

    move-result v24

    .line 249
    .local v24, "newCompletion":I
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getNewLevel()I

    move-result v25

    .line 251
    .local v25, "newLevel":I
    move/from16 v0, v90

    int-to-float v0, v0

    move/from16 v27, v0

    .line 253
    .local v27, "mogaIndex":F
    move/from16 v0, v90

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x422c0000    # 43.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v5, v6

    sub-float v28, v4, v5

    .line 255
    .local v28, "aImage1x":F
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getLevel()I

    move-result v4

    .line 256
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getNewLevel()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 258
    new-instance v14, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    const-string v15, "aImage1"

    const/16 v17, 0x64

    .line 259
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getLevel()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->maxlevel:I

    move/from16 v19, v0

    .line 258
    invoke-direct/range {v14 .. v20}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;-><init>(Ljava/lang/String;IIIIF)V

    .line 260
    .local v14, "aImage1":Lcom/gaiaonline/monstergalaxy/battle/LevelBar;
    new-instance v21, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;

    move-object/from16 v22, p0

    move-object/from16 v23, v14

    invoke-direct/range {v21 .. v28}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;Lcom/gaiaonline/monstergalaxy/battle/LevelBar;IILcom/badlogic/gdx/scenes/scene2d/actors/Label;FF)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->setOnConpletionListener(Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;)V

    .line 280
    :goto_4
    move/from16 v0, v28

    iput v0, v14, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->x:F

    .line 281
    move/from16 v0, v95

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    iput v4, v14, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->y:F

    .line 283
    move-object/from16 v0, v44

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 285
    iget v4, v14, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;->x:F

    move-object/from16 v0, v26

    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->width:F

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->x:F

    .line 286
    move/from16 v0, v95

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Label;->y:F

    .line 287
    invoke-static/range {v26 .. v26}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 288
    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 290
    add-int/lit8 v70, v70, 0x1

    goto/16 :goto_2

    .line 275
    .end local v14    # "aImage1":Lcom/gaiaonline/monstergalaxy/battle/LevelBar;
    :cond_9
    new-instance v14, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;

    const-string v15, "aImage1"

    .line 276
    invoke-virtual/range {v49 .. v49}, Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;->getLevel()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->maxlevel:I

    move/from16 v19, v0

    move/from16 v17, v24

    .line 275
    invoke-direct/range {v14 .. v20}, Lcom/gaiaonline/monstergalaxy/battle/LevelBar;-><init>(Ljava/lang/String;IIIIF)V

    .restart local v14    # "aImage1":Lcom/gaiaonline/monstergalaxy/battle/LevelBar;
    goto :goto_4

    .line 435
    .end local v12    # "textXp":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v13    # "textTot":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    .end local v14    # "aImage1":Lcom/gaiaonline/monstergalaxy/battle/LevelBar;
    .end local v16    # "currentCompletion":I
    .end local v20    # "delayTime":F
    .end local v24    # "newCompletion":I
    .end local v25    # "newLevel":I
    .end local v26    # "textLevel":Lcom/badlogic/gdx/scenes/scene2d/actors/Label;
    .end local v27    # "mogaIndex":F
    .end local v28    # "aImage1x":F
    .end local v48    # "aMoga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    .end local v49    # "aMogaChangesReport":Lcom/gaiaonline/monstergalaxy/model/battle/MogaChangesReport;
    .end local v90    # "xPos":I
    .end local v95    # "yPos":I
    .restart local v37    # "msg":Ljava/lang/String;
    .restart local v51    # "action0":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .restart local v52    # "action1":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .restart local v53    # "action2":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    .restart local v64    # "emptyStar":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v68    # "fullStar":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .restart local v79    # "separator":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .restart local v83    # "starsBack":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .restart local v84    # "starsGroup":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasScoredVeryGood()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 436
    new-instance v80, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star1"

    move-object/from16 v0, v80

    move-object/from16 v1, v68

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 437
    .restart local v80    # "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v81, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star2"

    move-object/from16 v0, v81

    move-object/from16 v1, v68

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 438
    .restart local v81    # "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v82, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star3"

    move-object/from16 v0, v82

    move-object/from16 v1, v64

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 439
    .restart local v82    # "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    const-string v37, "Very Good Attacks"

    goto/16 :goto_3

    .line 440
    .end local v80    # "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v81    # "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v82    # "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasScoredNormal()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 441
    new-instance v80, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star1"

    move-object/from16 v0, v80

    move-object/from16 v1, v68

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 442
    .restart local v80    # "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v81, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star2"

    move-object/from16 v0, v81

    move-object/from16 v1, v64

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 443
    .restart local v81    # "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v82, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star3"

    move-object/from16 v0, v82

    move-object/from16 v1, v64

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 444
    .restart local v82    # "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    const-string v37, "Win"

    goto/16 :goto_3

    .line 446
    .end local v80    # "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v81    # "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .end local v82    # "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    :cond_c
    new-instance v80, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star1"

    move-object/from16 v0, v80

    move-object/from16 v1, v64

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 447
    .restart local v80    # "star1":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v81, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star2"

    move-object/from16 v0, v81

    move-object/from16 v1, v64

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 448
    .restart local v81    # "star2":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    new-instance v82, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v3, "star3"

    move-object/from16 v0, v82

    move-object/from16 v1, v64

    invoke-direct {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .restart local v82    # "star3":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    goto/16 :goto_3
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    return v0
.end method

.method static synthetic access$2(Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;F)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->mogaLevelUp(F)V

    return-void
.end method

.method private mogaLevelUp(F)V
    .locals 14
    .param p1, "xPos"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    .line 506
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const v2, 0x3f59999a    # 0.85f

    iget v3, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setScale(F)V

    .line 507
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;

    const-string v1, "aText2"

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->aBmpFont:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 508
    const-string v3, "LEVEL \n UP!"

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 507
    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 512
    .local v0, "levelup":Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactorX:F

    mul-float/2addr v1, p1

    .line 513
    iget v2, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->width:F

    mul-float/2addr v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 512
    sub-float v10, v1, v2

    .line 514
    .local v10, "xPosition":F
    const/high16 v1, 0x43870000    # 270.0f

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float v11, v1, v2

    .line 516
    .local v11, "yPosition":F
    iput v10, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->x:F

    .line 517
    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->scaleFactor:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->y:F

    .line 518
    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v7

    .line 519
    .local v7, "fadein":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 520
    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;->$(F)Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;

    move-result-object v8

    .line 521
    .local v8, "fadeinLevelup":Lcom/badlogic/gdx/scenes/scene2d/actions/FadeIn;
    invoke-static {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;

    move-result-object v9

    .line 523
    .local v9, "movelevelup":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveTo;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Parallel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/ShadowLabel;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 525
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 527
    new-instance v6, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;

    const-string v1, "sparkles"

    invoke-direct {v6, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;-><init>(Ljava/lang/String;)V

    .line 528
    .local v6, "aEffect":Lcom/gaiaonline/monstergalaxy/battle/EffectActor;
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getInstance()Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;

    move-result-object v1

    .line 529
    sget-object v2, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;->STARS:Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/battle/effects/EffectManager;->getEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/EffectType;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->getCopy()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    .line 528
    invoke-virtual {v6, v1}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 531
    iput v10, v6, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->x:F

    .line 532
    iput v11, v6, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->y:F

    .line 534
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 535
    invoke-virtual {v6}, Lcom/gaiaonline/monstergalaxy/battle/EffectActor;->getEffect()Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 537
    const-string v1, "b_level_up"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 539
    return-void
.end method


# virtual methods
.method public onBackKeyPressed()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 553
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->NEXT_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_3

    .line 555
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->commitCaptures()V

    .line 558
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->verifyIfGameCompleted()Z

    .line 560
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->completedUnpaidQuests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 561
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Constants;->worldAmbienceAudio:Ljava/lang/String;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playMusic(Ljava/lang/String;)V

    .line 562
    new-instance v1, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;

    .line 563
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->completedUnpaidQuests:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    .line 562
    invoke-direct {v1, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestStoryScreen;-><init>(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->battleReport:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;->hasUnlockedNextIsland()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCurrentIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getNextIsland()Lcom/gaiaonline/monstergalaxy/model/map/Island;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Island;->getId()I

    move-result v0

    .line 566
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToWorldFromBattleFlow(I)V

    goto :goto_0

    .line 569
    :cond_2
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->backToIslandFromBattleFlow()V

    goto :goto_0

    .line 572
    :cond_3
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CLOSE_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->hideDialog()V

    goto :goto_0
.end method

.method public present(F)V
    .locals 1
    .param p1, "deltaTime"    # F

    .prologue
    .line 543
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->present(F)V

    .line 544
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BattleReportScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    .line 549
    :cond_0
    return-void
.end method
