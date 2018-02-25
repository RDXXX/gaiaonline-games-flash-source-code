.class public final enum Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;
.super Ljava/lang/Enum;
.source "AdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/service/AdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFTER_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

.field public static final enum APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

.field public static final enum BEFORE_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

.field public static final enum ISLAND_CLICK:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    const-string v1, "APP_START"

    const-string v2, "APP START"

    invoke-direct {v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    .line 16
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    const-string v1, "BEFORE_BATTLE"

    const-string v2, "BEFORE BATTLE"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->BEFORE_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    .line 17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    const-string v1, "AFTER_BATTLE"

    const-string v2, "AFTER BATTLE"

    invoke-direct {v0, v1, v5, v2}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->AFTER_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    .line 18
    new-instance v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    const-string v1, "ISLAND_CLICK"

    const-string v2, "ISLAND CLICK"

    invoke-direct {v0, v1, v6, v2}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->ISLAND_CLICK:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->APP_START:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->BEFORE_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->AFTER_BATTLE:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->ISLAND_CLICK:Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->id:Ljava/lang/String;

    return-object v0
.end method
