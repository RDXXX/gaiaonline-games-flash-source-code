.class public final enum Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
.super Ljava/lang/Enum;
.source "ProductType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

.field public static final enum MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

.field public static final enum MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

.field public static final enum STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;


# instance fields
.field private iconAsset:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private iconAssetName:Ljava/lang/String;

.field private typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    const-string v1, "MOGA_CASH"

    const-string v2, "mogacash"

    const-string v3, "capture.mcash"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 7
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    const-string v1, "BLUE_COFFEE"

    const-string v2, "coffee"

    const-string v3, "blue.coffee.icon"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 8
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    const-string v1, "STARSEEDS"

    const-string v2, "starseeds"

    const-string v3, "capture.starseed.icon"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 9
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    const-string v1, "MOGA"

    const-string v2, ".moga.moga"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA_CASH:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->BLUE_COFFEE:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->STARSEEDS:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "typeId"    # Ljava/lang/String;
    .param p4, "iconAssetName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->typeId:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->iconAssetName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static getById(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    .locals 5
    .param p0, "typeId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->values()[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 27
    const-string v1, "moga"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->MOGA:Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    .line 30
    :cond_0
    :goto_1
    return-object v0

    .line 22
    :cond_1
    aget-object v0, v2, v1

    .line 23
    .local v0, "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->getTypeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "type":Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getIconAsset()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->iconAsset:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getIconAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->iconAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public setIconAsset(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "iconAsset"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/model/shop/ProductType;->iconAsset:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 46
    return-void
.end method
