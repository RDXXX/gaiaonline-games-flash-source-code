.class final enum Lcom/sessionm/ui/ActivityController$State;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/ui/ActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sessionm/ui/ActivityController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sessionm/ui/ActivityController$State;

.field public static final enum DISMISSED:Lcom/sessionm/ui/ActivityController$State;

.field public static final enum LOADED_CONTENT:Lcom/sessionm/ui/ActivityController$State;

.field public static final enum LOADED_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

.field public static final enum LOADING_CONTENT:Lcom/sessionm/ui/ActivityController$State;

.field public static final enum LOADING_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

.field public static final enum PRESENTED:Lcom/sessionm/ui/ActivityController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/sessionm/ui/ActivityController$State;

    const-string v1, "DISMISSED"

    invoke-direct {v0, v1, v3}, Lcom/sessionm/ui/ActivityController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    .line 81
    new-instance v0, Lcom/sessionm/ui/ActivityController$State;

    const-string v1, "LOADING_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/sessionm/ui/ActivityController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->LOADING_CONTENT:Lcom/sessionm/ui/ActivityController$State;

    .line 82
    new-instance v0, Lcom/sessionm/ui/ActivityController$State;

    const-string v1, "LOADED_CONTENT"

    invoke-direct {v0, v1, v5}, Lcom/sessionm/ui/ActivityController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->LOADED_CONTENT:Lcom/sessionm/ui/ActivityController$State;

    .line 83
    new-instance v0, Lcom/sessionm/ui/ActivityController$State;

    const-string v1, "LOADING_WEBVIEW"

    invoke-direct {v0, v1, v6}, Lcom/sessionm/ui/ActivityController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->LOADING_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

    .line 84
    new-instance v0, Lcom/sessionm/ui/ActivityController$State;

    const-string v1, "LOADED_WEBVIEW"

    invoke-direct {v0, v1, v7}, Lcom/sessionm/ui/ActivityController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->LOADED_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

    .line 85
    new-instance v0, Lcom/sessionm/ui/ActivityController$State;

    const-string v1, "PRESENTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sessionm/ui/ActivityController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->PRESENTED:Lcom/sessionm/ui/ActivityController$State;

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sessionm/ui/ActivityController$State;

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADING_CONTENT:Lcom/sessionm/ui/ActivityController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADED_CONTENT:Lcom/sessionm/ui/ActivityController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADING_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADED_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sessionm/ui/ActivityController$State;->PRESENTED:Lcom/sessionm/ui/ActivityController$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sessionm/ui/ActivityController$State;->$VALUES:[Lcom/sessionm/ui/ActivityController$State;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sessionm/ui/ActivityController$State;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/sessionm/ui/ActivityController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sessionm/ui/ActivityController$State;

    return-object v0
.end method

.method public static values()[Lcom/sessionm/ui/ActivityController$State;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/sessionm/ui/ActivityController$State;->$VALUES:[Lcom/sessionm/ui/ActivityController$State;

    invoke-virtual {v0}, [Lcom/sessionm/ui/ActivityController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sessionm/ui/ActivityController$State;

    return-object v0
.end method
