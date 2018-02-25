.class final Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/google/gson/InstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultConstructorCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/InstanceCreator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/gson/DefaultConstructorAllocator;

.field private final defaultInstance:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V
    .locals 0
    .param p2, "allocator"    # Lcom/google/gson/DefaultConstructorAllocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/google/gson/DefaultConstructorAllocator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p0, "this":Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;, "Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator<TT;>;"
    .local p1, "defaultInstance":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p1, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->defaultInstance:Ljava/lang/Class;

    .line 1042
    iput-object p2, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->allocator:Lcom/google/gson/DefaultConstructorAllocator;

    .line 1043
    return-void
.end method


# virtual methods
.method public createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1046
    .local p0, "this":Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;, "Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator<TT;>;"
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 1048
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->allocator:Lcom/google/gson/DefaultConstructorAllocator;

    invoke-virtual {v3, v1}, Lcom/google/gson/DefaultConstructorAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 1049
    .local v2, "specificInstance":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->allocator:Lcom/google/gson/DefaultConstructorAllocator;

    iget-object v4, p0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;->defaultInstance:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/google/gson/DefaultConstructorAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "specificInstance":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/google/gson/JsonIOException;

    invoke-direct {v3, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    .local p0, "this":Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;, "Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator<TT;>;"
    const-class v0, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
