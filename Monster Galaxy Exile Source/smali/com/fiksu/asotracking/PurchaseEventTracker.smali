.class Lcom/fiksu/asotracking/PurchaseEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "PurchaseEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/Double;
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "Purchase"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    const-string v0, "username"

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/PurchaseEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "fvalue"

    invoke-virtual {p3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fiksu/asotracking/PurchaseEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "tvalue"

    invoke-virtual {p0, v0, p4}, Lcom/fiksu/asotracking/PurchaseEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
