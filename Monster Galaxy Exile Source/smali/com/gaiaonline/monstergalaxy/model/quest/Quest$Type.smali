.class public final enum Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;
.super Ljava/lang/Enum;
.source "Quest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/quest/Quest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

.field public static final enum CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

.field public static final enum KILL:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

.field public static final enum STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    const-string v1, "CAPTURE"

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    .line 274
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    const-string v1, "BEAT_NODE"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    .line 275
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    const-string v1, "KILL"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->KILL:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    .line 276
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    const-string v1, "STARS"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    .line 272
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->CAPTURE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->BEAT_NODE:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->KILL:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->STARS:Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/quest/Quest$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
