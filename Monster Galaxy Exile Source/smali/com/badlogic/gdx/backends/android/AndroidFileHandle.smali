.class public Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
.super Lcom/badlogic/gdx/files/FileHandle;
.source "AndroidFileHandle.java"


# instance fields
.field final assets:Landroid/content/res/AssetManager;


# direct methods
.method constructor <init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 0
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .prologue
    .line 41
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 0
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .prologue
    .line 36
    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    goto :goto_0
.end method

.method public exists()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v6, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v5, v6, :cond_1

    .line 125
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 129
    .restart local v1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 132
    :catch_1
    move-exception v2

    .local v2, "ignored":Ljava/lang/Exception;
    move v3, v4

    .line 133
    goto :goto_0

    .line 137
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "ignored":Ljava/lang/Exception;
    :cond_1
    invoke-super {p0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v3, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_1

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 120
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    invoke-super {p0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v1

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 147
    :goto_0
    return-wide v0

    .line 144
    :catch_0
    move-exception v0

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public list()[Lcom/badlogic/gdx/files/FileHandle;
    .locals 10

    .prologue
    .line 73
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v6, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v5, v6, :cond_0

    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "relativePaths":[Ljava/lang/String;
    array-length v5, v4

    new-array v1, v5, [Lcom/badlogic/gdx/files/FileHandle;

    .line 77
    .local v1, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 78
    new-instance v5, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    aget-object v9, v4, v2

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v5, v6, v7, v8}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    aput-object v5, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "handles":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "relativePaths":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error listing children: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public list(Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 12
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v9, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v8, v9, :cond_3

    .line 90
    :try_start_0
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "relativePaths":[Ljava/lang/String;
    array-length v8, v7

    new-array v2, v8, [Lcom/badlogic/gdx/files/FileHandle;

    .line 92
    .local v2, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 94
    aget-object v6, v7, v3

    .line 95
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 93
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v8, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-direct {v10, v11, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v8, v9, v10, v11}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    aput-object v8, v2, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    array-length v8, v7

    if-ge v0, v8, :cond_2

    .line 100
    new-array v5, v0, [Lcom/badlogic/gdx/files/FileHandle;

    .line 101
    .local v5, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    move-object v2, v5

    .line 109
    .end local v0    # "count":I
    .end local v2    # "handles":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "relativePaths":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v2

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error listing children: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 109
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    invoke-super {p0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    goto :goto_2
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_1

    .line 54
    new-instance v0, Ljava/io/File;

    .end local v0    # "parent":Ljava/io/File;
    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v0    # "parent":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v1, v2, v0, v3}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v1

    .line 56
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "parent":Ljava/io/File;
    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "parent":Ljava/io/File;
    goto :goto_0
.end method

.method public read()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->assets:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
