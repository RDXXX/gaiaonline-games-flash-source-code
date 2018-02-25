.class public Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
.super Lorg/codehaus/jackson/map/ser/FilterProvider;
.source "SimpleFilterProvider.java"


# instance fields
.field protected _defaultFilter:Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

.field protected final _filtersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/FilterProvider;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;>;"
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/FilterProvider;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;)Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object p0
.end method

.method public findFilter(Ljava/lang/Object;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 2
    .param p1, "filterId"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    .line 73
    .local v0, "f":Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    .end local v0    # "f":Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    :cond_0
    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    return-object v0
.end method

.method public setDefaultFilter(Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;)Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lorg/codehaus/jackson/map/ser/BeanPropertyFilter;

    .line 51
    return-object p0
.end method
