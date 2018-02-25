.class public final enum Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/api/SessionM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USER_SUBSCRIPTION_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

.field public static final enum OPTED_IN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

.field public static final enum OPTED_OUT:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

.field public static final enum UNKNOWN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->UNKNOWN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    .line 68
    new-instance v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    const-string v1, "OPTED_OUT"

    invoke-direct {v0, v1, v3}, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_OUT:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    .line 69
    new-instance v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    const-string v1, "OPTED_IN"

    invoke-direct {v0, v1, v4}, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_IN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    sget-object v1, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->UNKNOWN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_OUT:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->OPTED_IN:Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->$VALUES:[Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->$VALUES:[Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    invoke-virtual {v0}, [Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;

    return-object v0
.end method
