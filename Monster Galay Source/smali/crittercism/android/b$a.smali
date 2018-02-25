.class final Lcrittercism/android/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static d:Z

.field private static f:Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/StringBuilder;

.field private c:[Ljava/lang/String;

.field private e:Ljava/lang/Process;

.field private g:Ljava/lang/Thread;

.field private h:Lcrittercism/android/b$b;

.field private i:Lcrittercism/android/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcrittercism/android/b$a;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Thread;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcrittercism/android/b$a;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcrittercism/android/b$a;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    sput-object p1, Lcrittercism/android/b$a;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcrittercism/android/b$a;->g:Ljava/lang/Thread;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "-t"

    aput-object v1, v0, v3

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "100"

    aput-object v1, v0, v4

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "-v"

    aput-object v1, v0, v5

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "time"

    aput-object v1, v0, v6

    :goto_0
    return-void

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "logcat"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "-d"

    aput-object v1, v0, v3

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "-v"

    aput-object v1, v0, v4

    iget-object v0, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    const-string v1, "time"

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcrittercism/android/b$a;->d:Z

    return v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcrittercism/android/b$a;->d:Z

    return-void
.end method

.method private d()Ljava/lang/StringBuilder;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    iput-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    sget-boolean v0, Lcrittercism/android/b$a;->d:Z

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/b$a;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    new-instance v0, Lcrittercism/android/b$b;

    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/b$b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    new-instance v0, Lcrittercism/android/b$b;

    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/b$b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    iget-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->start()V

    iget-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->start()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/b$a;->a:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/b$a;->b:Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lcrittercism/android/b$a;->a:Ljava/lang/StringBuilder;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcrittercism/android/b$a;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/b$a;->a:Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/b$a;->b:Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    invoke-virtual {v1}, Lcrittercism/android/b$b;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/b$a;->a:Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    invoke-virtual {v1}, Lcrittercism/android/b$b;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/b$a;->b:Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    if-eqz v1, :cond_7

    :try_start_4
    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final c()V
    .locals 2

    sget-object v1, Lcrittercism/android/b$a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/b$a;->h:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->b()V

    iget-object v0, p0, Lcrittercism/android/b$a;->i:Lcrittercism/android/b$b;

    invoke-virtual {v0}, Lcrittercism/android/b$b;->b()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/b$a;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcrittercism/android/b$a;->d()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
