.class public Lorg/codehaus/jackson/map/module/SimpleModule;
.super Lorg/codehaus/jackson/map/Module;
.source "SimpleModule.java"


# instance fields
.field protected _abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

.field protected _deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

.field protected _keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

.field protected _keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

.field protected final _name:Ljava/lang/String;

.field protected _serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

.field protected final _version:Lorg/codehaus/jackson/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lorg/codehaus/jackson/Version;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lorg/codehaus/jackson/map/Module;-><init>()V

    .line 18
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 19
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 21
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 22
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 29
    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 39
    iput-object p1, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_version:Lorg/codehaus/jackson/Version;

    .line 41
    return-void
.end method


# virtual methods
.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "superType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "subType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;->addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 107
    return-object p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<+TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<+TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleDeserializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 82
    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .param p2, "deser"    # Lorg/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ")",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 91
    return-object p0
.end method

.method public addKeySerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 73
    return-object p0
.end method

.method public addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<TT;>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 64
    return-object p0
.end method

.method public addSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "ser":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 55
    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V
    .locals 1
    .param p1, "context"    # Lorg/codehaus/jackson/map/Module$SetupContext;

    .prologue
    .line 124
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_serializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addSerializers(Lorg/codehaus/jackson/map/Serializers;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lorg/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addDeserializers(Lorg/codehaus/jackson/map/Deserializers;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lorg/codehaus/jackson/map/module/SimpleSerializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addKeySerializers(Lorg/codehaus/jackson/map/Serializers;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lorg/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lorg/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 139
    :cond_4
    return-void
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/codehaus/jackson/map/module/SimpleModule;->_version:Lorg/codehaus/jackson/Version;

    return-object v0
.end method
