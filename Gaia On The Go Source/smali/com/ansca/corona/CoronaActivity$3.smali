.class Lcom/ansca/corona/CoronaActivity$3;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;

.field final synthetic val$finalDestinationFile:Ljava/io/File;

.field final synthetic val$finalUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;Landroid/net/Uri;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$3;->this$0:Lcom/ansca/corona/CoronaActivity;

    iput-object p2, p0, Lcom/ansca/corona/CoronaActivity$3;->val$finalUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/ansca/corona/CoronaActivity$3;->val$finalDestinationFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1276
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 1279
    .local v9, "context":Landroid/content/Context;
    const/16 v19, 0x0

    .line 1280
    .local v19, "sourceImageFile":Ljava/io/File;
    const/16 v18, 0x0

    .line 1281
    .local v18, "sourceImageExtension":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1283
    .local v15, "isContentUri":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 1284
    .local v16, "scheme":Ljava/lang/String;
    const-string v1, "file"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1285
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v19    # "sourceImageFile":Ljava/io/File;
    .local v20, "sourceImageFile":Ljava/io/File;
    move-object/from16 v19, v20

    .line 1300
    .end local v16    # "scheme":Ljava/lang/String;
    .end local v20    # "sourceImageFile":Ljava/io/File;
    .restart local v19    # "sourceImageFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    .line 1301
    invoke-static/range {v19 .. v19}, Lcom/ansca/corona/FileServices;->getExtensionFrom(Ljava/io/File;)Ljava/lang/String;

    move-result-object v18

    .line 1302
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1303
    const/16 v19, 0x0

    .line 1308
    :cond_1
    const-string v17, ""

    .line 1309
    .local v17, "selectedImageFilePath":Ljava/lang/String;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalDestinationFile:Ljava/io/File;

    if-eqz v1, :cond_5

    .line 1312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalDestinationFile:Ljava/io/File;

    move-object/from16 v0, v19

    invoke-static {v9, v0, v1}, Lcom/ansca/corona/FileServices;->copyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v21

    .line 1313
    .local v21, "wasCopied":Z
    if-eqz v21, :cond_2

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalDestinationFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 1353
    .end local v21    # "wasCopied":Z
    :cond_2
    :goto_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v12

    .line 1354
    .local v12, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v12, :cond_3

    .line 1355
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    .line 1357
    :cond_3
    return-void

    .line 1287
    .end local v12    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .end local v17    # "selectedImageFilePath":Ljava/lang/String;
    .restart local v16    # "scheme":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v1, "content"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    const/4 v15, 0x1

    .line 1289
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    .line 1290
    .local v3, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1292
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1293
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1294
    .local v8, "columnIndex":I
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1295
    .local v13, "filePath":Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1296
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v19    # "sourceImageFile":Ljava/io/File;
    .restart local v20    # "sourceImageFile":Ljava/io/File;
    move-object/from16 v19, v20

    .end local v20    # "sourceImageFile":Ljava/io/File;
    .restart local v19    # "sourceImageFile":Ljava/io/File;
    goto :goto_0

    .line 1318
    .end local v3    # "filePathColumn":[Ljava/lang/String;
    .end local v8    # "columnIndex":I
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v16    # "scheme":Ljava/lang/String;
    .restart local v17    # "selectedImageFilePath":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 1321
    :cond_6
    if-eqz v15, :cond_2

    .line 1323
    const/4 v14, 0x0

    .line 1325
    .local v14, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1326
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ansca/corona/CoronaActivity$3;->val$finalDestinationFile:Ljava/io/File;

    .line 1327
    .local v11, "destinationFile":Ljava/io/File;
    if-nez v11, :cond_7

    .line 1328
    new-instance v7, Lcom/ansca/corona/UniqueFileNameBuilder;

    invoke-direct {v7}, Lcom/ansca/corona/UniqueFileNameBuilder;-><init>()V

    .line 1329
    .local v7, "builder":Lcom/ansca/corona/UniqueFileNameBuilder;
    invoke-static {v9}, Lcom/ansca/corona/CoronaEnvironment;->getInternalTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/ansca/corona/UniqueFileNameBuilder;->setDirectory(Ljava/io/File;)V

    .line 1330
    const-string v1, "Picture %d"

    invoke-virtual {v7, v1}, Lcom/ansca/corona/UniqueFileNameBuilder;->setFileNameFormat(Ljava/lang/String;)V

    .line 1331
    if-eqz v18, :cond_9

    .line 1332
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/ansca/corona/UniqueFileNameBuilder;->setFileExtension(Ljava/lang/String;)V

    .line 1337
    :goto_2
    invoke-virtual {v7}, Lcom/ansca/corona/UniqueFileNameBuilder;->build()Ljava/io/File;

    move-result-object v11

    .line 1339
    .end local v7    # "builder":Lcom/ansca/corona/UniqueFileNameBuilder;
    :cond_7
    invoke-static {v9, v14, v11}, Lcom/ansca/corona/FileServices;->writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v22

    .line 1340
    .local v22, "wasWritten":Z
    if-eqz v22, :cond_8

    .line 1341
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v17

    .line 1345
    .end local v11    # "destinationFile":Ljava/io/File;
    .end local v22    # "wasWritten":Z
    :cond_8
    :goto_3
    if-eqz v14, :cond_2

    .line 1346
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1347
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 1335
    .restart local v7    # "builder":Lcom/ansca/corona/UniqueFileNameBuilder;
    .restart local v11    # "destinationFile":Ljava/io/File;
    :cond_9
    :try_start_4
    const-string v1, "jpg"

    invoke-virtual {v7, v1}, Lcom/ansca/corona/UniqueFileNameBuilder;->setFileExtension(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1344
    .end local v7    # "builder":Lcom/ansca/corona/UniqueFileNameBuilder;
    .end local v11    # "destinationFile":Ljava/io/File;
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1299
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "selectedImageFilePath":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method
