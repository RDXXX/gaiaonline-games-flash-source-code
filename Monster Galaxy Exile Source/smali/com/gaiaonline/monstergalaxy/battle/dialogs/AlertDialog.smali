.class public Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "AlertDialog.java"


# static fields
.field private static final MAX_MESSAGE_WIDTH:F = 335.0f


# instance fields
.field private closeEvent:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

.field private dialogTimeOut:J

.field private elapsedTime:F

.field private listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

.field private messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;ILjava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "seconds"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "closeEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 33
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .line 34
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->closeEvent:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .line 35
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->dialogTimeOut:J

    .line 37
    const-string v0, "alert.bg"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 39
    const-string v1, ""

    const v4, 0x3f0ccccd    # 0.55f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x1

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addLabel(Ljava/lang/String;FFFLcom/badlogic/gdx/graphics/Color;Z)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1, v2, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, p3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 43
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v1, 0x43a78000    # 335.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 7
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "okBtnText"    # Ljava/lang/String;
    .param p4, "okEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p5, "closeEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 60
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V
    .locals 9
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "yesBtnText"    # Ljava/lang/String;
    .param p4, "yesEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p5, "closeEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p6, "addOverlay"    # Z

    .prologue
    const/4 v5, 0x0

    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move v8, p6

    .line 67
    invoke-direct/range {v0 .. v8}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Ljava/lang/String;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Ljava/lang/String;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Z)V
    .locals 23
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "yesBtnText"    # Ljava/lang/String;
    .param p4, "yesEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p5, "noBtnText"    # Ljava/lang/String;
    .param p6, "noEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p7, "closeEvent"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;
    .param p8, "addOverlay"    # Z

    .prologue
    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 75
    const-string v3, "node.info.bg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v22

    .line 77
    .local v22, "bg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    new-instance v3, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v4, 0x3f0ccccd    # 0.55f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v4, 0x43a78000    # 335.0f

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v3, v4}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v5, 0x0

    const/high16 v6, -0x3e900000    # -15.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 88
    if-nez p5, :cond_0

    .line 90
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnLarge:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 91
    sget-object v6, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnLargePress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    .line 90
    invoke-virtual/range {v3 .. v9}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v8

    .line 94
    .local v8, "yesBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const/4 v5, 0x0

    const/high16 v6, -0x3e100000    # -30.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 95
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v10, 0x3f333333    # 0.7f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    .line 94
    invoke-virtual/range {v3 .. v13}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 115
    :goto_0
    sget-object v17, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v18, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v19, 0x43480000    # 200.0f

    const/high16 v20, 0x43800000    # 256.0f

    .line 116
    sget-object v21, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v15, p0

    move-object/from16 v16, p7

    .line 115
    invoke-virtual/range {v15 .. v21}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 117
    return-void

    .line 98
    .end local v8    # "yesBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    :cond_0
    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 99
    sget-object v12, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v13, -0x3d4c0000    # -90.0f

    const/high16 v14, 0x42c80000    # 100.0f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    .line 98
    invoke-virtual/range {v9 .. v15}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v8

    .line 102
    .restart local v8    # "yesBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const/4 v5, 0x0

    const/high16 v6, -0x3e100000    # -30.0f

    sget-object v7, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 103
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v10, 0x3f333333    # 0.7f

    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    .line 102
    invoke-virtual/range {v3 .. v13}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 106
    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 107
    sget-object v12, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtnPressed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v13, 0x42b40000    # 90.0f

    const/high16 v14, 0x42c80000    # 100.0f

    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    .line 106
    invoke-virtual/range {v9 .. v15}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v14

    .line 110
    .local v14, "noBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const/4 v11, 0x0

    const/high16 v12, -0x3e100000    # -30.0f

    sget-object v13, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 111
    sget-object v15, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v16, 0x3f333333    # 0.7f

    sget-object v17, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    .line 110
    invoke-virtual/range {v9 .. v19}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    goto :goto_0
.end method


# virtual methods
.method public present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0
    .param p1, "batcher"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->present(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 146
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v1, 0x43a78000    # 335.0f

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 51
    :cond_0
    return-void
.end method

.method public setTimeOut(I)V
    .locals 2
    .param p1, "seconds"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->dialogTimeOut:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->elapsedTime:F

    .line 56
    return-void
.end method

.method public setWrapWidth(F)V
    .locals 1
    .param p1, "wrapWidth"    # F

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 121
    return-void
.end method

.method public update(F)V
    .locals 4
    .param p1, "deltaTime"    # F

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;->update(F)V

    .line 127
    iget-wide v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->dialogTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 128
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->elapsedTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->elapsedTime:F

    .line 130
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->elapsedTime:F

    iget-wide v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->dialogTimeOut:J

    long-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->listener:Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/AlertDialog;->closeEvent:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 136
    :cond_0
    return-void
.end method
