.class public final enum Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
.super Ljava/lang/Enum;
.source "MogaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rarity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGINNER:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field public static final enum COMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field public static final enum EPIC:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field public static final enum LEGENDARY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field public static final enum RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field public static final enum SUPER_RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

.field public static final enum UNCOMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;


# instance fields
.field private camelCaseName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private order:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v1, "BEGINNER"

    const-string v3, "BEGINNER"

    const-string v4, "Beginner"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->BEGINNER:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v4, "COMMON"

    const-string v6, "COMMON"

    const-string v7, "Common"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->COMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v4, "UNCOMMON"

    .line 49
    const-string v6, "UNCOMMON"

    const-string v7, "Uncommon"

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->UNCOMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v4, "RARE"

    const-string v6, "RARE"

    const-string v7, "Rare"

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v4, "SUPER_RARE"

    .line 50
    const-string v6, "SUPER RARE"

    const-string v7, "SuperRare"

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->SUPER_RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v4, "EPIC"

    const/4 v5, 0x5

    const-string v6, "EPIC"

    const-string v7, "Epic"

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->EPIC:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    new-instance v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    const-string v4, "LEGENDARY"

    const/4 v5, 0x6

    .line 51
    const-string v6, "LEGENDARY"

    const-string v7, "Legendary"

    const/4 v8, 0x6

    invoke-direct/range {v3 .. v8}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->LEGENDARY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->BEGINNER:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->COMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v1, v0, v9

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->UNCOMMON:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v1, v0, v10

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v1, v0, v11

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->SUPER_RARE:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->EPIC:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->LEGENDARY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "camelCaseName"    # Ljava/lang/String;
    .param p5, "order"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->name:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->camelCaseName:Ljava/lang/String;

    .line 60
    iput p5, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->order:I

    .line 61
    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->values()[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 81
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 76
    :cond_1
    aget-object v0, v2, v1

    .line 77
    .local v0, "rarity":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCamelCaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->camelCaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$Rarity;->order:I

    return v0
.end method
