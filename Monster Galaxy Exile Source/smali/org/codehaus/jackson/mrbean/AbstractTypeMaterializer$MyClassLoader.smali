.class Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;
.super Ljava/lang/ClassLoader;
.source "AbstractTypeMaterializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyClassLoader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 208
    return-void
.end method


# virtual methods
.method public loadAndResolve(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "byteCode"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 218
    .local p3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 219
    .local v2, "old":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    .end local v2    # "old":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 225
    .restart local v2    # "old":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p2

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    .local v1, "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/mrbean/AbstractTypeMaterializer$MyClassLoader;->resolveClass(Ljava/lang/Class;)V

    move-object v2, v1

    .line 231
    goto :goto_0

    .line 226
    .end local v1    # "impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/LinkageError;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
