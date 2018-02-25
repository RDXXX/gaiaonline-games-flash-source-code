.class public Lcom/badlogic/gdx/utils/GdxNativesLoader;
.super Ljava/lang/Object;
.source "GdxNativesLoader.java"


# static fields
.field public static disableNativesLoading:Z

.field public static is64Bit:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z

.field public static nativesDir:Ljava/io/File;

.field private static nativesLoaded:Z

.field public static path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->disableNativesLoading:Z

    .line 29
    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    .line 31
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isWindows:Z

    .line 32
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isLinux:Z

    .line 33
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isMac:Z

    .line 34
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->is64Bit:Z

    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libgdx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gdx.dll"

    invoke-static {v2}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->crc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crc(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "nativeFile"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v5, Lcom/badlogic/gdx/utils/GdxNativesLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 40
    .local v3, "input":Ljava/io/InputStream;
    if-nez v3, :cond_0

    sget-object v5, Lcom/badlogic/gdx/Version;->VERSION:Ljava/lang/String;

    .line 55
    :goto_0
    return-object v5

    .line 41
    :cond_0
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 42
    .local v1, "crc":Ljava/util/zip/CRC32;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 45
    .local v0, "buffer":[B
    :goto_1
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 46
    .local v4, "length":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 55
    .end local v4    # "length":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 47
    .restart local v4    # "length":I
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 49
    .end local v4    # "length":I
    :catch_0
    move-exception v2

    .line 51
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 52
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static extractLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "native32"    # Ljava/lang/String;
    .param p1, "native64"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 68
    sget-boolean v7, Lcom/badlogic/gdx/utils/GdxNativesLoader;->is64Bit:Z

    if-eqz v7, :cond_1

    move-object v4, p1

    .line 69
    .local v4, "nativeFileName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesDir:Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v3, "nativeFile":Ljava/io/File;
    :try_start_0
    const-class v7, Lcom/badlogic/gdx/utils/GdxNativesLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 73
    .local v1, "input":Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 86
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-object v6

    .end local v3    # "nativeFile":Ljava/io/File;
    .end local v4    # "nativeFileName":Ljava/lang/String;
    :cond_1
    move-object v4, p0

    .line 68
    goto :goto_0

    .line 74
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v3    # "nativeFile":Ljava/io/File;
    .restart local v4    # "nativeFileName":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 75
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    .local v5, "output":Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 78
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 79
    .local v2, "length":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_3

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "buffer":[B
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "length":I
    .end local v5    # "output":Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 80
    .restart local v0    # "buffer":[B
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "length":I
    .restart local v5    # "output":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 84
    .end local v0    # "buffer":[B
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "length":I
    .end local v5    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method public static load()V
    .locals 3

    .prologue
    .line 91
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->disableNativesLoading:Z

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "So you don\'t like our native lib loading? Good, you are on your own now. We don\'t give support from here on out"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    .local v0, "vm":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 96
    .end local v0    # "vm":Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    if-nez v1, :cond_0

    .line 98
    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "vm":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 100
    :cond_2
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isWindows:Z

    if-eqz v1, :cond_6

    .line 101
    const-string v1, "gdx.dll"

    const-string v2, "gdx-64.dll"

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    .line 107
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    if-nez v1, :cond_0

    .line 110
    :cond_4
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->is64Bit:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isMac:Z

    if-eqz v1, :cond_8

    .line 111
    :cond_5
    const-string v1, "gdx"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 115
    :goto_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    goto :goto_0

    .line 102
    :cond_6
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isMac:Z

    if-eqz v1, :cond_7

    .line 103
    const-string v1, "libgdx.dylib"

    const-string v2, "libgdx.dylib"

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    goto :goto_1

    .line 104
    :cond_7
    sget-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->isLinux:Z

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "libgdx.so"

    const-string v2, "libgdx-64.so"

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/badlogic/gdx/utils/GdxNativesLoader;->nativesLoaded:Z

    goto :goto_1

    .line 113
    :cond_8
    const-string v1, "gdx-64"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "nativeFile32"    # Ljava/lang/String;
    .param p1, "nativeFile64"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/GdxNativesLoader;->extractLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 64
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/GdxNativesLoader;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
