.class public final Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
.super Ljava/lang/Object;
.source "JaxbAnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PropertyDescriptors"
.end annotation


# instance fields
.field private _byMethodName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private _byPropertyName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final _forClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "properties":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput-object p1, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_forClass:Ljava/lang/Class;

    .line 1228
    iput-object p2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_properties:Ljava/util/List;

    .line 1229
    return-void
.end method

.method private static _processReadMethod(Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyDescriptor;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .prologue
    .line 1329
    .local p0, "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    .local p3, "pds":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    if-nez p0, :cond_1

    .line 1330
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1342
    .restart local p0    # "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    :cond_0
    new-instance v0, Ljava/beans/PropertyDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1343
    .local v0, "pd":Ljava/beans/PropertyDescriptor;
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    :goto_0
    return-object p0

    .line 1332
    .end local v0    # "pd":Ljava/beans/PropertyDescriptor;
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    .line 1333
    .restart local v0    # "pd":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0, p1}, Ljava/beans/PropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V

    .line 1335
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1336
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static _processWriteMethod(Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyDescriptor;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    .local p3, "pds":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    if-nez p0, :cond_1

    .line 1352
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1364
    .restart local p0    # "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    :cond_0
    new-instance v1, Ljava/beans/PropertyDescriptor;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p1}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    :goto_0
    return-object p0

    .line 1354
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    .line 1355
    .local v0, "pd":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0, p1}, Ljava/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V

    .line 1357
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1358
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static find(Ljava/lang/Class;)Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .prologue
    .local p0, "forClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    .line 1268
    invoke-static {p0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    .line 1269
    .local v1, "beanInfo":Ljava/beans/BeanInfo;
    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v8

    .line 1271
    .local v8, "pds":[Ljava/beans/PropertyDescriptor;
    array-length v14, v8

    if-nez v14, :cond_1

    .line 1272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1322
    .local v2, "descriptors":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    :cond_0
    new-instance v13, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;

    invoke-direct {v13, p0, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v13

    .line 1274
    .end local v2    # "descriptors":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .restart local v2    # "descriptors":Ljava/util/List;, "Ljava/util/List<Ljava/beans/PropertyDescriptor;>;"
    const/4 v6, 0x0

    .line 1277
    .local v6, "partials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyDescriptor;>;"
    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .local v0, "arr$":[Ljava/beans/PropertyDescriptor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 1278
    .local v7, "pd":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1280
    .local v9, "read":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_2

    const-class v14, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {v9, v14}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1281
    const/4 v9, 0x0

    .line 1283
    :cond_2
    if-nez v9, :cond_4

    move-object v10, v13

    .line 1284
    .local v10, "readName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1285
    .local v11, "write":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_3

    const-class v14, Ljavax/xml/bind/annotation/XmlTransient;

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 1286
    const/4 v11, 0x0

    .line 1289
    :cond_3
    if-nez v9, :cond_5

    if-nez v11, :cond_5

    .line 1277
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1283
    .end local v10    # "readName":Ljava/lang/String;
    .end local v11    # "write":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v9, v14, v13}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1292
    .restart local v10    # "readName":Ljava/lang/String;
    .restart local v11    # "write":Ljava/lang/reflect/Method;
    :cond_5
    if-nez v11, :cond_7

    move-object v12, v13

    .line 1293
    .local v12, "writeName":Ljava/lang/String;
    :goto_3
    if-nez v11, :cond_8

    .line 1294
    if-nez v10, :cond_6

    .line 1295
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1297
    :cond_6
    invoke-static {v6, v9, v10, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_processReadMethod(Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    .line 1292
    .end local v12    # "writeName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v11, v14, v13}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector;->findJaxbPropertyName(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 1298
    .restart local v12    # "writeName":Ljava/lang/String;
    :cond_8
    if-nez v9, :cond_a

    .line 1299
    if-nez v12, :cond_9

    .line 1300
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1302
    :cond_9
    invoke-static {v6, v11, v12, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_processWriteMethod(Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    .line 1305
    :cond_a
    if-eqz v10, :cond_b

    if-eqz v12, :cond_b

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 1306
    invoke-static {v6, v9, v10, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_processReadMethod(Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    .line 1307
    invoke-static {v6, v11, v12, v2}, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_processWriteMethod(Ljava/util/Map;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    .line 1310
    :cond_b
    if-eqz v10, :cond_c

    .line 1311
    move-object v5, v10

    .line 1317
    .local v5, "name":Ljava/lang/String;
    :goto_4
    new-instance v14, Ljava/beans/PropertyDescriptor;

    invoke-direct {v14, v5, v9, v11}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1312
    .end local v5    # "name":Ljava/lang/String;
    :cond_c
    if-eqz v12, :cond_d

    .line 1313
    move-object v5, v12

    .restart local v5    # "name":Ljava/lang/String;
    goto :goto_4

    .line 1315
    .end local v5    # "name":Ljava/lang/String;
    :cond_d
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "name":Ljava/lang/String;
    goto :goto_4
.end method


# virtual methods
.method public findByMethodName(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1246
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byMethodName:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 1247
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byMethodName:Ljava/util/Map;

    .line 1248
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_properties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    .line 1249
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1250
    .local v1, "getter":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 1251
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byMethodName:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    :cond_1
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1254
    .local v3, "setter":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 1255
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byMethodName:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1259
    .end local v0    # "desc":Ljava/beans/PropertyDescriptor;
    .end local v1    # "getter":Ljava/lang/reflect/Method;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "setter":Ljava/lang/reflect/Method;
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byMethodName:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyDescriptor;

    return-object v4
.end method

.method public findByPropertyName(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1235
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byPropertyName:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 1236
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byPropertyName:Ljava/util/Map;

    .line 1237
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    .line 1238
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byPropertyName:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1241
    .end local v0    # "desc":Ljava/beans/PropertyDescriptor;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_byPropertyName:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyDescriptor;

    return-object v2
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/codehaus/jackson/xc/JaxbAnnotationIntrospector$PropertyDescriptors;->_forClass:Ljava/lang/Class;

    return-object v0
.end method
