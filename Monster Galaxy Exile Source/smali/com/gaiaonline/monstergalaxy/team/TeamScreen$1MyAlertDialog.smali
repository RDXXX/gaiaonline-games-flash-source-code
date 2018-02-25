.class Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1MyAlertDialog;
.super Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
.source "TeamScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/team/TeamScreen;->showSleepTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAlertDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/team/TeamScreen;Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 11
    .param p2, "screen"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "okBtnText"    # Ljava/lang/String;
    .param p5, "okEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p6, "closeEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1MyAlertDialog;->this$0:Lcom/gaiaonline/monstergalaxy/team/TeamScreen;

    .line 231
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 233
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;

    invoke-direct {v7}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;-><init>()V

    .line 234
    .local v7, "arrowElement":Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;

    const-string v0, "downArrow"

    const-string v1, "down.arrow"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 236
    .local v8, "attackArrow":Lcom/badlogic/gdx/scenes/scene2d/actors/Image;
    const v0, 0x3f99999a    # 1.2f

    const v1, 0x3f99999a    # 1.2f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v10

    .line 237
    .local v10, "scaleUp":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;->$(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;

    move-result-object v9

    .line 239
    .local v9, "scaleDown":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleTo;
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;->$([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;->$(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/Forever;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/actors/Image;->action(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 240
    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/app/ResolutionManager;->scaleActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 242
    invoke-virtual {v7, v8}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setActorDeprecated(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 243
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 244
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, 0x42ce0000    # 103.0f

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v7, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ActorScreenElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 246
    invoke-virtual {p0, v7}, Lcom/gaiaonline/monstergalaxy/team/TeamScreen$1MyAlertDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    return-void
.end method
