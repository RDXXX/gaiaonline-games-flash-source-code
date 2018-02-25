.class public Lorg/codehaus/jackson/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lorg/codehaus/jackson/PrettyPrinter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;,
        Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;,
        Lorg/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;
    }
.end annotation


# instance fields
.field protected _arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

.field protected _nesting:I

.field protected _objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

.field protected _spacesInObjectEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    .line 32
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 57
    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 160
    return-void
.end method

.method public beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 96
    return-void
.end method

.method public indentArraysWith(Lorg/codehaus/jackson/impl/Indenter;)V
    .locals 0
    .param p1, "i"    # Lorg/codehaus/jackson/impl/Indenter;

    .prologue
    .line 61
    if-nez p1, :cond_0

    new-instance p1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;

    .end local p1    # "i":Lorg/codehaus/jackson/impl/Indenter;
    invoke-direct {p1}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    .line 62
    return-void
.end method

.method public indentObjectsWith(Lorg/codehaus/jackson/impl/Indenter;)V
    .locals 0
    .param p1, "i"    # Lorg/codehaus/jackson/impl/Indenter;

    .prologue
    .line 66
    if-nez p1, :cond_0

    new-instance p1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;

    .end local p1    # "i":Lorg/codehaus/jackson/impl/Indenter;
    invoke-direct {p1}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    .line 67
    return-void
.end method

.method public spacesInObjectEntries(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    return-void
.end method

.method public writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 174
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 175
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 176
    return-void
.end method

.method public writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 184
    :cond_0
    if-lez p2, :cond_1

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 189
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 190
    return-void

    .line 187
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .param p2, "nrOfEntries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 139
    :cond_0
    if-lez p2, :cond_1

    .line 140
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 144
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 145
    return-void

    .line 142
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 129
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 131
    return-void
.end method

.method public writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 81
    return-void
.end method

.method public writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 153
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 154
    return-void
.end method

.method public writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "jg"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 87
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 90
    :cond_0
    return-void
.end method
