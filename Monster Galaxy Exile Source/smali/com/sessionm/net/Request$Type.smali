.class public final enum Lcom/sessionm/net/Request$Type;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/net/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sessionm/net/Request$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sessionm/net/Request$Type;

.field public static final enum ACTION:Lcom/sessionm/net/Request$Type;

.field public static final enum BUG:Lcom/sessionm/net/Request$Type;

.field public static final enum CONTENT:Lcom/sessionm/net/Request$Type;

.field public static final enum DELIVERED:Lcom/sessionm/net/Request$Type;

.field public static final enum ERROR:Lcom/sessionm/net/Request$Type;

.field public static final enum GENERIC:Lcom/sessionm/net/Request$Type;

.field public static final enum INSTALL:Lcom/sessionm/net/Request$Type;

.field public static final enum OPT_IN_OUT:Lcom/sessionm/net/Request$Type;

.field public static final enum SESSION_END:Lcom/sessionm/net/Request$Type;

.field public static final enum SESSION_START:Lcom/sessionm/net/Request$Type;


# instance fields
.field private final method:Lcom/sessionm/net/Request$Method;

.field private final urlFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "SESSION_START"

    const-string v2, "%s/%s/%s/%s"

    sget-object v3, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->SESSION_START:Lcom/sessionm/net/Request$Type;

    .line 31
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "ACTION"

    const-string v2, "%s/%s"

    sget-object v3, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->ACTION:Lcom/sessionm/net/Request$Type;

    .line 32
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "SESSION_END"

    const-string v2, "%s/v%s/%s"

    sget-object v3, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->SESSION_END:Lcom/sessionm/net/Request$Type;

    .line 33
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "CONTENT"

    const-string v2, ""

    sget-object v3, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    .line 34
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "BUG"

    const-string v2, "%s/%s"

    sget-object v3, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->BUG:Lcom/sessionm/net/Request$Type;

    .line 35
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    const-string v3, "%s/%s"

    sget-object v4, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->ERROR:Lcom/sessionm/net/Request$Type;

    .line 36
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "DELIVERED"

    const/4 v2, 0x6

    const-string v3, "%s"

    sget-object v4, Lcom/sessionm/net/Request$Method;->GET:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->DELIVERED:Lcom/sessionm/net/Request$Type;

    .line 37
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "GENERIC"

    const/4 v2, 0x7

    const-string v3, ""

    sget-object v4, Lcom/sessionm/net/Request$Method;->GENERIC:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->GENERIC:Lcom/sessionm/net/Request$Type;

    .line 38
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "OPT_IN_OUT"

    const/16 v2, 0x8

    const-string v3, "%s/%s"

    sget-object v4, Lcom/sessionm/net/Request$Method;->PUT:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->OPT_IN_OUT:Lcom/sessionm/net/Request$Type;

    .line 39
    new-instance v0, Lcom/sessionm/net/Request$Type;

    const-string v1, "INSTALL"

    const/16 v2, 0x9

    const-string v3, "%s"

    sget-object v4, Lcom/sessionm/net/Request$Method;->POST:Lcom/sessionm/net/Request$Method;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sessionm/net/Request$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V

    sput-object v0, Lcom/sessionm/net/Request$Type;->INSTALL:Lcom/sessionm/net/Request$Type;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sessionm/net/Request$Type;

    sget-object v1, Lcom/sessionm/net/Request$Type;->SESSION_START:Lcom/sessionm/net/Request$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sessionm/net/Request$Type;->ACTION:Lcom/sessionm/net/Request$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sessionm/net/Request$Type;->SESSION_END:Lcom/sessionm/net/Request$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sessionm/net/Request$Type;->BUG:Lcom/sessionm/net/Request$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/sessionm/net/Request$Type;->ERROR:Lcom/sessionm/net/Request$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sessionm/net/Request$Type;->DELIVERED:Lcom/sessionm/net/Request$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sessionm/net/Request$Type;->GENERIC:Lcom/sessionm/net/Request$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sessionm/net/Request$Type;->OPT_IN_OUT:Lcom/sessionm/net/Request$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sessionm/net/Request$Type;->INSTALL:Lcom/sessionm/net/Request$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sessionm/net/Request$Type;->$VALUES:[Lcom/sessionm/net/Request$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sessionm/net/Request$Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sessionm/net/Request$Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/sessionm/net/Request$Type;->urlFormat:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/sessionm/net/Request$Type;->method:Lcom/sessionm/net/Request$Method;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sessionm/net/Request$Type;)Lcom/sessionm/net/Request$Method;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sessionm/net/Request$Type;->method:Lcom/sessionm/net/Request$Method;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sessionm/net/Request$Type;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sessionm/net/Request$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sessionm/net/Request$Type;

    return-object v0
.end method

.method public static values()[Lcom/sessionm/net/Request$Type;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sessionm/net/Request$Type;->$VALUES:[Lcom/sessionm/net/Request$Type;

    invoke-virtual {v0}, [Lcom/sessionm/net/Request$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/net/Request$Type;

    return-object v0
.end method


# virtual methods
.method getMethod()Lcom/sessionm/net/Request$Method;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sessionm/net/Request$Type;->method:Lcom/sessionm/net/Request$Method;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sessionm/net/Request$Type;->urlFormat:Ljava/lang/String;

    return-object v0
.end method
