.class public final enum Lcom/sessionm/core/Session$State;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/core/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sessionm/core/Session$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sessionm/core/Session$State;

.field public static final enum STARTED:Lcom/sessionm/core/Session$State;

.field public static final enum STARTING:Lcom/sessionm/core/Session$State;

.field public static final enum STOPPED:Lcom/sessionm/core/Session$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/sessionm/core/Session$State;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/sessionm/core/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    .line 56
    new-instance v0, Lcom/sessionm/core/Session$State;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/sessionm/core/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/core/Session$State;->STARTING:Lcom/sessionm/core/Session$State;

    .line 57
    new-instance v0, Lcom/sessionm/core/Session$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/sessionm/core/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sessionm/core/Session$State;

    sget-object v1, Lcom/sessionm/core/Session$State;->STOPPED:Lcom/sessionm/core/Session$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTING:Lcom/sessionm/core/Session$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sessionm/core/Session$State;->STARTED:Lcom/sessionm/core/Session$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sessionm/core/Session$State;->$VALUES:[Lcom/sessionm/core/Session$State;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sessionm/core/Session$State;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sessionm/core/Session$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sessionm/core/Session$State;

    return-object v0
.end method

.method public static values()[Lcom/sessionm/core/Session$State;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sessionm/core/Session$State;->$VALUES:[Lcom/sessionm/core/Session$State;

    invoke-virtual {v0}, [Lcom/sessionm/core/Session$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/core/Session$State;

    return-object v0
.end method
