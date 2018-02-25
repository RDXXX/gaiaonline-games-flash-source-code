.class public final enum Lcom/sessionm/api/SessionM$ActivityType;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/api/SessionM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sessionm/api/SessionM$ActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sessionm/api/SessionM$ActivityType;

.field public static final enum ACHIEVEMENT:Lcom/sessionm/api/SessionM$ActivityType;

.field public static final enum INTRODUCTION:Lcom/sessionm/api/SessionM$ActivityType;

.field public static final enum PORTAL:Lcom/sessionm/api/SessionM$ActivityType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/sessionm/api/SessionM$ActivityType;

    const-string v1, "PORTAL"

    invoke-direct {v0, v1, v2}, Lcom/sessionm/api/SessionM$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/api/SessionM$ActivityType;->PORTAL:Lcom/sessionm/api/SessionM$ActivityType;

    .line 83
    new-instance v0, Lcom/sessionm/api/SessionM$ActivityType;

    const-string v1, "INTRODUCTION"

    invoke-direct {v0, v1, v3}, Lcom/sessionm/api/SessionM$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/api/SessionM$ActivityType;->INTRODUCTION:Lcom/sessionm/api/SessionM$ActivityType;

    .line 87
    new-instance v0, Lcom/sessionm/api/SessionM$ActivityType;

    const-string v1, "ACHIEVEMENT"

    invoke-direct {v0, v1, v4}, Lcom/sessionm/api/SessionM$ActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/api/SessionM$ActivityType;->ACHIEVEMENT:Lcom/sessionm/api/SessionM$ActivityType;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sessionm/api/SessionM$ActivityType;

    sget-object v1, Lcom/sessionm/api/SessionM$ActivityType;->PORTAL:Lcom/sessionm/api/SessionM$ActivityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sessionm/api/SessionM$ActivityType;->INTRODUCTION:Lcom/sessionm/api/SessionM$ActivityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sessionm/api/SessionM$ActivityType;->ACHIEVEMENT:Lcom/sessionm/api/SessionM$ActivityType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sessionm/api/SessionM$ActivityType;->$VALUES:[Lcom/sessionm/api/SessionM$ActivityType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sessionm/api/SessionM$ActivityType;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/sessionm/api/SessionM$ActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sessionm/api/SessionM$ActivityType;

    return-object v0
.end method

.method public static values()[Lcom/sessionm/api/SessionM$ActivityType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sessionm/api/SessionM$ActivityType;->$VALUES:[Lcom/sessionm/api/SessionM$ActivityType;

    invoke-virtual {v0}, [Lcom/sessionm/api/SessionM$ActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/api/SessionM$ActivityType;

    return-object v0
.end method
