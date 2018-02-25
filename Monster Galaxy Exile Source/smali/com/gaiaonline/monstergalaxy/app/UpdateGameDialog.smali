.class public Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;
.super Lcom/gaiaonline/monstergalaxy/screen/Dialog;
.source "UpdateGameDialog.java"


# static fields
.field private static final MAX_MESSAGE_WIDTH:F = 335.0f


# instance fields
.field private messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
    .locals 20
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;

    .prologue
    .line 18
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/Dialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Z)V

    .line 20
    const-string v2, "node.info.bg"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    move-result-object v19

    .line 22
    .local v19, "bg":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    new-instance v2, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const-string v3, "Hey Tamer! An update for Monster Galaxy is now available! Would you like to get it now?"

    const v4, 0x3f0ccccd    # 0.55f

    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v3, 0x43a78000    # 335.0f

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setTextAlignment(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)V

    .line 27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/4 v4, 0x0

    const/high16 v5, -0x3e900000    # -15.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAlign(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 32
    sget-object v3, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->OK_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 33
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v6, -0x3d600000    # -80.0f

    const/high16 v7, 0x42c80000    # 100.0f

    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v2, p0

    .line 32
    invoke-virtual/range {v2 .. v8}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v7

    .line 35
    .local v7, "yesBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const-string v3, "Yes, update now!"

    const/4 v4, 0x0

    const/high16 v5, -0x3e100000    # -30.0f

    sget-object v6, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 36
    sget-object v8, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v9, 0x3f19999a    # 0.6f

    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    .line 35
    invoke-virtual/range {v2 .. v12}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 38
    sget-object v9, Lcom/gaiaonline/monstergalaxy/screen/UIEvent;->CANCEL_BUTTON:Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    sget-object v10, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 39
    sget-object v11, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v13, 0x42c80000    # 100.0f

    sget-object v14, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    move-object/from16 v8, p0

    .line 38
    invoke-virtual/range {v8 .. v14}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->addButton(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    move-result-object v13

    .line 41
    .local v13, "noBtn":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    const-string v9, "Not now, laterz"

    const/4 v10, 0x0

    const/high16 v11, -0x3e100000    # -30.0f

    sget-object v12, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 42
    sget-object v14, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v15, 0x3f19999a    # 0.6f

    sget-object v16, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v8, p0

    .line 41
    invoke-virtual/range {v8 .. v18}, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->addLabel(Ljava/lang/String;FFLcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FLcom/badlogic/gdx/graphics/Color;ZZ)Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    .line 43
    return-void
.end method


# virtual methods
.method public setWrapWidth(F)V
    .locals 1
    .param p1, "wrapWidth"    # F

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/app/UpdateGameDialog;->messageTextElement:Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    invoke-virtual {v0, p1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setWrapWidth(F)V

    .line 47
    return-void
.end method
