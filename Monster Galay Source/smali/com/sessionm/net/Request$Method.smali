.class public final enum Lcom/sessionm/net/Request$Method;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/net/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sessionm/net/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sessionm/net/Request$Method;

.field public static final enum DELETE:Lcom/sessionm/net/Request$Method;

.field public static final enum GENERIC:Lcom/sessionm/net/Request$Method;

.field public static final enum GET:Lcom/sessionm/net/Request$Method;

.field public static final enum POST:Lcom/sessionm/net/Request$Method;

.field public static final enum PUT:Lcom/sessionm/net/Request$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sessionm/net/Request$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/sessionm/net/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    .line 22
    new-instance v0, Lcom/sessionm/net/Request$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/sessionm/net/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    .line 23
    new-instance v0, Lcom/sessionm/net/Request$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/sessionm/net/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/net/Request$Method;->DELETE:Lcom/sessionm/net/Request$Method;

    .line 24
    new-instance v0, Lcom/sessionm/net/Request$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/sessionm/net/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/net/Request$Method;->PUT:Lcom/sessionm/net/Request$Method;

    .line 25
    new-instance v0, Lcom/sessionm/net/Request$Method;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v6}, Lcom/sessionm/net/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/net/Request$Method;->GENERIC:Lcom/sessionm/net/Request$Method;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sessionm/net/Request$Method;

    sget-object v1, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sessionm/net/Request$Method;->DELETE:Lcom/sessionm/net/Request$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sessionm/net/Request$Method;->PUT:Lcom/sessionm/net/Request$Method;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sessionm/net/Request$Method;->GENERIC:Lcom/sessionm/net/Request$Method;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sessionm/net/Request$Method;->$VALUES:[Lcom/sessionm/net/Request$Method;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sessionm/net/Request$Method;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sessionm/net/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sessionm/net/Request$Method;

    return-object v0
.end method

.method public static values()[Lcom/sessionm/net/Request$Method;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sessionm/net/Request$Method;->$VALUES:[Lcom/sessionm/net/Request$Method;

    invoke-virtual {v0}, [Lcom/sessionm/net/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/net/Request$Method;

    return-object v0
.end method
