.class Lcom/fiksu/asotracking/RatingEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "RatingEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outcome"    # Ljava/lang/String;
    .param p3, "launches"    # I

    .prologue
    .line 17
    const-string v0, "Rating"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    const-string v0, "tvalue"

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/RatingEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "ivalue"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fiksu/asotracking/RatingEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public uploadEvent()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/fiksu/asotracking/EventTracker;->uploadEvent()V

    .line 24
    return-void
.end method
