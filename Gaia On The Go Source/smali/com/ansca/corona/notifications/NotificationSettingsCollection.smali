.class public Lcom/ansca/corona/notifications/NotificationSettingsCollection;
.super Ljava/lang/Object;
.source "NotificationSettingsCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ansca/corona/notifications/NotificationSettings;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private fCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Lcom/ansca/corona/notifications/NotificationSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    .local p1, "item":Lcom/ansca/corona/notifications/NotificationSettings;, "TT;"
    if-nez p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    return-void
.end method

.method public getById(I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    iget-object v2, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/notifications/NotificationSettings;

    .line 79
    .local v1, "item":Lcom/ansca/corona/notifications/NotificationSettings;, "TT;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ansca/corona/notifications/NotificationSettings;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 83
    .end local v1    # "item":Lcom/ansca/corona/notifications/NotificationSettings;, "TT;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByIndex(I)Lcom/ansca/corona/notifications/NotificationSettings;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/notifications/NotificationSettings;

    goto :goto_0
.end method

.method public indexOf(Lcom/ansca/corona/notifications/NotificationSettings;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    .local p1, "item":Lcom/ansca/corona/notifications/NotificationSettings;, "TT;"
    if-nez p1, :cond_0

    .line 44
    const/4 v0, -0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    .local p1, "item":Lcom/ansca/corona/notifications/NotificationSettings;, "TT;"
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeById(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 113
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "wasRemoved":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->getById(I)Lcom/ansca/corona/notifications/NotificationSettings;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->remove(Lcom/ansca/corona/notifications/NotificationSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lcom/ansca/corona/notifications/NotificationSettingsCollection;, "Lcom/ansca/corona/notifications/NotificationSettingsCollection<TT;>;"
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationSettingsCollection;->fCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
