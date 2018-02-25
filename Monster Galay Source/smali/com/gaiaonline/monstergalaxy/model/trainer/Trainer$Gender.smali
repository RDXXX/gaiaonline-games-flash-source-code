.class public final enum Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
.super Ljava/lang/Enum;
.source "Trainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

.field public static final enum FEMALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

.field public static final enum MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1072
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    const-string v1, "MALE"

    const-string v2, "male"

    invoke-direct {v0, v1, v3, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    const-string v1, "FEMALE"

    const-string v2, "female"

    invoke-direct {v0, v1, v4, v2}, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->FEMALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    .line 1071
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->MALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->FEMALE:Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1076
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1077
    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->name:Ljava/lang/String;

    .line 1078
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/model/trainer/Trainer$Gender;->name:Ljava/lang/String;

    return-object v0
.end method
