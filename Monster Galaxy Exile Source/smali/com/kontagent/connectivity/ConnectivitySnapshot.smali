.class public Lcom/kontagent/connectivity/ConnectivitySnapshot;
.super Ljava/lang/Object;
.source "ConnectivitySnapshot.java"


# instance fields
.field private mConnectivityCounter:I

.field private final mTracker:Lcom/kontagent/connectivity/ConnectivityTracker;


# direct methods
.method public constructor <init>(Lcom/kontagent/connectivity/ConnectivityTracker;)V
    .locals 1
    .param p1, "tracker"    # Lcom/kontagent/connectivity/ConnectivityTracker;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/kontagent/connectivity/ConnectivitySnapshot;->mTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    .line 10
    invoke-virtual {p1}, Lcom/kontagent/connectivity/ConnectivityTracker;->getCounter()I

    move-result v0

    iput v0, p0, Lcom/kontagent/connectivity/ConnectivitySnapshot;->mConnectivityCounter:I

    .line 11
    return-void
.end method


# virtual methods
.method public isChanged()Z
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/kontagent/connectivity/ConnectivitySnapshot;->mConnectivityCounter:I

    iget-object v1, p0, Lcom/kontagent/connectivity/ConnectivitySnapshot;->mTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v1}, Lcom/kontagent/connectivity/ConnectivityTracker;->getCounter()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/kontagent/connectivity/ConnectivitySnapshot;->mTracker:Lcom/kontagent/connectivity/ConnectivityTracker;

    invoke-virtual {v0}, Lcom/kontagent/connectivity/ConnectivityTracker;->getCounter()I

    move-result v0

    iput v0, p0, Lcom/kontagent/connectivity/ConnectivitySnapshot;->mConnectivityCounter:I

    .line 15
    return-void
.end method
