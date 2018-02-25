.class public final enum Lcom/kontagent/Stateful$State;
.super Ljava/lang/Enum;
.source "Stateful.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/Stateful;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kontagent/Stateful$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kontagent/Stateful$State;

.field public static final enum PAUSED:Lcom/kontagent/Stateful$State;

.field public static final enum RUNNING:Lcom/kontagent/Stateful$State;

.field public static final enum STOPPED:Lcom/kontagent/Stateful$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/kontagent/Stateful$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/kontagent/Stateful$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    new-instance v0, Lcom/kontagent/Stateful$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/kontagent/Stateful$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    new-instance v0, Lcom/kontagent/Stateful$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/kontagent/Stateful$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kontagent/Stateful$State;

    sget-object v1, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kontagent/Stateful$State;->$VALUES:[Lcom/kontagent/Stateful$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kontagent/Stateful$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/kontagent/Stateful$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kontagent/Stateful$State;

    return-object v0
.end method

.method public static values()[Lcom/kontagent/Stateful$State;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/kontagent/Stateful$State;->$VALUES:[Lcom/kontagent/Stateful$State;

    invoke-virtual {v0}, [Lcom/kontagent/Stateful$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kontagent/Stateful$State;

    return-object v0
.end method
