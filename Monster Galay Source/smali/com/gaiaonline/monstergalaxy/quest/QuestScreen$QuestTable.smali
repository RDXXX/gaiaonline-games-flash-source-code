.class Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;
.super Lcom/gaiaonline/monstergalaxy/screen/TableElement;
.source "QuestScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuestTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gaiaonline/monstergalaxy/screen/TableElement",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;>;"
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->this$0:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    .line 49
    const v1, 0x43e23333    # 452.4f

    const/high16 v2, 0x436c0000    # 236.0f

    const/high16 v3, 0x42700000    # 60.0f

    .line 50
    const-string v0, "quest_color_08"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/TableElement;-><init>(FFFLcom/badlogic/gdx/graphics/Color;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public makeEmptyListRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/screen/TableElement",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
            ">.TableRow;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "row":Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;>.TableRow;"
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 126
    const-string v1, "You have no quests right now."

    const v2, 0x3f266666    # 0.65f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->FIFTH_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x1

    .line 125
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 127
    .local v0, "titleElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 128
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, -0x3d380000    # -100.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 131
    return-void
.end method

.method public makeRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;I)V
    .locals 14
    .param p2, "item"    # Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gaiaonline/monstergalaxy/screen/TableElement",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
            ">.TableRow;",
            "Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "aRow":Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;, "Lcom/gaiaonline/monstergalaxy/screen/TableElement<Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;>.TableRow;"
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    .line 59
    .local v0, "aQuestProgress":Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;
    rem-int/lit8 v10, p3, 0x2

    if-nez v10, :cond_0

    .line 60
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->this$0:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->access$0(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->addBackground(Lcom/badlogic/gdx/graphics/Color;)V

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getQuest()Lcom/gaiaonline/monstergalaxy/model/quest/Quest;

    move-result-object v10

    invoke-virtual {v10}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest;->getName()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "text":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getCompletedTasks()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;->getRequiredTasks()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "progress":Ljava/lang/String;
    new-instance v4, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 70
    const-string v10, "quest.icon"

    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    .line 69
    invoke-direct {v4, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 71
    .local v4, "icon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v4, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 72
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v11, 0x41700000    # 15.0f

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 73
    invoke-virtual {p1, v4}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 75
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v10, 0x3f266666    # 0.65f

    .line 76
    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->this$0:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->access$2(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    const/4 v12, 0x1

    .line 75
    invoke-direct {v9, v8, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 77
    .local v9, "titleElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 78
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v11, 0x428c0000    # 70.0f

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 79
    const v10, 0x3f4ccccd    # 0.8f

    invoke-virtual {v9, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setScale(F)V

    .line 80
    invoke-virtual {p1, v9}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 82
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v10, 0x3f266666    # 0.65f

    .line 83
    iget-object v11, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->this$0:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    invoke-static {v11}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->access$3(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    const/4 v12, 0x1

    .line 82
    invoke-direct {v7, v6, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 84
    .local v7, "progressElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 85
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v11, 0x438e8000    # 285.0f

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 86
    const v10, 0x3f4ccccd    # 0.8f

    invoke-virtual {v7, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setScale(F)V

    .line 88
    invoke-virtual {p1, v7}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 90
    const-string v10, "green.btn"

    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 92
    .local v3, "greenBtn":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;

    invoke-direct {v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 93
    .local v1, "buttonGroup":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v1, v10}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 94
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v11, -0x3df40000    # -35.0f

    const/high16 v12, -0x3f600000    # -5.0f

    invoke-virtual {v1, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 95
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v10

    int-to-float v10, v10

    .line 96
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v11

    int-to-float v11, v11

    .line 95
    invoke-virtual {v1, v10, v11}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->setSize(FF)V

    .line 98
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 99
    const-string v12, "green.btn.press"

    invoke-static {v12}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    .line 98
    invoke-direct {v2, v10, v11, v3, v12}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 100
    .local v2, "buyButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v2, v10}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 101
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v10}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 102
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 103
    new-instance v10, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable$1;

    invoke-direct {v10, p0, v0}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable$1;-><init>(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;)V

    invoke-virtual {v2, v10}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setTouchReleasedListener(Lcom/gaiaonline/monstergalaxy/screen/TouchReleasedListener;)V

    .line 112
    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 114
    new-instance v5, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v10, "Info"

    const/high16 v11, 0x3f400000    # 0.75f

    sget-object v12, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 115
    const/4 v13, 0x0

    .line 114
    invoke-direct {v5, v10, v11, v12, v13}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 116
    .local v5, "infoLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v5, v10}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 117
    sget-object v10, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v11, 0x0

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v5, v10, v11, v12}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 119
    invoke-virtual {v1, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 121
    return-void

    .line 62
    .end local v1    # "buttonGroup":Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
    .end local v2    # "buyButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    .end local v3    # "greenBtn":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v4    # "icon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    .end local v5    # "infoLabel":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .end local v6    # "progress":Ljava/lang/String;
    .end local v7    # "progressElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "titleElement":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    :cond_0
    iget-object v10, p0, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->this$0:Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;

    invoke-static {v10}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;->access$1(Lcom/gaiaonline/monstergalaxy/quest/QuestScreen;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;->addBackground(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic makeRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;

    check-cast p2, Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;

    invoke-virtual {p0, p1, p2, p3}, Lcom/gaiaonline/monstergalaxy/quest/QuestScreen$QuestTable;->makeRow(Lcom/gaiaonline/monstergalaxy/screen/TableElement$TableRow;Lcom/gaiaonline/monstergalaxy/model/quest/QuestProgress;I)V

    return-void
.end method
