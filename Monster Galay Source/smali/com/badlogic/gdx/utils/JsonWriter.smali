.class public Lcom/badlogic/gdx/utils/JsonWriter;
.super Ljava/io/Writer;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;
    }
.end annotation


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    .line 33
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current item must be an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 65
    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    :goto_1
    return-object p0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public array()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current item must be an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 56
    return-object p0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public array(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current item must be an object."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 98
    return-object p0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter;->pop()Lcom/badlogic/gdx/utils/JsonWriter;

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 138
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 132
    return-void
.end method

.method public object()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current item must be an array."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 44
    return-object p0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public object(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current item must be an object."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;-><init>(Lcom/badlogic/gdx/utils/JsonWriter;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 85
    return-object p0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pop()Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->close()V

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    .line 123
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/badlogic/gdx/utils/JsonWriter;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->array:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Current item must be an object."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->current:Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/JsonWriter$JsonObject;->needsComma:Z

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    if-eqz p2, :cond_2

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    :goto_1
    return-object p0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\":\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 128
    return-void
.end method
