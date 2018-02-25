.class public Lcom/badlogic/gdx/backends/android/AndroidFiles;
.super Ljava/lang/Object;
.source "AndroidFiles.java"

# interfaces
.implements Lcom/badlogic/gdx/Files;


# instance fields
.field protected final assets:Landroid/content/res/AssetManager;

.field protected final sdcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFiles;->sdcard:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    .line 33
    return-void
.end method


# virtual methods
.method public absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFiles;->sdcard:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .prologue
    .line 37
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    :goto_0
    invoke-direct {v1, v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFiles;->assets:Landroid/content/res/AssetManager;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
