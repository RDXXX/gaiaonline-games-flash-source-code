.class public Lcom/ansca/corona/CoronaData$Table;
.super Lcom/ansca/corona/CoronaData;
.source "CoronaData.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ansca/corona/CoronaData;",
        "Ljava/util/Map",
        "<",
        "Lcom/ansca/corona/CoronaData$Value;",
        "Lcom/ansca/corona/CoronaData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ansca/corona/CoronaData$Table;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ansca/corona/CoronaData$Value;",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 984
    new-instance v0, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ansca/corona/CoronaData$Table$ParcelableCreator;-><init>(Lcom/ansca/corona/CoronaData$1;)V

    sput-object v0, Lcom/ansca/corona/CoronaData$Table;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/ansca/corona/CoronaData;-><init>()V

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    .line 989
    return-void
.end method

.method public static from(Landroid/os/Bundle;)Lcom/ansca/corona/CoronaData$Table;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1269
    if-nez p0, :cond_1

    .line 1270
    const/4 v2, 0x0

    .line 1278
    :cond_0
    return-object v2

    .line 1274
    :cond_1
    new-instance v2, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 1275
    .local v2, "table":Lcom/ansca/corona/CoronaData$Table;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1276
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v3, v1}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0
.end method

.method public static from(Lorg/json/JSONObject;)Lcom/ansca/corona/CoronaData$Table;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1292
    if-nez p0, :cond_1

    .line 1293
    const/4 v2, 0x0

    .line 1305
    :cond_0
    return-object v2

    .line 1297
    :cond_1
    new-instance v2, Lcom/ansca/corona/CoronaData$Table;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaData$Table;-><init>()V

    .line 1298
    .local v2, "table":Lcom/ansca/corona/CoronaData$Table;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1299
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1300
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1302
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Lcom/ansca/corona/CoronaData$String;

    invoke-direct {v3, v1}, Lcom/ansca/corona/CoronaData$String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/ansca/corona/CoronaData;->from(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1016
    return-void
.end method

.method public clone()Lcom/ansca/corona/CoronaData$Table;
    .locals 6

    .prologue
    .line 997
    invoke-super {p0}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData$Table;

    .line 998
    .local v0, "clone":Lcom/ansca/corona/CoronaData$Table;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    .line 999
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1000
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1001
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v5}, Lcom/ansca/corona/CoronaData$Value;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaData$Value;

    .line 1002
    .local v3, "key":Lcom/ansca/corona/CoronaData$Value;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData;

    .line 1003
    .local v4, "value":Lcom/ansca/corona/CoronaData;
    if-eqz v4, :cond_1

    .line 1004
    invoke-virtual {v4}, Lcom/ansca/corona/CoronaData;->clone()Lcom/ansca/corona/CoronaData;

    move-result-object v4

    .line 1006
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    goto :goto_0

    .line 1009
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    .end local v3    # "key":Lcom/ansca/corona/CoronaData$Value;
    .end local v4    # "value":Lcom/ansca/corona/CoronaData;
    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/ansca/corona/CoronaData;
    .locals 1

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->clone()Lcom/ansca/corona/CoronaData$Table;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1025
    if-nez p1, :cond_0

    .line 1026
    const/4 v0, 0x0

    .line 1028
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/ansca/corona/CoronaData$Value;",
            "Lcom/ansca/corona/CoronaData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1061
    instance-of v0, p1, Lcom/ansca/corona/CoronaData$Table;

    if-nez v0, :cond_0

    .line 1062
    const/4 v0, 0x0

    .line 1064
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    check-cast p1, Lcom/ansca/corona/CoronaData$Table;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1076
    if-nez p1, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData;

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table;->get(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/ansca/corona/CoronaData$Value;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public pushTo(Lcom/naef/jnlua/LuaState;)Z
    .locals 6
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v5, 0x1

    .line 1180
    iget-object v4, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1181
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 1182
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->newTable()V

    .line 1196
    :cond_0
    return v5

    .line 1187
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 1188
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v3

    .line 1189
    .local v3, "luaTableStackIndex":I
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1190
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v4, p1}, Lcom/ansca/corona/CoronaData$Value;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    .line 1192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v4, p1}, Lcom/ansca/corona/CoronaData;->pushTo(Lcom/naef/jnlua/LuaState;)Z

    .line 1193
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->rawSet(I)V

    goto :goto_0
.end method

.method public put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;
    .locals 1
    .param p1, "key"    # Lcom/ansca/corona/CoronaData$Value;
    .param p2, "value"    # Lcom/ansca/corona/CoronaData;

    .prologue
    .line 1120
    if-nez p1, :cond_0

    .line 1121
    const/4 v0, 0x0

    .line 1123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData;

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 979
    check-cast p1, Lcom/ansca/corona/CoronaData$Value;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/ansca/corona/CoronaData;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ansca/corona/CoronaData$Table;->put(Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lcom/ansca/corona/CoronaData$Value;",
            "+",
            "Lcom/ansca/corona/CoronaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Lcom/ansca/corona/CoronaData$Value;+Lcom/ansca/corona/CoronaData;>;"
    if-eqz p1, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1146
    if-nez p1, :cond_0

    .line 1147
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaData;

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaData$Table;->remove(Ljava/lang/Object;)Lcom/ansca/corona/CoronaData;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/ansca/corona/CoronaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/ansca/corona/CoronaData$Table;->fHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "xmlWriter"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    const-string v2, ""

    const-string v3, "table"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1206
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1207
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1208
    const-string v2, ""

    const-string v3, "entry"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    const-string v2, ""

    const-string v3, "key"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaData$Value;

    invoke-virtual {v2, p1}, Lcom/ansca/corona/CoronaData$Value;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1214
    const-string v2, ""

    const-string v3, "key"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    const-string v2, ""

    const-string v3, "value"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ansca/corona/CoronaData;

    invoke-virtual {v2, p1}, Lcom/ansca/corona/CoronaData;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1219
    const-string v2, ""

    const-string v3, "value"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1221
    const-string v2, ""

    const-string v3, "entry"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1224
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    :cond_1
    const-string v2, ""

    const-string v3, "table"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1235
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaData$Table;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 1249
    .local v1, "hasValue":Z
    :goto_1
    if-eqz v1, :cond_2

    move v3, v4

    :goto_2
    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 1252
    if-eqz v1, :cond_0

    .line 1253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .end local v1    # "hasValue":Z
    :cond_1
    move v1, v5

    .line 1248
    goto :goto_1

    .restart local v1    # "hasValue":Z
    :cond_2
    move v3, v5

    .line 1249
    goto :goto_2

    .line 1256
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/ansca/corona/CoronaData$Value;Lcom/ansca/corona/CoronaData;>;"
    .end local v1    # "hasValue":Z
    :cond_3
    return-void
.end method
