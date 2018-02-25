.class Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy$1BackgroundTask;
.super Ljava/lang/Thread;
.source "MonsterGalaxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->startBackgroundTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundTask"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 288
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->access$1()V

    .line 289
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->access$2()V

    .line 290
    return-void
.end method
