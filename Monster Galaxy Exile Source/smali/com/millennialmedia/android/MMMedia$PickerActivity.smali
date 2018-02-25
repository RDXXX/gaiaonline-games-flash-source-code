.class Lcom/millennialmedia/android/MMMedia$PickerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "MMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickerActivity"
.end annotation


# instance fields
.field private fileUri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 153
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Photo Library"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const/4 v10, 0x0

    .line 156
    .local v10, "in":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 158
    .local v14, "out":Ljava/io/OutputStream;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 160
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 163
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 164
    .local v12, "index":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    .line 166
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    new-instance v7, Ljava/io/File;

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v7, "chosenFile":Ljava/io/File;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 173
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v9, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v10    # "in":Ljava/io/InputStream;
    .local v11, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 176
    .end local v14    # "out":Ljava/io/OutputStream;
    .local v15, "out":Ljava/io/OutputStream;
    const/16 v0, 0x400

    :try_start_2
    new-array v6, v0, [B

    .line 178
    .local v6, "buf":[B
    :goto_0
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, "len":I
    if-lez v13, :cond_2

    .line 179
    const/4 v0, 0x0

    invoke-virtual {v15, v6, v0, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 181
    .end local v6    # "buf":[B
    .end local v13    # "len":I
    :catch_0
    move-exception v0

    move-object v14, v15

    .end local v15    # "out":Ljava/io/OutputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    move-object v10, v11

    .line 188
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    :goto_1
    if-eqz v10, :cond_0

    .line 189
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 190
    :cond_0
    if-eqz v14, :cond_1

    .line 191
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v7    # "chosenFile":Ljava/io/File;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v12    # "index":I
    .end local v14    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/millennialmedia/android/MMMedia;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 202
    :try_start_4
    invoke-static {}, Lcom/millennialmedia/android/MMMedia;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 203
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->finish()V

    .line 205
    return-void

    .line 188
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "proj":[Ljava/lang/String;
    .restart local v6    # "buf":[B
    .restart local v7    # "chosenFile":Ljava/io/File;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "index":I
    .restart local v13    # "len":I
    .restart local v15    # "out":Ljava/io/OutputStream;
    :cond_2
    if-eqz v11, :cond_3

    .line 189
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 190
    :cond_3
    if-eqz v15, :cond_1

    .line 191
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 193
    :catch_1
    move-exception v0

    goto :goto_2

    .line 186
    .end local v6    # "buf":[B
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "len":I
    .end local v15    # "out":Ljava/io/OutputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    .line 188
    :goto_3
    if-eqz v10, :cond_4

    .line 189
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 190
    :cond_4
    if-eqz v14, :cond_5

    .line 191
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 195
    :cond_5
    :goto_4
    throw v0

    .line 203
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v7    # "chosenFile":Ljava/io/File;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v12    # "index":I
    .end local v14    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 193
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "proj":[Ljava/lang/String;
    .restart local v7    # "chosenFile":Ljava/io/File;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v12    # "index":I
    .restart local v14    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    goto :goto_4

    .line 186
    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v10    # "in":Ljava/io/InputStream;
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v15    # "out":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    move-object v14, v15

    .end local v15    # "out":Ljava/io/OutputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 193
    .end local v9    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    goto :goto_2

    .line 181
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v10    # "in":Ljava/io/InputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object v10, v11

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMMedia$PickerActivity;->fileUri:Landroid/net/Uri;

    .line 137
    const-string v1, "output"

    iget-object v2, p0, Lcom/millennialmedia/android/MMMedia$PickerActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0, v3}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    :goto_0
    return-void

    .line 143
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0, v3}, Lcom/millennialmedia/android/MMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
