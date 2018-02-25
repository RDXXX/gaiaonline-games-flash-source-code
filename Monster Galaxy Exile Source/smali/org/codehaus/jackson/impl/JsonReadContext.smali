.class public final Lorg/codehaus/jackson/impl/JsonReadContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field protected _child:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lorg/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1
    .param p1, "parent"    # Lorg/codehaus/jackson/impl/JsonReadContext;
    .param p2, "type"    # I
    .param p3, "lineNr"    # I
    .param p4, "colNr"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonStreamContext;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 45
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 46
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 47
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 48
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 50
    return-void
.end method

.method public static createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p0, "lineNr"    # I
    .param p1, "colNr"    # I

    .prologue
    .line 65
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method


# virtual methods
.method public final createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 71
    .local v0, "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    .end local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    invoke-direct {v0, p0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    .restart local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    move-object v1, v0

    .line 76
    .end local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    .local v1, "ctxt":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 75
    .end local v1    # "ctxt":Ljava/lang/Object;
    .restart local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 76
    .restart local v1    # "ctxt":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x2

    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 82
    .local v0, "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    .end local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    invoke-direct {v0, p0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    .restart local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    move-object v1, v0

    .line 87
    .end local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    .local v1, "ctxt":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 86
    .end local v1    # "ctxt":Ljava/lang/Object;
    .restart local v0    # "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 87
    .restart local v1    # "ctxt":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final expectComma()Z
    .locals 2

    .prologue
    .line 134
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 135
    .local v0, "ix":I
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
    .locals 6
    .param p1, "srcRef"    # Ljava/lang/Object;

    .prologue
    .line 117
    const-wide/16 v2, -0x1

    .line 119
    .local v2, "totalChars":J
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final reset(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lineNr"    # I
    .param p3, "colNr"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 56
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 57
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x22

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
