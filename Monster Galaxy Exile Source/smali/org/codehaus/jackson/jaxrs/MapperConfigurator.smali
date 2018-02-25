.class public Lorg/codehaus/jackson/jaxrs/MapperConfigurator;
.super Ljava/lang/Object;
.source "MapperConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/jaxrs/MapperConfigurator$1;
    }
.end annotation


# instance fields
.field protected _defaultAnnotationsToUse:[Lorg/codehaus/jackson/jaxrs/Annotations;

.field protected _defaultMapper:Lorg/codehaus/jackson/map/ObjectMapper;

.field protected _jaxbIntrospectorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation
.end field

.field protected _mapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V
    .locals 0
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "defAnnotations"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 54
    iput-object p2, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultAnnotationsToUse:[Lorg/codehaus/jackson/jaxrs/Annotations;

    .line 55
    return-void
.end method


# virtual methods
.method protected _resolveIntrospector(Lorg/codehaus/jackson/jaxrs/Annotations;)Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 4
    .param p1, "ann"    # Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 162
    sget-object v1, Lorg/codehaus/jackson/jaxrs/MapperConfigurator$1;->$SwitchMap$org$codehaus$jackson$jaxrs$Annotations:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/jaxrs/Annotations;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 164
    :pswitch_0
    new-instance v1, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;

    invoke-direct {v1}, Lorg/codehaus/jackson/map/introspect/JacksonAnnotationIntrospector;-><init>()V

    .line 173
    :goto_0
    return-object v1

    .line 170
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_jaxbIntrospectorClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 171
    const-class v1, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;

    iput-object v1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_jaxbIntrospectorClass:Ljava/lang/Class;

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_jaxbIntrospectorClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate JaxbAnnotationIntrospector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected _resolveIntrospectors([Lorg/codehaus/jackson/jaxrs/Annotations;)Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .locals 10
    .param p1, "annotationsToUse"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v6, "intr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codehaus/jackson/map/AnnotationIntrospector;>;"
    move-object v1, p1

    .local v1, "arr$":[Lorg/codehaus/jackson/jaxrs/Annotations;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v0, v1, v5

    .line 145
    .local v0, "a":Lorg/codehaus/jackson/jaxrs/Annotations;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_resolveIntrospector(Lorg/codehaus/jackson/jaxrs/Annotations;)Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "a":Lorg/codehaus/jackson/jaxrs/Annotations;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 150
    .local v2, "count":I
    if-nez v2, :cond_3

    .line 151
    invoke-static {}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->nopInstance()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 157
    :cond_2
    return-object v3

    .line 153
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/AnnotationIntrospector;

    .line 154
    .local v3, "curr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    const/4 v4, 0x1

    .local v4, "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "len":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 155
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-static {v3, v9}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->pair(Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v3

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected _setAnnotations(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V
    .locals 2
    .param p1, "mapper"    # Lorg/codehaus/jackson/map/ObjectMapper;
    .param p2, "annotationsToUse"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 130
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 131
    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->nopInstance()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 135
    .local v0, "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->setAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    .line 136
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->setAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    .line 137
    return-void

    .line 133
    .end local v0    # "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    :cond_1
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_resolveIntrospectors([Lorg/codehaus/jackson/jaxrs/Annotations;)Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .restart local v0    # "intr":Lorg/codehaus/jackson/map/AnnotationIntrospector;
    goto :goto_0
.end method

.method public declared-synchronized configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)V
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->mapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->mapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->mapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->mapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfiguredMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultAnnotationsToUse:[Lorg/codehaus/jackson/jaxrs/Annotations;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_setAnnotations(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultMapper:Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected mapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 120
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_defaultAnnotationsToUse:[Lorg/codehaus/jackson/jaxrs/Annotations;

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_setAnnotations(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    return-object v0
.end method

.method public declared-synchronized setAnnotationsToUse([Lorg/codehaus/jackson/jaxrs/Annotations;)V
    .locals 1
    .param p1, "annotationsToUse"    # [Lorg/codehaus/jackson/jaxrs/Annotations;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->mapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_setAnnotations(Lorg/codehaus/jackson/map/ObjectMapper;[Lorg/codehaus/jackson/jaxrs/Annotations;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 1
    .param p1, "m"    # Lorg/codehaus/jackson/map/ObjectMapper;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/codehaus/jackson/jaxrs/MapperConfigurator;->_mapper:Lorg/codehaus/jackson/map/ObjectMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
