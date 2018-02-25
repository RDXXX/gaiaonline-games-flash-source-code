.class public Lcom/kontagent/queue/OfflineQueue;
.super Lcom/kontagent/Stateful;
.source "OfflineQueue.java"

# interfaces
.implements Lcom/kontagent/queue/KontagentQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kontagent/queue/OfflineQueue$DataHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Lcom/kontagent/queue/OfflineQueue$DataHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/kontagent/queue/OfflineQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kontagent/Stateful;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changed()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->setChanged()V

    .line 49
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->notifyObservers()V

    .line 50
    return-void
.end method


# virtual methods
.method public all()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->assertStarted()V

    .line 82
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->selectAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->assertStarted()V

    .line 71
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->deleteAll()V

    .line 72
    invoke-direct {p0}, Lcom/kontagent/queue/OfflineQueue;->changed()V

    .line 73
    return-void
.end method

.method public convertToOnline(Lcom/kontagent/queue/OnlineQueue;)V
    .locals 2
    .param p1, "onlineQueue"    # Lcom/kontagent/queue/OnlineQueue;

    .prologue
    .line 92
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    const-string v1, "convertToOnline()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->assertStarted()V

    .line 94
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->selectAll()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kontagent/queue/OnlineQueue;->enqueue(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->deleteAll()V

    .line 96
    invoke-direct {p0}, Lcom/kontagent/queue/OfflineQueue;->changed()V

    .line 97
    return-void
.end method

.method public enqueue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueue(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->assertStarted()V

    .line 55
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0, p1}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->insert(Ljava/lang/String;)J

    .line 56
    invoke-direct {p0}, Lcom/kontagent/queue/OfflineQueue;->changed()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public enqueue(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    const-string v1, "enqueue(Collection)"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->assertStarted()V

    .line 63
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0, p1}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->bulkInsert(Ljava/util/Collection;)V

    .line 64
    invoke-direct {p0}, Lcom/kontagent/queue/OfflineQueue;->changed()V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/kontagent/queue/OfflineQueue$DataHelper;

    iget-object v1, p0, Lcom/kontagent/queue/OfflineQueue;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kontagent/queue/OfflineQueue$DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/kontagent/queue/OfflineQueue;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->close()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    .line 45
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/kontagent/queue/OfflineQueue;->assertStarted()V

    .line 77
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue;->data:Lcom/kontagent/queue/OfflineQueue$DataHelper;

    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->size()I

    move-result v0

    return v0
.end method
