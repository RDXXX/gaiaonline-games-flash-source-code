.class Lorg/codehaus/jackson/map/deser/StdDeserializers;
.super Ljava/lang/Object;
.source "StdDeserializers.java"


# instance fields
.field final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    .line 19
    new-instance v3, Lorg/codehaus/jackson/map/deser/UntypedObjectDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/UntypedObjectDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 22
    new-instance v2, Lorg/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;-><init>()V

    .line 23
    .local v2, "strDeser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;Ljava/lang/Class;)V

    .line 24
    const-class v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;Ljava/lang/Class;)V

    .line 25
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 28
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$BooleanDeserializer;

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 29
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$ByteDeserializer;

    const-class v4, Ljava/lang/Byte;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 30
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$ShortDeserializer;

    const-class v4, Ljava/lang/Short;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 31
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;

    const-class v4, Ljava/lang/Character;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 32
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$IntegerDeserializer;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 33
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$LongDeserializer;

    const-class v4, Ljava/lang/Long;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 34
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$FloatDeserializer;

    const-class v4, Ljava/lang/Float;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 35
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$DoubleDeserializer;

    const-class v4, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 40
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$BooleanDeserializer;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 41
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$ByteDeserializer;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 42
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$ShortDeserializer;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 43
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 44
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$IntegerDeserializer;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 45
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$LongDeserializer;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 46
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$FloatDeserializer;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 47
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$DoubleDeserializer;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/map/deser/StdDeserializer$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 50
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$NumberDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$NumberDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 51
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigDecimalDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigDecimalDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 52
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigIntegerDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$BigIntegerDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 54
    new-instance v3, Lorg/codehaus/jackson/map/deser/DateDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/DateDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 55
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$SqlDateDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$SqlDateDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 56
    new-instance v3, Lorg/codehaus/jackson/map/deser/TimestampDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/TimestampDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 57
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 61
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;

    const-class v4, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    const-class v4, Ljava/util/GregorianCalendar;

    invoke-direct {p0, v3, v4}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;Ljava/lang/Class;)V

    .line 65
    invoke-static {}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;->all()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;

    .line 66
    .local v0, "deser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    goto :goto_0

    .line 72
    .end local v0    # "deser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    :cond_0
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$StackTraceElementDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$StackTraceElementDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 75
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$TokenBufferDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$TokenBufferDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 77
    new-instance v3, Lorg/codehaus/jackson/map/deser/StdDeserializer$AtomicBooleanDeserializer;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/deser/StdDeserializer$AtomicBooleanDeserializer;-><init>()V

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V

    .line 78
    return-void
.end method

.method private add(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/StdDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "stdDeser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializers;->add(Lorg/codehaus/jackson/map/deser/StdDeserializer;Ljava/lang/Class;)V

    .line 91
    return-void
.end method

.method private add(Lorg/codehaus/jackson/map/deser/StdDeserializer;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/StdDeserializer",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "stdDeser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    .local p2, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    .line 99
    .local v0, "deser":Lorg/codehaus/jackson/map/JsonDeserializer;, "Lorg/codehaus/jackson/map/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/codehaus/jackson/map/deser/StdDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/StdDeserializers;-><init>()V

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    return-object v0
.end method
