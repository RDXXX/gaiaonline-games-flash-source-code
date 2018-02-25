.class public Lcom/sessionm/json/JSONObject;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final jsonObject:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    .line 22
    return-void
.end method

.method public static create()Lcom/sessionm/json/JSONObject;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/sessionm/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/sessionm/json/JSONObject;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return-object v1

    .line 31
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sessionm/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/sessionm/json/JSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private toArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 78
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 79
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 80
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p2, v1, :cond_0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/sessionm/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/sessionm/json/JSONObject;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    .line 86
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_1
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sessionm/json/JSONObject;->toArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 58
    check-cast v0, Ljava/lang/Integer;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lcom/sessionm/json/JSONObject;
    .locals 3

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    :try_start_0
    new-instance v0, Lcom/sessionm/json/JSONObject;

    iget-object v2, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sessionm/json/JSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 51
    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public names()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 150
    const-class v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sessionm/json/JSONObject;->toArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    instance-of v0, p2, Lcom/sessionm/json/JSONObject;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    check-cast p2, Lcom/sessionm/json/JSONObject;

    invoke-virtual {p2}, Lcom/sessionm/json/JSONObject;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 146
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sessionm/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sessionm/json/JSONObject;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
