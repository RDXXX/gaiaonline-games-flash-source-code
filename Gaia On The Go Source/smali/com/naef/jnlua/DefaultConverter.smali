.class public Lcom/naef/jnlua/DefaultConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/DefaultConverter$18;,
        Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;,
        Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;
    }
.end annotation


# static fields
.field private static final BOOLEAN_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FUNCTION_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCE:Lcom/naef/jnlua/DefaultConverter;

.field private static final JAVA_OBJECT_CONVERTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final LUA_VALUE_CONVERTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/naef/jnlua/DefaultConverter$LuaValueConverter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final NUMBER_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_DISTANCE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v0, Lcom/naef/jnlua/DefaultConverter;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->INSTANCE:Lcom/naef/jnlua/DefaultConverter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Lcom/naef/jnlua/JavaFunction;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$1;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$1;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$2;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$2;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$3;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$3;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$4;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$4;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$5;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$5;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$6;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$6;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$7;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$7;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$8;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$8;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigInteger;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$9;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$9;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigDecimal;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$10;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$10;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$11;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$11;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$12;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$12;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$13;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$13;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigInteger;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/math/BigDecimal;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$14;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$14;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$15;

    invoke-direct {v0}, Lcom/naef/jnlua/DefaultConverter$15;-><init>()V

    sget-object v1, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/naef/jnlua/DefaultConverter;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->INSTANCE:Lcom/naef/jnlua/DefaultConverter;

    return-object v0
.end method


# virtual methods
.method public convertJavaObject(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->JAVA_OBJECT_CONVERTERS:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;->convert(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/naef/jnlua/JavaFunction;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/naef/jnlua/JavaFunction;

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaFunction(Lcom/naef/jnlua/JavaFunction;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/naef/jnlua/LuaValueProxy;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/naef/jnlua/LuaValueProxy;

    invoke-interface {p2}, Lcom/naef/jnlua/LuaValueProxy;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lua value proxy is from a different Lua state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p2}, Lcom/naef/jnlua/LuaValueProxy;->pushValue()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushJavaObjectRaw(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannot convert %s to %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-class v1, Lcom/naef/jnlua/LuaValueProxy;

    if-ne p3, v1, :cond_3

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    sget-object v1, Lcom/naef/jnlua/DefaultConverter$18;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_e

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->LUA_VALUE_CONVERTERS:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$LuaValueConverter;->convert(Lcom/naef/jnlua/LuaState;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-class v0, Ljava/util/Map;

    if-eq p3, v0, :cond_8

    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_9

    :cond_8
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object v1

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$16;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultConverter$16;-><init>(Lcom/naef/jnlua/DefaultConverter;Lcom/naef/jnlua/LuaValueProxy;)V

    goto :goto_0

    :cond_9
    const-class v0, Ljava/util/List;

    if-ne p3, v0, :cond_a

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->getProxy(I)Lcom/naef/jnlua/LuaValueProxy;

    move-result-object v1

    new-instance v0, Lcom/naef/jnlua/DefaultConverter$17;

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/DefaultConverter$17;-><init>(Lcom/naef/jnlua/DefaultConverter;Lcom/naef/jnlua/LuaValueProxy;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->length(I)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, p2, v2}, Lcom/naef/jnlua/LuaState;->rawGet(II)V

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v2, v4}, Lcom/naef/jnlua/DefaultConverter;->convertLuaValue(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->pop(I)V

    throw v0

    :pswitch_5
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->isJavaFunction(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/naef/jnlua/JavaFunction;

    if-eq p3, v0, :cond_b

    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_4

    :cond_b
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaFunction(I)Lcom/naef/jnlua/JavaFunction;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v0, v1, Lcom/naef/jnlua/TypedJavaObject;

    if-eqz v0, :cond_d

    move-object v0, v1

    check-cast v0, Lcom/naef/jnlua/TypedJavaObject;

    invoke-interface {v0}, Lcom/naef/jnlua/TypedJavaObject;->isStrong()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_c
    check-cast v1, Lcom/naef/jnlua/TypedJavaObject;

    invoke-interface {v1}, Lcom/naef/jnlua/TypedJavaObject;->getObject()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "cannot convert %s to %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTypeDistance(Lcom/naef/jnlua/LuaState;ILjava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/naef/jnlua/LuaState;",
            "I",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-class v3, Lcom/naef/jnlua/LuaValueProxy;

    if-ne p3, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/naef/jnlua/DefaultConverter$18;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v0}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_8

    const v0, 0x7ffffffe

    goto :goto_0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->BOOLEAN_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->NUMBER_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->STRING_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-class v0, Ljava/util/Map;

    if-eq p3, v0, :cond_4

    const-class v0, Ljava/util/List;

    if-eq p3, v0, :cond_4

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const-class v0, Ljava/lang/Object;

    if-ne p3, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->isJavaFunction(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/naef/jnlua/DefaultConverter;->FUNCTION_DISTANCE_MAP:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->toJavaObjectRaw(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/naef/jnlua/TypedJavaObject;

    if-eqz v3, :cond_7

    check-cast v0, Lcom/naef/jnlua/TypedJavaObject;

    invoke-interface {v0}, Lcom/naef/jnlua/TypedJavaObject;->isStrong()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-interface {v0}, Lcom/naef/jnlua/TypedJavaObject;->getType()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
