.class final Lcom/google/gson/DelegatingJsonElementVisitor;
.super Ljava/lang/Object;
.source "DelegatingJsonElementVisitor.java"

# interfaces
.implements Lcom/google/gson/JsonElementVisitor;


# instance fields
.field private final delegate:Lcom/google/gson/JsonElementVisitor;


# direct methods
.method protected constructor <init>(Lcom/google/gson/JsonElementVisitor;)V
    .locals 1
    .param p1, "delegate"    # Lcom/google/gson/JsonElementVisitor;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElementVisitor;

    iput-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    .line 54
    return-void
.end method


# virtual methods
.method public endArray(Lcom/google/gson/JsonArray;)V
    .locals 1
    .param p1, "array"    # Lcom/google/gson/JsonArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->endArray(Lcom/google/gson/JsonArray;)V

    .line 58
    return-void
.end method

.method public endObject(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "object"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->endObject(Lcom/google/gson/JsonObject;)V

    .line 62
    return-void
.end method

.method public startArray(Lcom/google/gson/JsonArray;)V
    .locals 1
    .param p1, "array"    # Lcom/google/gson/JsonArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->startArray(Lcom/google/gson/JsonArray;)V

    .line 66
    return-void
.end method

.method public startObject(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "object"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->startObject(Lcom/google/gson/JsonObject;)V

    .line 70
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonArray;
    .param p2, "member"    # Lcom/google/gson/JsonArray;
    .param p3, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V

    .line 80
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonArray;
    .param p2, "member"    # Lcom/google/gson/JsonObject;
    .param p3, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V

    .line 85
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonArray;
    .param p2, "member"    # Lcom/google/gson/JsonPrimitive;
    .param p3, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V

    .line 75
    return-void
.end method

.method public visitNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0}, Lcom/google/gson/JsonElementVisitor;->visitNull()V

    .line 113
    return-void
.end method

.method public visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonArray;
    .param p2, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2}, Lcom/google/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V

    .line 117
    return-void
.end method

.method public visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonObject;
    .param p2, "memberName"    # Ljava/lang/String;
    .param p3, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V

    .line 105
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonObject;
    .param p2, "memberName"    # Ljava/lang/String;
    .param p3, "member"    # Lcom/google/gson/JsonArray;
    .param p4, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V

    .line 95
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonObject;
    .param p2, "memberName"    # Ljava/lang/String;
    .param p3, "member"    # Lcom/google/gson/JsonObject;
    .param p4, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V

    .line 100
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/google/gson/JsonObject;
    .param p2, "memberName"    # Ljava/lang/String;
    .param p3, "member"    # Lcom/google/gson/JsonPrimitive;
    .param p4, "isFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/gson/JsonElementVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V

    .line 90
    return-void
.end method

.method public visitPrimitive(Lcom/google/gson/JsonPrimitive;)V
    .locals 1
    .param p1, "primitive"    # Lcom/google/gson/JsonPrimitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gson/DelegatingJsonElementVisitor;->delegate:Lcom/google/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/google/gson/JsonElementVisitor;->visitPrimitive(Lcom/google/gson/JsonPrimitive;)V

    .line 109
    return-void
.end method
