.class public Lcom/kontagent/KontagentLog;
.super Ljava/lang/Object;
.source "KontagentLog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "Kontagent"

.field private static level:I

.field private static log:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kontagent/KontagentLog;->log:Z

    .line 7
    const/4 v0, 0x2

    sput v0, Lcom/kontagent/KontagentLog;->level:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kontagent/KontagentLog;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static asTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 23
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kontagent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Kontagent"

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/kontagent/KontagentLog;->log:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget v1, Lcom/kontagent/KontagentLog;->level:I

    if-lt v0, v1, :cond_0

    .line 40
    invoke-static {p0}, Lcom/kontagent/KontagentLog;->asTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/kontagent/KontagentLog;->asMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/kontagent/KontagentLog;->asTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/kontagent/KontagentLog;->asMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static enable()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kontagent/KontagentLog;->enable(Z)V

    .line 12
    return-void
.end method

.method public static enable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/kontagent/KontagentLog;->log:Z

    .line 16
    return-void
.end method

.method private static getThreadId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 31
    const-string v0, "T#%02d:"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-boolean v0, Lcom/kontagent/KontagentLog;->log:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/kontagent/KontagentLog;->level:I

    if-lt v0, v1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/kontagent/KontagentLog;->asTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/kontagent/KontagentLog;->asMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 19
    sput p0, Lcom/kontagent/KontagentLog;->level:I

    .line 20
    return-void
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/kontagent/KontagentLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-boolean v0, Lcom/kontagent/KontagentLog;->log:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget v1, Lcom/kontagent/KontagentLog;->level:I

    if-lt v0, v1, :cond_0

    .line 64
    invoke-static {p0}, Lcom/kontagent/KontagentLog;->asTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/kontagent/KontagentLog;->asMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
