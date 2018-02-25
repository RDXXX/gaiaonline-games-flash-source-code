.class Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$2;
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1$2;->this$1:Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;->access$0(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen$1;)Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;->access$0(Lcom/gaiaonline/monstergalaxy/startup/SendInstallInfoRetryScreen;)V

    .line 83
    return-void
.end method
