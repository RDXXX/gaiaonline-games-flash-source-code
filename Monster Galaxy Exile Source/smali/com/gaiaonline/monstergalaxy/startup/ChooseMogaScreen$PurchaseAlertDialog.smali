.class Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "ChooseMogaScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PurchaseAlertDialog"
.end annotation


# static fields
.field private static final MAX_MESSAGE_WIDTH:F = 335.0f


# instance fields
.field private messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;Ljava/lang/String;)V
    .locals 8
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 209
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V

    .line 194
    const-string v0, "node.info.bg"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 196
    const-string v1, ""

    const v4, 0x3f0ccccd    # 0.55f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x1

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 197
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 198
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, p2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 200
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v1, 0x43a78000    # 335.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 202
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 203
    .local v7, "moga":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->access$0(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->getMogaActor(I)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 205
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 206
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {v7, v0, v2, v1}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 208
    invoke-virtual {p0, v7}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    return-void
.end method

.method private getMogaActor(I)Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    .locals 10
    .param p1, "mogaTypeId"    # I

    .prologue
    const v9, 0x3f99999a    # 1.2f

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f333333    # 0.7f

    .line 212
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getStorage()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;->getMogaType(I)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    move-result-object v1

    .line 213
    .local v1, "mogaType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v4, "moga"

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->access$1(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;)Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-result-object v5

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;->getAsset()Lcom/gaiaonline/monstergalaxy/assets/Asset;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->get(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 215
    .local v0, "image":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    invoke-static {v9, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v3

    .line 216
    .local v3, "scaleUp":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    invoke-static {v8, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v2

    .line 218
    .local v2, "scaleDown":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 220
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 222
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    mul-float/2addr v4, v7

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->width:F

    .line 223
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    mul-float/2addr v4, v7

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->height:F

    .line 225
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen$PurchaseAlertDialog;->this$0:Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;->access$1(Lcom/gaiaonline/monstergalaxy/startup/ChooseMogaScreen;)Lcom/gaiaonline/monstergalaxy/screen/Root;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsCache;->disposeAssets(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 232
    invoke-super {p0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->dispose()V

    .line 233
    return-void
.end method
