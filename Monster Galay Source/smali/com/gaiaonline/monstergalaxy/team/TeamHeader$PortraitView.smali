.class Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;
.super Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;
.source "TeamHeader.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/team/TeamHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortraitView"
.end annotation


# instance fields
.field private healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

.field private mogaIndex:I

.field private portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field private removeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/team/TeamHeader;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;FFI)V
    .locals 8
    .param p2, "screenListener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "mogaIndex"    # I

    .prologue
    .line 198
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamHeader;

    .line 158
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonUI;-><init>()V

    .line 160
    invoke-virtual {p0, p0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->setScreenListener(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 161
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0, p3, p4}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 162
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 163
    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->setSize(FF)V

    .line 165
    iput p5, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->mogaIndex:I

    .line 168
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v2, 0x42820000    # 65.0f

    const/high16 v3, -0x3e100000    # -30.0f

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v7

    .line 169
    .local v7, "mogaBg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setScale(F)V

    .line 173
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_REMOVE_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    const/high16 v4, 0x42820000    # 65.0f

    const/high16 v5, -0x3e100000    # -30.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 174
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 177
    new-instance v0, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;-><init>()V

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    .line 178
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 179
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v4, 0x42820000    # 65.0f

    const/high16 v5, -0x3da80000    # -54.0f

    invoke-virtual {v0, v1, v4, v5}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 181
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-virtual {p0, v0}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 184
    const-string v0, "remove.button"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 185
    .local v2, "normalRemoveButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v0, "remove.button.press"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    .line 187
    .local v3, "selectedRemoveButton":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->TEAM_REMOVE_MOGA:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    const/4 v4, 0x0

    const/high16 v5, 0x420c0000    # 35.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->removeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 188
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->removeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setScale(F)V

    .line 190
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 194
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->removeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 195
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setVisible(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;I)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->setMogaIndex(I)V

    return-void
.end method

.method private setMogaIndex(I)V
    .locals 5
    .param p1, "mogaIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iput p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->mogaIndex:I

    .line 204
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamHeader;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamHeader;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->access$0(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    .line 207
    .local v0, "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->getType()Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getPortrait()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 209
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 210
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->removeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 211
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-virtual {v1, v3}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setVisible(Z)V

    .line 213
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 225
    .end local v0    # "moga":Lcom/gaiaonline/monstergalaxy/model/moga/Moga;
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 217
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->removeButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setVisible(Z)V

    .line 218
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setVisible(Z)V

    .line 220
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->portraitElement:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setNormal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 222
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->healthBarElement:Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;

    invoke-virtual {v1, v4}, Lcom/gaiaonline/monstergalaxy/team/HealthBarElement;->setMoga(Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    goto :goto_0
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamHeader;

    iget v1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamHeader$PortraitView;->mogaIndex:I

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/team/TeamHeader;->access$1(Lcom/gaiaonline/monstergalaxy/team/TeamHeader;I)V

    .line 230
    return-void
.end method
