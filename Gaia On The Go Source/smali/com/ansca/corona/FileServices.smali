.class public Lcom/ansca/corona/FileServices;
.super Ljava/lang/Object;
.source "FileServices.java"


# static fields
.field private static sHasAccessedExpansionFileDirectory:Z

.field private static sMainExpansionFile:Ljava/io/File;

.field private static sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

.field private static sPatchExpansionFile:Ljava/io/File;

.field private static sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    .line 16
    sput-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionFile:Ljava/io/File;

    .line 19
    sput-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionFile:Ljava/io/File;

    .line 22
    sput-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    .line 25
    sput-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static copyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "destinationFile"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 746
    const/4 v6, 0x0

    .line 747
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 748
    .local v7, "outputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 751
    .local v5, "hasSucceeded":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v9

    .line 757
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 762
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 766
    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v6

    .line 767
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .local v8, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 769
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 770
    .local v2, "byteCount":I
    if-lez v2, :cond_4

    .line 771
    const/16 v0, 0x400

    .line 772
    .local v0, "BUFFER_SIZE":I
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 773
    .local v1, "byteBuffer":[B
    :goto_1
    if-lez v2, :cond_4

    .line 774
    const/16 v3, 0x400

    .line 775
    .local v3, "bytesToCopy":I
    if-le v3, v2, :cond_3

    .line 776
    move v3, v2

    .line 778
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 779
    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 780
    sub-int/2addr v2, v3

    .line 781
    goto :goto_1

    .line 783
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "byteBuffer":[B
    .end local v3    # "bytesToCopy":I
    :cond_4
    const/4 v5, 0x1

    .line 791
    .end local v2    # "byteCount":I
    :cond_5
    if-eqz v6, :cond_6

    .line 792
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 795
    :cond_6
    :goto_2
    if-eqz v8, :cond_b

    .line 796
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    :cond_7
    :goto_3
    move v9, v5

    .line 800
    goto :goto_0

    .line 797
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v9

    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 786
    :catch_1
    move-exception v4

    .line 787
    .local v4, "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 791
    if-eqz v6, :cond_8

    .line 792
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 795
    :cond_8
    :goto_5
    if-eqz v7, :cond_7

    .line 796
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 797
    :catch_2
    move-exception v9

    goto :goto_3

    .line 791
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v6, :cond_9

    .line 792
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 795
    :cond_9
    :goto_7
    if-eqz v7, :cond_a

    .line 796
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 797
    :cond_a
    :goto_8
    throw v9

    .line 793
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    goto :goto_2

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    goto :goto_5

    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    goto :goto_7

    .line 797
    :catch_6
    move-exception v10

    goto :goto_8

    .line 791
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 786
    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v7    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "outputStream":Ljava/io/FileOutputStream;
    :cond_b
    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public static copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "destinationFilePath"    # Ljava/lang/String;

    .prologue
    .line 712
    const/4 v1, 0x0

    .line 715
    .local v1, "hasSucceeded":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 718
    :cond_0
    const/4 v2, 0x0

    .line 729
    :goto_0
    return v2

    .line 723
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v3}, Lcom/ansca/corona/FileServices;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 729
    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static createRawResourceNameForAsset(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 670
    if-nez p0, :cond_0

    move-object v1, v2

    .line 698
    :goto_0
    return-object v1

    .line 676
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "resourceName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    move-object v1, v2

    .line 678
    goto :goto_0

    .line 682
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 685
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 686
    .local v0, "index":I
    if-gtz v0, :cond_2

    move-object v1, v2

    .line 687
    goto :goto_0

    .line 689
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 692
    const-string v2, "[^[a-z][0-9]]"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corona_asset_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    goto :goto_0
.end method

.method public static doesAssetFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    :cond_1
    :goto_0
    return v3

    .line 74
    :cond_2
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getPatchExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 75
    .local v2, "zipFile":Ljava/io/File;
    invoke-static {p0, v2, p1}, Lcom/ansca/corona/FileServices;->openZipFileEntry(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 76
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_3

    .line 77
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v4

    .line 78
    goto :goto_0

    .line 82
    :cond_3
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getMainExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 83
    invoke-static {p0, v2, p1}, Lcom/ansca/corona/FileServices;->openZipFileEntry(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v3, v4

    .line 86
    goto :goto_0

    .line 91
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, p1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 94
    :goto_3
    if-eqz v0, :cond_5

    .line 95
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    move v3, v4

    .line 96
    goto :goto_0

    .line 100
    :cond_5
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ansca/corona/ResourceServices;->getRawResourceId(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "resourceId":I
    if-eqz v1, :cond_1

    move v3, v4

    .line 102
    goto :goto_0

    .line 77
    .end local v1    # "resourceId":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 85
    :catch_1
    move-exception v3

    goto :goto_2

    .line 95
    :catch_2
    move-exception v3

    goto :goto_4

    .line 93
    :catch_3
    move-exception v5

    goto :goto_3
.end method

.method static externalizeAssetFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 572
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v2

    .line 598
    :cond_1
    :goto_0
    return-object v0

    .line 578
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, p1

    .line 579
    goto :goto_0

    .line 583
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v3, "coronaResources"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    .local v0, "destinationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 592
    invoke-static {p0, p1, v0}, Lcom/ansca/corona/FileServices;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 593
    .local v1, "wasCopied":Z
    if-nez v1, :cond_1

    move-object v0, v2

    .line 594
    goto :goto_0
.end method

.method static externalizeAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 546
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 547
    :cond_0
    const/4 v0, 0x0

    .line 558
    :goto_0
    return-object v0

    .line 551
    :cond_1
    const/4 v0, 0x0

    .line 553
    .local v0, "destinationFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ansca/corona/FileServices;->externalizeAssetFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getExpansionFileDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "path":Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/obb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "path":Ljava/io/File;
    .local v1, "path":Ljava/io/File;
    move-object v0, v1

    .line 131
    .end local v1    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getExpansionFileType(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 249
    .local v1, "path":Ljava/io/File;
    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getExpansionFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 253
    .local v3, "versionCode":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "fileNameBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v4, ".obb"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "path":Ljava/io/File;
    .local v2, "path":Ljava/io/File;
    move-object v1, v2

    .line 264
    .end local v0    # "fileNameBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "versionCode":I
    .restart local v1    # "path":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getExtensionFrom(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 611
    if-nez p0, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/FileServices;->getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtensionFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 628
    if-nez p0, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-object v1

    .line 634
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 640
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 641
    .local v0, "index":I
    if-ltz v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 642
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMainExpansionFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    sget-object v0, Lcom/ansca/corona/FileServices;->sMainExpansionFile:Ljava/io/File;

    .line 176
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 177
    const-string v1, "main"

    invoke-static {p0, v1}, Lcom/ansca/corona/FileServices;->getExpansionFileType(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 178
    sput-object v0, Lcom/ansca/corona/FileServices;->sMainExpansionFile:Ljava/io/File;

    .line 180
    :cond_0
    return-object v0
.end method

.method public static getMimeTypeFrom(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 915
    if-nez p0, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-object v2

    .line 920
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 921
    .local v1, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "fileExtension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPatchExpansionFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    sget-object v0, Lcom/ansca/corona/FileServices;->sPatchExpansionFile:Ljava/io/File;

    .line 225
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 226
    const-string v1, "patch"

    invoke-static {p0, v1}, Lcom/ansca/corona/FileServices;->getExpansionFileType(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 227
    sput-object v0, Lcom/ansca/corona/FileServices;->sPatchExpansionFile:Ljava/io/File;

    .line 229
    :cond_0
    return-object v0
.end method

.method public static isAssetFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadExpansionFiles(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 278
    if-nez p0, :cond_0

    .line 279
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 283
    :cond_0
    sget-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    if-eqz v1, :cond_1

    .line 284
    sget-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    invoke-virtual {v1}, Lcom/ansca/corona/ZipResourceFile;->close()V

    .line 285
    sput-object v2, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    .line 287
    :cond_1
    sget-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    if-eqz v1, :cond_2

    .line 288
    sget-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    invoke-virtual {v1}, Lcom/ansca/corona/ZipResourceFile;->close()V

    .line 289
    sput-object v2, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    .line 293
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    .line 294
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getExpansionFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 296
    .local v0, "expansionDirectory":Ljava/io/File;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    :try_start_0
    new-instance v1, Lcom/ansca/corona/ZipResourceFile;

    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getPatchExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/ZipResourceFile;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    :goto_0
    :try_start_1
    new-instance v1, Lcom/ansca/corona/ZipResourceFile;

    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getMainExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/ZipResourceFile;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    .end local v0    # "expansionDirectory":Ljava/io/File;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    .line 304
    return-void

    .line 300
    .restart local v0    # "expansionDirectory":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 298
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static moveFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "destinationFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 875
    const/4 v1, 0x0

    .line 878
    .local v1, "hasSucceeded":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v2

    .line 883
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 894
    if-nez v1, :cond_2

    .line 895
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/FileServices;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 896
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v2, v1

    .line 902
    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static openAssetFileDescriptorFor(Landroid/content/Context;Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 527
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 528
    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ansca/corona/FileServices;->openAssetFileDescriptorFor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public static openAssetFileDescriptorFor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 461
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 512
    :cond_1
    :goto_0
    return-object v0

    .line 466
    :cond_2
    const/4 v6, 0x0

    .line 467
    .local v6, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 469
    sget-boolean v1, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    if-nez v1, :cond_3

    .line 470
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->loadExpansionFiles(Landroid/content/Context;)V

    .line 474
    :cond_3
    sget-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    if-eqz v1, :cond_6

    .line 475
    :try_start_0
    sget-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .local v0, "descriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    if-nez v0, :cond_1

    .line 480
    sget-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    if-eqz v1, :cond_4

    .line 481
    :try_start_1
    sget-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    invoke-virtual {v1, p1}, Lcom/ansca/corona/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 484
    :cond_4
    :goto_2
    if-nez v0, :cond_1

    .line 486
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 488
    :goto_3
    if-nez v0, :cond_1

    .line 491
    :try_start_3
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, "resourceName":Ljava/lang/String;
    invoke-static {v9}, Lcom/ansca/corona/ResourceServices;->getRawResourceId(Ljava/lang/String;)I

    move-result v8

    .line 493
    .local v8, "resourceId":I
    if-eqz v8, :cond_1

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    .line 476
    .end local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "resourceId":I
    .end local v9    # "resourceName":Ljava/lang/String;
    .restart local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    move-object v0, v6

    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_1

    .line 505
    .end local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_5
    :try_start_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v7, "file":Ljava/io/File;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const/high16 v1, 0x10000000

    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 510
    .end local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v1

    move-object v0, v6

    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 497
    :catch_2
    move-exception v1

    goto :goto_0

    .line 487
    :catch_3
    move-exception v1

    goto :goto_3

    .line 482
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_6
    move-object v0, v6

    .end local v6    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_1
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 371
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 376
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 317
    :cond_0
    const/4 v1, 0x0

    .line 358
    :cond_1
    :goto_0
    return-object v1

    .line 321
    :cond_2
    const/4 v1, 0x0

    .line 322
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->isAssetFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 324
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getPatchExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 325
    .local v5, "zipFile":Ljava/io/File;
    invoke-static {p0, v5, p1}, Lcom/ansca/corona/FileServices;->openZipFileEntry(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 326
    if-nez v1, :cond_1

    .line 328
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getMainExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 329
    invoke-static {p0, v5, p1}, Lcom/ansca/corona/FileServices;->openZipFileEntry(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 330
    if-nez v1, :cond_1

    .line 333
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 334
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v6, 0x3

    invoke-virtual {v0, p1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 337
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_1
    if-nez v1, :cond_1

    .line 340
    :try_start_1
    invoke-static {p1}, Lcom/ansca/corona/FileServices;->createRawResourceNameForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "resourceName":Ljava/lang/String;
    invoke-static {v4}, Lcom/ansca/corona/ResourceServices;->getRawResourceId(Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, "resourceId":I
    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 354
    .end local v3    # "resourceId":I
    .end local v4    # "resourceName":Ljava/lang/String;
    .end local v5    # "zipFile":Ljava/io/File;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 356
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    .line 346
    .restart local v5    # "zipFile":Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 336
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private static openZipFileEntry(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 418
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    sget-boolean v1, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    if-nez v1, :cond_2

    .line 424
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->loadExpansionFiles(Landroid/content/Context;)V

    .line 428
    :cond_2
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getPatchExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    sget-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    sget-object v1, Lcom/ansca/corona/FileServices;->sPatchExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    invoke-virtual {v1, p2}, Lcom/ansca/corona/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_3
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getMainExpansionFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    sget-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    if-eqz v1, :cond_0

    .line 439
    :try_start_1
    sget-object v1, Lcom/ansca/corona/FileServices;->sMainExpansionZipReader:Lcom/ansca/corona/ZipResourceFile;

    invoke-virtual {v1, p2}, Lcom/ansca/corona/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_4
    invoke-static {p1, p2}, Lcom/ansca/corona/ZipFileEntryInputStream;->tryOpen(Ljava/io/File;Ljava/lang/String;)Lcom/ansca/corona/ZipFileEntryInputStream;

    move-result-object v0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0

    .line 431
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static openZipFileEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "entryName"    # Ljava/lang/String;

    .prologue
    .line 392
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    .line 397
    :cond_1
    const/4 v0, 0x0

    .line 399
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/ansca/corona/FileServices;->openZipFileEntry(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setMainExpansionFileName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "path":Ljava/io/File;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 156
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getExpansionFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "path":Ljava/io/File;
    .local v1, "path":Ljava/io/File;
    move-object v0, v1

    .line 163
    .end local v1    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_1
    sput-object v0, Lcom/ansca/corona/FileServices;->sMainExpansionFile:Ljava/io/File;

    .line 164
    const/4 v2, 0x0

    sput-boolean v2, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    .line 165
    return-void
.end method

.method public static setPatchExpansionFileName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 198
    if-nez p0, :cond_0

    .line 199
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "path":Ljava/io/File;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 205
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getExpansionFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "path":Ljava/io/File;
    .local v1, "path":Ljava/io/File;
    move-object v0, v1

    .line 212
    .end local v1    # "path":Ljava/io/File;
    .restart local v0    # "path":Ljava/io/File;
    :cond_1
    sput-object v0, Lcom/ansca/corona/FileServices;->sPatchExpansionFile:Ljava/io/File;

    .line 213
    const/4 v2, 0x0

    sput-boolean v2, Lcom/ansca/corona/FileServices;->sHasAccessedExpansionFileDirectory:Z

    .line 214
    return-void
.end method

.method public static writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "destinationFile"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 817
    const/4 v5, 0x0

    .line 818
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 821
    .local v4, "hasSucceeded":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v7

    .line 826
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 830
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v6, :cond_5

    .line 832
    const/16 v0, 0x400

    .line 833
    .local v0, "BUFFER_SIZE":I
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 835
    .local v1, "byteBuffer":[B
    :cond_2
    :goto_1
    const/16 v2, 0x400

    .line 836
    .local v2, "bytesToCopy":I
    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 837
    if-lez v2, :cond_4

    .line 838
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 847
    .end local v1    # "byteBuffer":[B
    .end local v2    # "bytesToCopy":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 848
    .end local v0    # "BUFFER_SIZE":I
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .local v3, "ex":Ljava/lang/Exception;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    if-eqz v5, :cond_3

    .line 853
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_3
    move v7, v4

    .line 857
    goto :goto_0

    .line 840
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "byteBuffer":[B
    .restart local v2    # "bytesToCopy":I
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_4
    if-gez v2, :cond_2

    .line 844
    const/4 v4, 0x1

    .line 852
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "byteBuffer":[B
    .end local v2    # "bytesToCopy":I
    :cond_5
    if-eqz v6, :cond_7

    .line 853
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v6

    .line 854
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 852
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_6

    .line 853
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 854
    :cond_6
    :goto_5
    throw v7

    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 852
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 847
    .end local v0    # "BUFFER_SIZE":I
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :cond_7
    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
