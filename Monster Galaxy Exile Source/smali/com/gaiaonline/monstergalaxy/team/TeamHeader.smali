.class public Lcom/gaiaonline/monstergalaxy/team/TeamHeader;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "TeamHeader.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;
    }
.end annotation


# static fields
.field private static final HEADER_HEIGHT:I = 0x64


# instance fields
.field private blueCoffees:I

.field private blueCoffeesTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private mogaTypeCount:I

.field private numberOfCaughtMogas:I

.field private numberOfMogas:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field private portraitViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;",
            ">;"
        }
    .end annotation
.end field

.field private teamMogas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation
.end field

.field private trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

.field private trainerMogas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/moga/Moga;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 20
    .param p1, "doneListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>()V

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 41
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 42
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 43
    const/high16 v5, 0x43f00000    # 480.0f

    const/high16 v6, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->setSize(FF)V

    .line 45
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->portraitViews:Ljava/util/List;

    .line 48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getTeam()Lcom/gaiaonline/monstergalaxy/model/trainer/Team;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Team;->getMogas()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->teamMogas:Ljava/util/List;

    .line 49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getMogas()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainerMogas:Ljava/util/List;

    .line 51
    const/high16 v7, -0x3de00000    # -40.0f

    .line 53
    .local v7, "mogaPosition":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v5, 0x3

    if-lt v9, v5, :cond_0

    .line 63
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v5

    sget-object v6, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-interface {v5, v6}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypeCount(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)I

    move-result v5

    .line 64
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v6

    sget-object v8, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-interface {v6, v8}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaTypeCount(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;)I

    move-result v6

    add-int/2addr v5, v6

    .line 63
    move-object/from16 v0, p0

    iput v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->mogaTypeCount:I

    .line 66
    const-string v11, "0/0"

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, 0x41d80000    # 27.0f

    const v14, 0x3f333333    # 0.7f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->numberOfMogas:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 67
    const-string v11, "Mogas Caught"

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v14, 0x3f000000    # 0.5f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->updateNumberOfMogas()V

    .line 72
    const-string v11, "000"

    const/high16 v12, 0x42fa0000    # 125.0f

    const/high16 v13, 0x41800000    # 16.0f

    const v14, 0x3f0ccccd    # 0.55f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffeesTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->updateBlueCoffees()V

    .line 76
    const-string v5, "blue.btn.small"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v18

    .line 77
    .local v18, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v5, "blue.btn.small.press"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v19

    .line 79
    .local v19, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v17, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_DONE:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 80
    .local v17, "doneButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v6, 0x43430000    # 195.0f

    const/high16 v8, 0x41700000    # 15.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v8}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 81
    const v5, 0x3f666666    # 0.9f

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 84
    const-string v11, "Done"

    const/high16 v12, 0x43430000    # 195.0f

    const/high16 v13, 0x41a00000    # 20.0f

    const v14, 0x3f19999a    # 0.6f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0x1

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 85
    return-void

    .line 54
    .end local v17    # "doneButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .end local v18    # "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v19    # "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_0
    new-instance v4, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->screenListener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;-><init>(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;FFI)V

    .line 56
    .local v4, "portrait":Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->portraitViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v7, v5

    .line 53
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->teamMogas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;I)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->removeMogaFromTeam(I)V

    return-void
.end method

.method private removeMogaFromTeam(I)V
    .locals 3
    .param p1, "mogaIndex"    # I

    .prologue
    .line 137
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->teamMogas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->teamMogas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 149
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 143
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->portraitViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;

    .line 144
    .local v1, "view":Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;
    invoke-static {v1, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateBlueCoffees()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v2

    iput v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffees:I

    .line 101
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffees:I

    const/16 v3, 0x3e7

    if-gt v2, v3, :cond_0

    .line 102
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffees:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "blueCoffeesLabelText":Ljava/lang/String;
    const v0, 0x3f0ccccd    # 0.55f

    .line 109
    .local v0, "blueCoffeeFontScale":F
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffeesTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 110
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffeesTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 111
    return-void

    .line 105
    .end local v0    # "blueCoffeeFontScale":F
    .end local v1    # "blueCoffeesLabelText":Ljava/lang/String;
    :cond_0
    const-string v1, "+999"

    .line 106
    .restart local v1    # "blueCoffeesLabelText":Ljava/lang/String;
    const v0, 0x3ed70a3d    # 0.42f

    .restart local v0    # "blueCoffeeFontScale":F
    goto :goto_0
.end method

.method private updateNumberOfMogas()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainerMogas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->numberOfCaughtMogas:I

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->numberOfCaughtMogas:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->mogaTypeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->numberOfMogas:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 115
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;->update(F)V

    .line 121
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->blueCoffees:I

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainer:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getBlueCoffeeCups()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->updateBlueCoffees()V

    .line 125
    :cond_0
    iget v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->numberOfCaughtMogas:I

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->trainerMogas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->updateNumberOfMogas()V

    .line 129
    :cond_1
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 133
    return-void

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->portraitViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;

    invoke-static {v1, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;I)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
