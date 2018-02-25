.class Lcom/fiksu/asotracking/ConversionEventTracker;
.super Lcom/fiksu/asotracking/EventTracker;
.source "ConversionEventTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "referrer"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "Conversion"

    invoke-direct {p0, p1, v0}, Lcom/fiksu/asotracking/EventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    const-string v0, "tvalue"

    invoke-virtual {p0, v0, p2}, Lcom/fiksu/asotracking/ConversionEventTracker;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
