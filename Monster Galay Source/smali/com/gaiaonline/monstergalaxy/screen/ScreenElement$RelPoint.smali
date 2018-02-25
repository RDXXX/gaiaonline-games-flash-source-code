.class public final enum Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
.super Ljava/lang/Enum;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/screen/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

.field public static final enum RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "LEFT_TOP"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 20
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "LEFT_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 21
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "LEFT_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 22
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "CENTER_TOP"

    invoke-direct {v0, v1, v6}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 23
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v7}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 24
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "CENTER_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 25
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 26
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "RIGHT_CENTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 27
    new-instance v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->LEFT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->CENTER_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_TOP:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_CENTER:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->RIGHT_BOTTOM:Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/screen/ScreenElement$RelPoint;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
