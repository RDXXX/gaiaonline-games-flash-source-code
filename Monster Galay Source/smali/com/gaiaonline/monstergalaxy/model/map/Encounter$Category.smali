.class public final enum Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;
.super Ljava/lang/Enum;
.source "Encounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/map/Encounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

.field public static final enum MULTIPLE:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

.field public static final enum NORMAL:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;


# instance fields
.field private category:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    const-string v1, "NORMAL"

    const-string v2, "NORMAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    .line 123
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    const-string v1, "MULTIPLE"

    const-string v2, "MULTIPLE"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->MULTIPLE:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->NORMAL:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->MULTIPLE:Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->category:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/map/Encounter$Category;->category:Ljava/lang/String;

    return-object v0
.end method
