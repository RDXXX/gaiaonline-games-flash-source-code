.class public final enum Lcom/inmobi/androidsdk/GenderType;
.super Ljava/lang/Enum;
.source "GenderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/GenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/inmobi/androidsdk/GenderType;

.field public static final enum G_F:Lcom/inmobi/androidsdk/GenderType;

.field public static final enum G_M:Lcom/inmobi/androidsdk/GenderType;

.field public static final enum G_None:Lcom/inmobi/androidsdk/GenderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/inmobi/androidsdk/GenderType;

    const-string v1, "G_None"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/GenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/GenderType;->G_None:Lcom/inmobi/androidsdk/GenderType;

    .line 13
    new-instance v0, Lcom/inmobi/androidsdk/GenderType;

    const-string v1, "G_M"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/GenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/GenderType;->G_M:Lcom/inmobi/androidsdk/GenderType;

    .line 14
    new-instance v0, Lcom/inmobi/androidsdk/GenderType;

    const-string v1, "G_F"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/GenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/GenderType;->G_F:Lcom/inmobi/androidsdk/GenderType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/androidsdk/GenderType;

    sget-object v1, Lcom/inmobi/androidsdk/GenderType;->G_None:Lcom/inmobi/androidsdk/GenderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/GenderType;->G_M:Lcom/inmobi/androidsdk/GenderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/GenderType;->G_F:Lcom/inmobi/androidsdk/GenderType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/androidsdk/GenderType;->ENUM$VALUES:[Lcom/inmobi/androidsdk/GenderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/GenderType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/GenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/GenderType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/GenderType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/GenderType;->ENUM$VALUES:[Lcom/inmobi/androidsdk/GenderType;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/GenderType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
