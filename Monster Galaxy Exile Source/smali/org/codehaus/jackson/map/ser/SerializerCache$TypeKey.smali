.class public final Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ser/SerializerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeKey"
.end annotation


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "typed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 227
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 228
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    .line 229
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Z)V
    .locals 1
    .param p1, "key"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "typed"    # Z

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 234
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 235
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->hash(Lorg/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    .line 236
    return-void
.end method

.method private static final hash(Ljava/lang/Class;Z)I
    .locals 2
    .param p1, "typed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 240
    .local v0, "hash":I
    if-eqz p1, :cond_0

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_0
    return v0
.end method

.method private static final hash(Lorg/codehaus/jackson/type/JavaType;Z)I
    .locals 2
    .param p0, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p1, "typed"    # Z

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 248
    .local v0, "hash":I
    if-eqz p1, :cond_0

    .line 249
    add-int/lit8 v0, v0, -0x1

    .line 251
    :cond_0
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    if-ne p1, p0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 295
    check-cast v0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    .line 296
    .local v0, "other":Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;
    iget-boolean v3, v0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    iget-boolean v4, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    if-ne v3, v4, :cond_3

    .line 297
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, v0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 300
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    iget-object v2, v0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 302
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    return v0
.end method

.method public resetTyped(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 256
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 257
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 258
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    .line 259
    return-void
.end method

.method public resetTyped(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v1, 0x1

    .line 269
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 271
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 272
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->hash(Lorg/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    .line 273
    return-void
.end method

.method public resetUntyped(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 263
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 264
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 265
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    .line 266
    return-void
.end method

.method public resetUntyped(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    const/4 v1, 0x0

    .line 276
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 278
    iput-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    .line 279
    invoke-static {p1, v1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->hash(Lorg/codehaus/jackson/type/JavaType;Z)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_hashCode:I

    .line 280
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_type:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
