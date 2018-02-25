.class public Lcom/gaiaonline/monstergalaxy/app/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# static fields
.field public static addButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static addPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static arrowDownBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static arrowRight:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field public static attackBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static attackPressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static blueBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static blueCoffeePortraitOn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static bluePressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static captureBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static captureDisabledBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static capturePressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static circles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public static closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static congrazzles:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private static effects:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field public static greenBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static greenBtnLarge:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static greenBtnLargePress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static greenBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static hudBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static infoButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static infoPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static pauseOff:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static pauseOn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static redBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static redBtnPressed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static redBtnSmall:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static redBtnSmallPressed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static sidePortraitBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static starSeed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static tapOnZodiac:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static timerFull:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static vs:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static zodiacAttackFills:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public static zodiacAttackOutlines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public static zodiacBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static zodiacDisabledBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static zodiacPressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZodiacSignAsset(Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2
    .param p0, "sign"    # Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sign."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 9
    .param p0, "asset"    # Lcom/gaiaonline/monstergalaxy/assets/Asset;

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/assets/AssetsDownloader;->getAsset(Lcom/gaiaonline/monstergalaxy/assets/Asset;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 84
    .local v6, "pm":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 85
    .local v4, "width":I
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .line 86
    .local v5, "height":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 87
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v7

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v8

    .line 86
    invoke-direct {v1, v3, v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 88
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, v3, v7}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 89
    invoke-virtual {v1, v6, v2, v2}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 93
    .local v0, "newRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 95
    return-object v0
.end method

.method public static load()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "data/hvga/pack"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 100
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "data/effects/pack"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->effects:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 103
    const-string v3, "pause.on"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->pauseOn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 104
    const-string v3, "pause.off"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->pauseOff:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 106
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->values()[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    .local v0, "productType":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    :goto_0
    if-lt v3, v5, :cond_0

    .line 112
    const-string v3, "btn.attack"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->attackBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 113
    const-string v3, "btn.attack.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->attackPressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 114
    const-string v3, "btn.capture"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->captureBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 115
    const-string v3, "btn.capture.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->capturePressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 116
    const-string v3, "btn.capture.disabled"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->captureDisabledBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 117
    const-string v3, "btn.zodiac"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 118
    const-string v3, "btn.zodiac.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacPressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 119
    const-string v3, "btn.zodiac.disabled"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacDisabledBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 121
    const-string v3, "hudbg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->hudBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 123
    const-string v3, "mogabg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->mogaBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 124
    const-string v3, "side.portrait.bg"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->sidePortraitBg:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 126
    const-string v3, "hpbarbackground"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBarBackground:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 127
    const-string v3, "hpbarfull"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->healthBar:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 129
    const-string v3, "timerfull"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->timerFull:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 131
    const-string v3, "green.btn.large"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnLarge:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 132
    const-string v3, "green.btn.large.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnLargePress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 133
    const-string v3, "green.btn"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 134
    const-string v3, "green.btn.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->greenBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 135
    const-string v3, "close.button"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 136
    const-string v3, "close.button.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->closeBtnPress:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 138
    const-string v3, "congrazzles"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->congrazzles:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 139
    const-string v3, "blue.btn"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->blueBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 140
    const-string v3, "blue.btn.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->bluePressedBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 141
    const-string v3, "btn.arrow.down"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->arrowDownBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 142
    const-string v3, "starseed"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->starSeed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 143
    const-string v3, "blue.coffee.portrait.on"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->blueCoffeePortraitOn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 144
    const-string v3, "little.blue.circle"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->littleBlueCircle:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 146
    const-string v3, "red.btn.small"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtnSmall:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 147
    const-string v3, "red.btn.small.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtnSmallPressed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 148
    const-string v3, "red.btn"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtn:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 149
    const-string v3, "red.btn.press"

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->redBtnPressed:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 151
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    .line 152
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->BAD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    const-string v5, "red.circle"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    const-string v5, "white.circle"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->circles:Ljava/util/Map;

    sget-object v4, Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;->GOOD:Lcom/gaiaonline/monstergalaxy/model/ZodiacPowerType;

    const-string v5, "green.circle"

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    .line 157
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackFills:Ljava/util/Map;

    .line 159
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->values()[Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-lt v2, v4, :cond_1

    .line 164
    const-string v2, "vs"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->vs:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 165
    const-string v2, "tap"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->tapOnZodiac:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 166
    const-string v2, "arrow"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->arrowRight:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 169
    const-string v2, "info.button"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->infoButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 170
    const-string v2, "info.button.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->infoPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 171
    const-string v2, "add.button"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->addButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 172
    const-string v2, "add.button.press"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/Assets;->addPressedButton:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 175
    const-string v2, "b_moga_entrance"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->loadSound(Ljava/lang/String;)V

    .line 176
    return-void

    .line 106
    :cond_0
    aget-object v0, v4, v3

    .line 109
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getIconAssetName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->setIconAsset(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 159
    :cond_1
    aget-object v1, v3, v2

    .line 160
    .local v1, "sign":Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackOutlines:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v5, Lcom/gaiaonline/monstergalaxy/app/Assets;->zodiacAttackFills:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/model/ZodiacSign;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".fill"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gaiaonline/monstergalaxy/app/Assets;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static loadFromFile(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 9
    .param p0, "assetName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 183
    new-instance v6, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 184
    .local v6, "p":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 185
    .local v4, "width":I
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .line 186
    .local v5, "height":I
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v3

    .line 187
    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 186
    invoke-direct {v1, v3, v7, v8}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 188
    .local v1, "t":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v1, v6, v2, v2}, Lcom/badlogic/gdx/graphics/Texture;->draw(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 189
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 190
    .local v0, "tr":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 192
    return-object v0
.end method

.method public static loadSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 1
    .param p0, "spriteName"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->effects:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->createSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public static loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .param p0, "textureName"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/Assets;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v0

    return-object v0
.end method
