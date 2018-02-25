.class Lcom/kontagent/queue/OfflineQueue$DataHelper;
.super Ljava/lang/Object;
.source "OfflineQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/queue/OfflineQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kontagent/queue/OfflineQueue$DataHelper$OpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "Kontagent.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final INSERT:Ljava/lang/String; = "insert into api_calls(url) values (?)"

.field private static final TABLE_NAME:Ljava/lang/String; = "api_calls"


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final insertStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/kontagent/queue/OfflineQueue$DataHelper$OpenHelper;

    invoke-direct {v0, p1}, Lcom/kontagent/queue/OfflineQueue$DataHelper$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "openHelper":Lcom/kontagent/queue/OfflineQueue$DataHelper$OpenHelper;
    invoke-virtual {v0}, Lcom/kontagent/queue/OfflineQueue$DataHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 112
    iget-object v1, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "insert into api_calls(url) values (?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 113
    return-void
.end method


# virtual methods
.method public bulkInsert(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/kontagent/queue/OfflineQueue$DataHelper;->insert(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 131
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v2, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 135
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 118
    return-void
.end method

.method public deleteAll()V
    .locals 5

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "api_calls"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {}, Lcom/kontagent/queue/OfflineQueue;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to delete offline records."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public selectAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 154
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "api_calls"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "url"

    aput-object v4, v2, v10

    const-string v7, "id asc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    return-object v9
.end method

.method public size()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/kontagent/queue/OfflineQueue$DataHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "api_calls"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v2, v4

    const-string v7, "id asc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 148
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 149
    .local v9, "size":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 150
    return v9
.end method
