.class public abstract Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;
.super Lcom/gaiaonline/monstergalaxy/app/Screen;
.source "SlotMachineBaseScreen.java"


# static fields
.field protected static final FONT_SCALE_OVER_MAX_VALUE:F = 0.42f

.field protected static final FONT_SCALE_REGULAR:F = 0.75f

.field private static slotMachineScreens:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/gaiaonline/monstergalaxy/app/ScreenCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

.field protected mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->SLOTMACHINE_RESULTS:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    .line 33
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->slotMachineScreens:Ljava/util/EnumSet;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "backgroundAssetName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 36
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/app/Screen;-><init>()V

    .line 37
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 38
    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZ)V

    .line 37
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 39
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 41
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->addBackground(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 43
    new-instance v7, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 44
    const-string v0, "lucky.moga"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 43
    invoke-direct {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 45
    .local v7, "luckyMogaText":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 46
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, 0x43020000    # 130.0f

    invoke-virtual {v7, v0, v10, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 47
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v7}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 49
    new-instance v8, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;

    .line 50
    const-string v0, "capture.mcash"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    .line 49
    invoke-direct {v8, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 51
    .local v8, "mcashIcon":Lcom/gaiaonline/monstergalaxy/screen/TextureElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v8, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 52
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, -0x3e600000    # -20.0f

    invoke-virtual {v8, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/TextureElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 53
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v8}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 55
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    const-string v1, "0"

    const/high16 v2, 0x3f400000    # 0.75f

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 56
    sget-object v4, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_SHADOW_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Z)V

    .line 55
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    .line 57
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 58
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x425c0000    # 55.0f

    const/high16 v3, -0x3e780000    # -17.0f

    invoke-virtual {v0, v1, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 59
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 61
    new-instance v9, Lcom/gaiaonline/monstergalaxy/screen/TextElement;

    const v0, 0x3f19999a    # 0.6f

    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ColorConstants;->PRIMARY_FONT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, p1, v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;-><init>(Ljava/lang/String;FLcom/badlogic/gdx/graphics/Color;Z)V

    .line 62
    .local v9, "titleText":Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v9, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 63
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v1, -0x3da40000    # -55.0f

    invoke-virtual {v9, v0, v10, v1}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v9}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 66
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$1;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$1;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    .line 71
    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 66
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    .line 72
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 73
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v10, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 74
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->mainButton:Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 76
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->addUIComponents()V

    .line 78
    new-instance v6, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$2;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$2;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    .line 83
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 78
    invoke-direct {v6, v0, v11, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 84
    .local v6, "closeButton":Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-virtual {v6, v0}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setAnchorPoint(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;)V

    .line 85
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const v1, 0x43e28000    # 453.0f

    const v2, 0x43928000    # 293.0f

    invoke-virtual {v6, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ButtonElement;->setPosition(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;FF)V

    .line 86
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->root:Lcom/gaiaonline/monstergalaxy/screen/Root;

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/screen/Root;->add(Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;)V

    .line 88
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->updateMiniGameShownDate()V

    .line 89
    return-void
.end method

.method private popMusic()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 113
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->popMusic()V

    .line 115
    :cond_0
    return-void
.end method

.method private pushMusic()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v0, v1, :cond_0

    .line 107
    const-string v0, "m_shop.mp3"

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->pushMusic(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method private updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V
    .locals 2
    .param p1, "field"    # Lcom/gaiaonline/monstergalaxy/screen/TextElement;
    .param p2, "value"    # I
    .param p3, "maxDisplayValue"    # I

    .prologue
    .line 144
    if-gt p2, p3, :cond_0

    .line 145
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 146
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setText(Ljava/lang/String;)V

    .line 149
    const v0, 0x3ed70a3d    # 0.42f

    invoke-virtual {p1, v0}, Lcom/gaiaonline/monstergalaxy/screen/TextElement;->setFontScale(F)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addUIComponents()V
.end method

.method public onEnter(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 2
    .param p1, "prevScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->slotMachineScreens:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->pushMusic()V

    .line 96
    :cond_0
    return-void
.end method

.method public onExit(Lcom/gaiaonline/monstergalaxy/app/Screen;)V
    .locals 2
    .param p1, "nextScreen"    # Lcom/gaiaonline/monstergalaxy/app/Screen;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    sget-object v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->slotMachineScreens:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->getCode()Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->popMusic()V

    .line 103
    :cond_0
    return-void
.end method

.method public abstract onMainButtonPressed()V
.end method

.method public showMogaInfoDialog(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)V
    .locals 3
    .param p1, "mogaType"    # Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;

    .prologue
    .line 129
    new-instance v0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$3;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V

    .line 137
    .local v0, "listener":Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;
    new-instance v1, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;

    .line 138
    invoke-static {p1}, Lcom/gaiaonline/monstergalaxy/model/moga/Moga;->newMogaFromType(Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;)Lcom/gaiaonline/monstergalaxy/model/moga/Moga;

    move-result-object v2

    .line 137
    invoke-direct {v1, v0, v2}, Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V

    .line 140
    .local v1, "mogaInfoDialog":Lcom/gaiaonline/monstergalaxy/team/MogaPortraitDialog;
    invoke-virtual {p0, v1}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->showDialog(Lcom/gaiaonline/monstergalaxy/screen/Dialog;)V

    .line 141
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/gaiaonline/monstergalaxy/app/Screen;->update(F)V

    .line 124
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->coinsText:Lcom/gaiaonline/monstergalaxy/screen/ShadowTextElement;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getTrainer()Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;->getCoins()I

    move-result v1

    .line 125
    const/16 v2, 0x270f

    .line 124
    invoke-direct {p0, v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;->updateField(Lcom/gaiaonline/monstergalaxy/screen/TextElement;II)V

    .line 126
    return-void
.end method
