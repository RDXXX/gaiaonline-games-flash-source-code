.class Lcom/badlogic/gdx/assets/AssetManager$1;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/assets/AssetManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/assets/AssetManager;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager$1;->this$0:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AssetManager-Loader-Thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 74
    return-object v0
.end method
