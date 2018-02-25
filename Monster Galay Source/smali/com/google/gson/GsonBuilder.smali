.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# static fields
.field private static final COMPLEX_KEY_MAP_TYPE_ADAPTER:Lcom/google/gson/MapAsArrayTypeAdapter;

.field private static final exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

.field private static final exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

.field private static final innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;


# instance fields
.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private final deserializeExclusionStrategies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private final deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private escapeHtmlChars:Z

.field private excludeFieldsWithoutExposeAnnotation:Z

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

.field private generateNonExecutableJson:Z

.field private ignoreVersionsAfter:D

.field private final instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

.field private prettyPrinting:Z

.field private final serializeExclusionStrategies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private final serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private timeStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/gson/MapAsArrayTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/MapAsArrayTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->COMPLEX_KEY_MAP_TYPE_ADAPTER:Lcom/google/gson/MapAsArrayTypeAdapter;

    .line 69
    new-instance v0, Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/InnerClassExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    .line 72
    new-instance v0, Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    .line 75
    new-instance v0, Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-direct {v0}, Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;-><init>()V

    sput-object v0, Lcom/google/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    .line 109
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY:Lcom/google/gson/AnonymousAndLocalClassExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    sget-object v1, Lcom/google/gson/Gson;->DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY:Lcom/google/gson/SyntheticFieldExclusionStrategy;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 116
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 117
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 118
    iput-boolean v3, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 119
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY:Lcom/google/gson/ModifierBasedExclusionStrategy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 120
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 121
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 122
    sget-object v0, Lcom/google/gson/Gson;->DEFAULT_NAMING_POLICY:Lcom/google/gson/FieldNamingStrategy2;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 123
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 124
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 125
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 126
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 127
    iput v4, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 128
    iput v4, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 129
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 130
    iput-boolean v2, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 131
    return-void
.end method

.method private static addTypeAdaptersForDate(Ljava/lang/String;IILcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;)V
    .locals 4
    .param p0, "datePattern"    # Ljava/lang/String;
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "serializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    .local p4, "deserializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    const/4 v3, 0x2

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "dateTypeAdapter":Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 694
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0    # "dateTypeAdapter":Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p0}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 699
    .restart local v0    # "dateTypeAdapter":Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 700
    const-class v1, Ljava/util/Date;

    invoke-static {v1, p3, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 701
    const-class v1, Ljava/util/Date;

    invoke-static {v1, p4, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 702
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, p3, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 703
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, p4, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 704
    const-class v1, Ljava/sql/Date;

    invoke-static {v1, p3, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 705
    const-class v1, Ljava/sql/Date;

    invoke-static {v1, p4, v0}, Lcom/google/gson/GsonBuilder;->registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V

    .line 707
    :cond_1
    return-void

    .line 695
    :cond_2
    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    .line 696
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .end local v0    # "dateTypeAdapter":Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    invoke-direct {v0, p1, p2}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0    # "dateTypeAdapter":Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;
    goto :goto_0
.end method

.method private registerDeserializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 548
    .local p2, "deserializer":Lcom/google/gson/JsonDeserializer;, "Lcom/google/gson/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 549
    return-object p0
.end method

.method private registerDeserializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "deserializer":Lcom/google/gson/JsonDeserializer;, "Lcom/google/gson/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    new-instance v1, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 600
    return-object p0
.end method

.method private static registerIfAbsent(Ljava/lang/Class;Lcom/google/gson/ParameterizedTypeHandlerMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "adapters":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<TT;>;"
    .local p2, "adapter":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->hasSpecificHandlerFor(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 714
    :cond_0
    return-void
.end method

.method private registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator",
            "<+TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 518
    .local p2, "instanceCreator":Lcom/google/gson/InstanceCreator;, "Lcom/google/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 519
    return-object p0
.end method

.method private registerInstanceCreatorForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/InstanceCreator;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/InstanceCreator",
            "<+TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "instanceCreator":Lcom/google/gson/InstanceCreator;, "Lcom/google/gson/InstanceCreator<+TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 587
    return-object p0
.end method

.method private registerSerializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 533
    .local p2, "serializer":Lcom/google/gson/JsonSerializer;, "Lcom/google/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 534
    return-object p0
.end method

.method private registerSerializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;)",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializer":Lcom/google/gson/JsonSerializer;, "Lcom/google/gson/JsonSerializer<TT;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 593
    return-object p0
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "strategy"    # Lcom/google/gson/ExclusionStrategy;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "strategy"    # Lcom/google/gson/ExclusionStrategy;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    return-object p0
.end method

.method public create()Lcom/google/gson/Gson;
    .locals 15

    .prologue
    .line 635
    new-instance v12, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    invoke-direct {v12, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 637
    .local v12, "deserializationStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    new-instance v13, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    invoke-direct {v13, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 639
    .local v13, "serializationStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-boolean v1, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    if-nez v1, :cond_0

    .line 643
    sget-object v1, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v1, Lcom/google/gson/GsonBuilder;->innerClassExclusionStrategy:Lcom/google/gson/InnerClassExclusionStrategy;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    iget-wide v1, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v1, v1, v8

    if-eqz v1, :cond_1

    .line 647
    new-instance v14, Lcom/google/gson/VersionExclusionStrategy;

    iget-wide v1, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    invoke-direct {v14, v1, v2}, Lcom/google/gson/VersionExclusionStrategy;-><init>(D)V

    .line 649
    .local v14, "versionExclusionStrategy":Lcom/google/gson/VersionExclusionStrategy;
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    .end local v14    # "versionExclusionStrategy":Lcom/google/gson/VersionExclusionStrategy;
    :cond_1
    iget-boolean v1, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    if-eqz v1, :cond_2

    .line 653
    sget-object v1, Lcom/google/gson/GsonBuilder;->exposeAnnotationDeserializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v1, Lcom/google/gson/GsonBuilder;->exposeAnnotationSerializationExclusionStrategy:Lcom/google/gson/ExposeAnnotationSerializationExclusionStrategy;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_2
    sget-object v1, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_HIERARCHY_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v6

    .line 659
    .local v6, "customSerializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 660
    sget-object v1, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_HIERARCHY_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v7

    .line 662
    .local v7, "customDeserializers":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 663
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iget v3, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    invoke-static {v1, v2, v3, v6, v7}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 666
    iget-boolean v1, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    invoke-static {v1, v2}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 669
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 671
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v11

    .line 673
    .local v11, "customInstanceCreators":Lcom/google/gson/ParameterizedTypeHandlerMap;, "Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/InstanceCreator<*>;>;"
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 675
    invoke-virtual {v6}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 676
    invoke-virtual {v7}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 677
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 679
    new-instance v4, Lcom/google/gson/MappedObjectConstructor;

    invoke-direct {v4, v11}, Lcom/google/gson/MappedObjectConstructor;-><init>(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 681
    .local v4, "objConstructor":Lcom/google/gson/MappedObjectConstructor;
    new-instance v0, Lcom/google/gson/Gson;

    new-instance v1, Lcom/google/gson/DisjunctionExclusionStrategy;

    invoke-direct {v1, v12}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/google/gson/DisjunctionExclusionStrategy;

    invoke-direct {v2, v13}, Lcom/google/gson/DisjunctionExclusionStrategy;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    iget-boolean v5, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v8, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v9, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v10, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    invoke-direct/range {v0 .. v10}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/ExclusionStrategy;Lcom/google/gson/FieldNamingStrategy2;Lcom/google/gson/MappedObjectConstructor;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/ParameterizedTypeHandlerMap;ZZZ)V

    .line 686
    .local v0, "gson":Lcom/google/gson/Gson;
    return-object v0
.end method

.method public disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 410
    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeInnerClasses:Z

    .line 287
    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;
    .locals 2

    .prologue
    .line 275
    const-class v0, Ljava/util/Map;

    sget-object v1, Lcom/google/gson/GsonBuilder;->COMPLEX_KEY_MAP_TYPE_ADAPTER:Lcom/google/gson/MapAsArrayTypeAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 276
    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "modifiers"    # [I

    .prologue
    .line 157
    new-instance v0, Lcom/google/gson/ModifierBasedExclusionStrategy;

    invoke-direct {v0, p1}, Lcom/google/gson/ModifierBasedExclusionStrategy;-><init>([I)V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->modifierBasedExclusionStrategy:Lcom/google/gson/ModifierBasedExclusionStrategy;

    .line 158
    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation:Z

    .line 183
    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 172
    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "typeAdapter"    # Ljava/lang/Object;

    .prologue
    .line 491
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 493
    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 494
    check-cast v0, Lcom/google/gson/InstanceCreator;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/GsonBuilder;->registerInstanceCreator(Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator;)Lcom/google/gson/GsonBuilder;

    .line 496
    :cond_1
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 497
    check-cast v0, Lcom/google/gson/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/GsonBuilder;->registerSerializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;

    .line 499
    :cond_2
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 500
    check-cast p2, Lcom/google/gson/JsonDeserializer;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/google/gson/GsonBuilder;->registerDeserializer(Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;

    .line 502
    :cond_3
    return-object p0

    .line 491
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p2, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 572
    instance-of v0, p2, Lcom/google/gson/InstanceCreator;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 573
    check-cast v0, Lcom/google/gson/InstanceCreator;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/GsonBuilder;->registerInstanceCreatorForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/InstanceCreator;)Lcom/google/gson/GsonBuilder;

    .line 575
    :cond_1
    instance-of v0, p2, Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 576
    check-cast v0, Lcom/google/gson/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/google/gson/GsonBuilder;->registerSerializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonSerializer;)Lcom/google/gson/GsonBuilder;

    .line 578
    :cond_2
    instance-of v0, p2, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 579
    check-cast p2, Lcom/google/gson/JsonDeserializer;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/google/gson/GsonBuilder;->registerDeserializerForTypeHierarchy(Ljava/lang/Class;Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/GsonBuilder;

    .line 581
    :cond_3
    return-object p0

    .line 570
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeNulls()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 195
    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 625
    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 452
    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 472
    iput p2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 474
    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 432
    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 2
    .param p1, "strategies"    # [Lcom/google/gson/ExclusionStrategy;

    .prologue
    .line 351
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "strategyList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/ExclusionStrategy;>;"
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->serializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->deserializeExclusionStrategies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 354
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "namingConvention"    # Lcom/google/gson/FieldNamingPolicy;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/google/gson/FieldNamingPolicy;->getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy2;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy2;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "fieldNamingStrategy"    # Lcom/google/gson/FieldNamingStrategy2;

    .prologue
    .line 335
    new-instance v0, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;

    invoke-direct {v0, p1}, Lcom/google/gson/SerializedNameAnnotationInterceptingNamingPolicy;-><init>(Lcom/google/gson/FieldNamingStrategy2;)V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy2;

    .line 337
    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;
    .locals 1
    .param p1, "fieldNamingStrategy"    # Lcom/google/gson/FieldNamingStrategy;

    .prologue
    .line 324
    new-instance v0, Lcom/google/gson/FieldNamingStrategy2Adapter;

    invoke-direct {v0, p1}, Lcom/google/gson/FieldNamingStrategy2Adapter;-><init>(Lcom/google/gson/FieldNamingStrategy;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy2;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "serializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 300
    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 398
    return-object p0
.end method

.method public setVersion(D)Lcom/google/gson/GsonBuilder;
    .locals 0
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/google/gson/GsonBuilder;->ignoreVersionsAfter:D

    .line 142
    return-object p0
.end method
