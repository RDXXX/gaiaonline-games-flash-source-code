.class Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "IslandScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/map/IslandScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeInfoDialog"
.end annotation


# instance fields
.field private node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)V
    .locals 1
    .param p2, "node"    # Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    .line 1008
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 1010
    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    .line 1012
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addBackground()V

    .line 1013
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addThumbnail()V

    .line 1014
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addLabels()V

    .line 1015
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addStars()V

    .line 1016
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addButtons()V

    .line 1018
    invoke-virtual {p0, p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    return-void
.end method

.method private addBackground()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1022
    const-string v0, "node.info.bg"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 1023
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    move v3, v2

    .line 1022
    invoke-virtual/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 1024
    return-void
.end method

.method private addButtons()V
    .locals 15

    .prologue
    .line 1032
    const-string v0, "red.btn.small"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 1034
    .local v2, "normalButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "red.btn.small.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 1036
    .local v3, "selectedButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 1037
    const/high16 v4, -0x3d380000    # -100.0f

    const/high16 v5, -0x3d900000    # -60.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 1036
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v13

    .line 1038
    .local v13, "cancelButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const-string v5, "Cancel"

    const/high16 v6, -0x3d380000    # -100.0f

    const/high16 v7, -0x3da40000    # -55.0f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v9, 0x3f19999a    # 0.6f

    .line 1039
    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x1

    move-object v4, p0

    .line 1038
    invoke-virtual/range {v4 .. v11}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 1041
    const-string v0, "green.btn.large"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 1042
    const-string v0, "green.btn.large.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 1044
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 1045
    const/high16 v4, 0x428c0000    # 70.0f

    const/high16 v5, -0x3d900000    # -60.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    .line 1044
    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v14

    .line 1046
    .local v14, "playButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Play    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEnergyCost()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x428c0000    # 70.0f

    const/high16 v7, -0x3da40000    # -55.0f

    .line 1047
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v9, 0x3f19999a    # 0.6f

    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 1048
    const/4 v11, 0x1

    move-object v4, p0

    .line 1046
    invoke-virtual/range {v4 .. v11}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 1051
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->isNodeCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    new-instance v12, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v12}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 1054
    .local v12, "arrow":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    const-string v1, "arrow"

    const-string v4, "arrow.left"

    invoke-static {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$1(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 1056
    invoke-virtual {v12, v14}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 1057
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v12, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 1058
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 1060
    invoke-virtual {p0, v12}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 1063
    .end local v12    # "arrow":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    :cond_0
    const-string v0, "island.energy.icon"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v4, -0x3da40000    # -55.0f

    .line 1064
    sget-object v5, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 1063
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 1066
    invoke-virtual {v13, p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 1067
    invoke-virtual {v14, p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 1068
    return-void
.end method

.method private addLabels()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    .line 1072
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getName()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x3cdb0000    # -165.0f

    const/high16 v3, 0x42aa0000    # 85.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    .line 1073
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v7, 0x3f19999a    # 0.6f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v10, v9

    .line 1072
    invoke-virtual/range {v0 .. v10}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 1076
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 1077
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getDescription()Ljava/lang/String;

    move-result-object v6

    const v7, 0x3ef0a3d7    # 0.47f

    .line 1078
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v10, 0x435c0000    # 220.0f

    .line 1076
    invoke-direct/range {v5 .. v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;ZF)V

    .line 1079
    .local v5, "descriptionLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v5, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 1080
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3d900000    # -60.0f

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v5, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 1081
    invoke-virtual {p0, v5}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 1083
    return-void
.end method

.method private addStars()V
    .locals 7

    .prologue
    .line 1086
    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v3

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNumberOfStarsWonInNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)I

    move-result v2

    .line 1088
    .local v2, "stars":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 1095
    return-void

    .line 1089
    :cond_0
    if-le v2, v1, :cond_1

    const-string v0, "island.star"

    .line 1091
    .local v0, "assetName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    mul-int/lit8 v4, v1, 0x14

    add-int/lit16 v4, v4, 0x82

    int-to-float v4, v4

    const/high16 v5, 0x42920000    # 73.0f

    .line 1092
    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 1091
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1089
    .end local v0    # "assetName":Ljava/lang/String;
    :cond_1
    const-string v0, "island.no.star"

    goto :goto_1
.end method

.method private addThumbnail()V
    .locals 5

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getThumbnailAsset()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "assetName":Ljava/lang/String;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    const/high16 v2, -0x3d1c0000    # -114.0f

    const/high16 v3, 0x41a00000    # 20.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 1029
    return-void
.end method

.method private enterNode()V
    .locals 6

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setCurrentNode(Lcom/gaiaonline/monstergalaxy/model/map/Node;)V

    .line 1120
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEnergyCost()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->consumeEnergy(I)V

    .line 1128
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCompletedUnpaidQuests()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    invoke-static {v2, v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$3(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 1130
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$4(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->setPaidQuest(Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 1131
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v2

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$4(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getNextQuest(I)Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$3(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/quest/Quest;)V

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$5(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Z)V

    .line 1136
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    .line 1138
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-static {v1, v2}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$6(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;Lcom/gaiaonline/monstergalaxy/model/map/Node;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 1140
    .local v0, "nodeScreenPos":Lcom/badlogic/gdx/math/Vector2;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$7(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 1141
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1140
    invoke-virtual {v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 1142
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$8(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v1

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 1143
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x42000000    # 32.0f

    add-float/2addr v4, v5

    .line 1142
    invoke-virtual {v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 1157
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 1161
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->dispose()V

    .line 1163
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getAndroidPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;->removeTextView()V

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$9(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->dispose()V

    .line 1168
    return-void
.end method

.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 1100
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->hideDialog()V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    if-ne p1, v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$0(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getEnergy()I

    move-result v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->node:Lcom/gaiaonline/monstergalaxy/model/map/Node;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/map/Node;->getEnergyCost()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->this$0:Lcom/gaiaonline/monstergalaxy/map/IslandScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen;->access$2(Lcom/gaiaonline/monstergalaxy/map/IslandScreen;)V

    goto :goto_0

    .line 1111
    :cond_2
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/map/IslandScreen$NodeInfoDialog;->enterNode()V

    goto :goto_0
.end method
