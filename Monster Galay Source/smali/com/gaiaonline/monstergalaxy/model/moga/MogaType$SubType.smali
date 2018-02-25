.class public final enum Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
.super Ljava/lang/Enum;
.source "MogaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/moga/MogaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

.field public static final enum LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

.field public static final enum NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    const-string v1, "NORMAL"

    const-string v2, "normal"

    invoke-direct {v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    const-string v1, "LUCKY"

    const-string v2, "lucky"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->LUCKY:Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->values()[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 107
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 101
    :cond_1
    aget-object v0, v2, v1

    .line 102
    .local v0, "subType":Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/moga/MogaType$SubType;->name:Ljava/lang/String;

    return-object v0
.end method
