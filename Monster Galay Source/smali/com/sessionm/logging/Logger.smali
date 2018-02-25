.class public final Lcom/sessionm/logging/Logger;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 32
    invoke-static {}, Lcom/sessionm/core/SessionMAndroidConfig;->getInstance()Lcom/sessionm/core/SessionMAndroidConfig;

    move-result-object v1

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sessionm/logging/Logger;->enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    const-string v0, "app.logging.enable"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sessionm/logging/Logger;->enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    const-string v0, "app.logging.level"

    invoke-virtual {v1, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    const-string v1, "VERBOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    const-string v1, "DEBUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v1, "INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v1, "WARN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WARNNING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 55
    :cond_6
    const-string v1, "ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/sessionm/logging/Logger;->logInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static disableLogging()V
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/sessionm/logging/Logger;->enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 70
    return-void
.end method

.method public static enableAndSetLevel(I)V
    .locals 0

    .prologue
    .line 95
    invoke-static {}, Lcom/sessionm/logging/Logger;->enableLogging()V

    .line 96
    invoke-static {p0}, Lcom/sessionm/logging/Logger;->setLevel(I)V

    .line 97
    return-void
.end method

.method public static enableLogging()V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/sessionm/logging/Logger;->enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 63
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/sessionm/logging/Logger;->logInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/sessionm/logging/Logger;->logInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/sessionm/logging/Logger;->logInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private static logInternal(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 178
    sget-object v1, Lcom/sessionm/logging/Logger;->enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 179
    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v1, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 182
    if-lt p0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    if-ge p0, v0, :cond_2

    move p0, v0

    .line 186
    :cond_2
    if-nez p1, :cond_3

    const-string p1, ""

    .line 188
    :cond_3
    if-ne p0, v0, :cond_4

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setLevel(I)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x6

    if-le p0, v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-object v0, Lcom/sessionm/logging/Logger;->enableLogging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/sessionm/logging/Logger;->loggingLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/sessionm/logging/Logger;->logInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/sessionm/logging/Logger;->logInternal(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
