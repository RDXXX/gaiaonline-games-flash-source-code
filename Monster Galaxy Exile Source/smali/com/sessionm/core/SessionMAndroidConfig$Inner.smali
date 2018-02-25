.class Lcom/sessionm/core/SessionMAndroidConfig$Inner;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sessionm/core/SessionMAndroidConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Inner"
.end annotation


# static fields
.field public static instance:Lcom/sessionm/core/SessionMAndroidConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/sessionm/core/SessionMAndroidConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;-><init>(Lcom/sessionm/core/SessionMAndroidConfig$1;)V

    sput-object v0, Lcom/sessionm/core/SessionMAndroidConfig$Inner;->instance:Lcom/sessionm/core/SessionMAndroidConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
