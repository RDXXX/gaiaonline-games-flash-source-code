.class Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$1;
.super Ljava/lang/Object;
.source "SendInstallInfoRetryScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->gaiaSessionStarted()V

    .line 75
    return-void
.end method
