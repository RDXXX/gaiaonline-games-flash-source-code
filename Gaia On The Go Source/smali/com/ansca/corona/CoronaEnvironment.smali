.class public final Lcom/ansca/corona/CoronaEnvironment;
.super Ljava/lang/Object;
.source "CoronaEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaEnvironment$1;,
        Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;
    }
.end annotation


# static fields
.field private static sApplicationContext:Landroid/content/Context;

.field private static sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

.field private static sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

.field private static sRuntimeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/CoronaRuntimeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-object v1, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 20
    sput-object v1, Lcom/ansca/corona/CoronaEnvironment;->sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    .line 23
    sput-object v1, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-direct {v0}, Lcom/ansca/corona/CoronaLuaErrorHandler;-><init>()V

    invoke-static {v0}, Lcom/ansca/corona/CoronaEnvironment;->setLuaErrorHandler(Lcom/naef/jnlua/JavaFunction;)V

    .line 42
    new-instance v0, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaEnvironment$RuntimeEventHandler;-><init>(Lcom/ansca/corona/CoronaEnvironment$1;)V

    invoke-static {v0}, Lcom/ansca/corona/CoronaRuntime;->addListener(Lcom/ansca/corona/CoronaRuntimeListener;)V

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/ansca/corona/CoronaRuntimeListener;

    .prologue
    .line 425
    sget-object v1, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 427
    if-nez p0, :cond_0

    .line 428
    :try_start_0
    monitor-exit v1

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 433
    monitor-exit v1

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 437
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Caches"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 99
    return-object v0
.end method

.method public static getCoronaActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method static getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;
    .locals 8
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    const/4 v5, 0x0

    .line 282
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-nez v6, :cond_1

    move-object v2, v5

    .line 315
    :cond_0
    :goto_0
    return-object v2

    .line 288
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    .line 289
    .local v2, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-nez v2, :cond_2

    move-object v2, v5

    .line 290
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 296
    .local v0, "luaState":Lcom/naef/jnlua/LuaState;
    if-nez v0, :cond_3

    move-object v2, v5

    .line 297
    goto :goto_0

    .line 301
    :cond_3
    const-wide/16 v3, 0x0

    .line 303
    .local v3, "runtimeLuaStateMemoryAddress":J
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "luaState"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 304
    .local v1, "luaStateMemoryAddressField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 310
    .end local v1    # "luaStateMemoryAddressField":Ljava/lang/reflect/Field;
    :goto_1
    cmp-long v6, v3, p0

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 311
    goto :goto_0

    .line 307
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method static getCoronaRuntimeByLuaState(Lcom/naef/jnlua/LuaState;)Lcom/ansca/corona/CoronaRuntime;
    .locals 3
    .param p0, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v1, 0x0

    .line 327
    if-nez p0, :cond_1

    move-object v0, v1

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v0

    .line 334
    .local v0, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 335
    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-eq v2, p0, :cond_0

    move-object v0, v1

    .line 338
    goto :goto_0
.end method

.method public static getDocumentsDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 59
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    return-object v0
.end method

.method static getInternalResourceCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 169
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "resources"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 171
    return-object v0
.end method

.method static getInternalTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 145
    return-object v0
.end method

.method static getInternalWebCachesDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 192
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "web"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 194
    return-object v0
.end method

.method public static getLuaErrorHandler()Lcom/naef/jnlua/JavaFunction;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    return-object v0
.end method

.method public static getTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setApplicationContext(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    return-object v0
.end method

.method static invokeLuaErrorHandler(J)I
    .locals 6
    .param p0, "luaStateMemoryAddress"    # J

    .prologue
    const/4 v3, 0x1

    .line 391
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-nez v4, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v3

    .line 397
    :cond_1
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    .line 400
    .local v0, "luaErrorHandlerFunction":Lcom/naef/jnlua/JavaFunction;
    if-eqz v0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "luaState":Lcom/naef/jnlua/LuaState;
    invoke-static {p0, p1}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaRuntimeByLuaState(J)Lcom/ansca/corona/CoronaRuntime;

    move-result-object v2

    .line 408
    .local v2, "runtime":Lcom/ansca/corona/CoronaRuntime;
    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    .line 411
    :cond_2
    if-nez v1, :cond_3

    .line 412
    new-instance v1, Lcom/naef/jnlua/LuaState;

    .end local v1    # "luaState":Lcom/naef/jnlua/LuaState;
    invoke-direct {v1, p0, p1}, Lcom/naef/jnlua/LuaState;-><init>(J)V

    .line 416
    .restart local v1    # "luaState":Lcom/naef/jnlua/LuaState;
    :cond_3
    invoke-interface {v0, v1}, Lcom/naef/jnlua/JavaFunction;->invoke(Lcom/naef/jnlua/LuaState;)I

    move-result v3

    goto :goto_0
.end method

.method public static removeRuntimeListener(Lcom/ansca/corona/CoronaRuntimeListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/ansca/corona/CoronaRuntimeListener;

    .prologue
    .line 447
    sget-object v1, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 449
    if-nez p0, :cond_0

    .line 450
    :try_start_0
    monitor-exit v1

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sRuntimeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 256
    if-nez p0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 261
    :cond_1
    sput-object p0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 262
    return-void
.end method

.method static setCoronaActivity(Lcom/ansca/corona/CoronaActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 230
    :cond_0
    sput-object p0, Lcom/ansca/corona/CoronaEnvironment;->sCoronaActivity:Lcom/ansca/corona/CoronaActivity;

    .line 231
    return-void
.end method

.method public static setLuaErrorHandler(Lcom/naef/jnlua/JavaFunction;)V
    .locals 1
    .param p0, "handler"    # Lcom/naef/jnlua/JavaFunction;

    .prologue
    .line 364
    sget-object v0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    if-ne p0, v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 369
    :cond_0
    sput-object p0, Lcom/ansca/corona/CoronaEnvironment;->sLuaErrorHandlerFunction:Lcom/naef/jnlua/JavaFunction;

    .line 372
    if-eqz p0, :cond_1

    .line 373
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->useJavaLuaErrorHandler()V

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->useDefaultLuaErrorHandler()V

    goto :goto_0
.end method

.method public static showCoronaActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ansca/corona/CoronaEnvironment;->sApplicationContext:Landroid/content/Context;

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ansca/corona/CoronaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
