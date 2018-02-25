.class Lcom/kontagent/QueueManager$1;
.super Ljava/lang/Object;
.source "QueueManager.java"

# interfaces
.implements Lcom/kontagent/connectivity/ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/QueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kontagent/QueueManager;


# direct methods
.method constructor <init>(Lcom/kontagent/QueueManager;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kontagent/QueueManager$1;->this$0:Lcom/kontagent/QueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Lcom/kontagent/connectivity/ConnectivityTracker;Z)V
    .locals 1
    .param p1, "tracker"    # Lcom/kontagent/connectivity/ConnectivityTracker;
    .param p2, "hasConnectivity"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kontagent/QueueManager$1;->this$0:Lcom/kontagent/QueueManager;

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->networkStatusChanged()V

    .line 46
    return-void
.end method
