.class public Lcom/fiksu/asotracking/EventTracker;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;
    }
.end annotation


# static fields
.field static final SHARED_PREFERENCES_LOCK:Ljava/lang/String; = "shared preferences lock"

.field private static mCachedContext:Landroid/content/Context;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    .line 28
    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-eqz p1, :cond_0

    .line 30
    sput-object p1, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/fiksu/asotracking/EventTracker;->mCachedContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static c2dMessageReceived(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;

    invoke-direct {v1, p0}, Lcom/fiksu/asotracking/EventTracker$C2DMessageTimeSaver;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method private copyOfParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v1, "newParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    return-object v1

    .line 43
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static getOurSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FiksuSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiksu/asotracking/EventTracker;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method protected uploadEvent()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fiksu/asotracking/EventUploader;

    iget-object v2, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->copyOfParams()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fiksu/asotracking/EventUploader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method protected uploadEventSynchronously(J)V
    .locals 3
    .param p1, "timeoutMs"    # J

    .prologue
    .line 54
    new-instance v0, Lcom/fiksu/asotracking/EventUploader;

    iget-object v1, p0, Lcom/fiksu/asotracking/EventTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fiksu/asotracking/EventTracker;->copyOfParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fiksu/asotracking/EventUploader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 56
    .local v0, "uploader":Lcom/fiksu/asotracking/EventUploader;
    monitor-enter v0

    .line 57
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 63
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method
