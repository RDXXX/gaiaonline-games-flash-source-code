.class Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;
.super Ljava/lang/Object;
.source "DownloaderExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;, "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 1
    .param p1, "left"    # Ljava/lang/Runnable;
    .param p2, "right"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    .local p0, "this":Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator;, "Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTaskComparator<TT;>;"
    check-cast p1, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;

    .end local p1    # "left":Ljava/lang/Runnable;
    check-cast p2, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;

    .end local p2    # "right":Ljava/lang/Runnable;
    invoke-virtual {p1, p2}, Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;->compareTo(Lcom/gaiaonline/monstergalaxy/assets/DownloaderExecutor$PriorityTask;)I

    move-result v0

    return v0
.end method
