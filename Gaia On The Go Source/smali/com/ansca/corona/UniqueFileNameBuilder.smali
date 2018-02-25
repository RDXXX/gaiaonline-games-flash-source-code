.class public Lcom/ansca/corona/UniqueFileNameBuilder;
.super Ljava/lang/Object;
.source "UniqueFileNameBuilder.java"


# instance fields
.field private fDirectory:Ljava/io/File;

.field private fFileExtension:Ljava/lang/String;

.field private fFileNameFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    .line 34
    const-string v0, "File %d"

    iput-object v0, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public build()Ljava/io/File;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 123
    iget-object v7, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 124
    :cond_0
    const/4 v5, 0x0

    .line 158
    :cond_1
    :goto_0
    return-object v5

    .line 129
    :cond_2
    iget-object v7, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    .line 132
    .local v2, "hasFormatter":Z
    :goto_1
    const/4 v5, 0x0

    .line 134
    .local v5, "uniqueFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v1, "fileNameBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_2
    const/16 v6, 0x2710

    if-gt v3, v6, :cond_1

    .line 136
    if-eqz v2, :cond_5

    .line 137
    iget-object v6, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_3
    iget-object v6, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 144
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    iget-object v6, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v4, "nextFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    .line 149
    move-object v5, v4

    .line 150
    goto :goto_0

    .end local v1    # "fileNameBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "hasFormatter":Z
    .end local v3    # "index":I
    .end local v4    # "nextFile":Ljava/io/File;
    .end local v5    # "uniqueFile":Ljava/io/File;
    :cond_4
    move v2, v6

    .line 129
    goto :goto_1

    .line 140
    .restart local v1    # "fileNameBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "hasFormatter":Z
    .restart local v3    # "index":I
    .restart local v5    # "uniqueFile":Ljava/io/File;
    :cond_5
    iget-object v6, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 155
    .end local v1    # "fileNameBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "index":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "fileNameBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "index":I
    .restart local v4    # "nextFile":Ljava/io/File;
    :cond_6
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    return-object v0
.end method

.method public setDirectory(Ljava/io/File;)V
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fDirectory:Ljava/io/File;

    .line 45
    return-void
.end method

.method public setFileExtension(Ljava/lang/String;)V
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string p1, ""

    .line 91
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    :cond_1
    iput-object p1, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileExtension:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFileNameFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const-string p1, ""

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/UniqueFileNameBuilder;->fFileNameFormat:Ljava/lang/String;

    .line 68
    return-void
.end method
