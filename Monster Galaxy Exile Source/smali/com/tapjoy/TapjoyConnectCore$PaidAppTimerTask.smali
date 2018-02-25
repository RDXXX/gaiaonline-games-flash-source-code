.class Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
.super Ljava/util/TimerTask;
.source "TapjoyConnectCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaidAppTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;)V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/16 v7, 0x3c

    .line 492
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$0(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/tapjoy/TapjoyConnectCore;->access$1(Lcom/tapjoy/TapjoyConnectCore;J)V

    .line 494
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "elapsed_time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->access$0(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->access$0(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v4

    div-long/2addr v4, v9

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->access$0(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v4

    div-long/2addr v4, v9

    rem-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$2()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 497
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tapjoy_elapsed_time"

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->access$0(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->access$0(Lcom/tapjoy/TapjoyConnectCore;)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 504
    const-string v2, "TapjoyConnect"

    const-string v3, "timer done..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 509
    const-string v2, "TapjoyConnect"

    const-string v3, "Calling PPA actionComplete..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;->cancel()Z

    .line 516
    :cond_1
    return-void
.end method
