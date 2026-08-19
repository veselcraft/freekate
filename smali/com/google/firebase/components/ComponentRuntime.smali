.class public Lcom/google/firebase/components/ComponentRuntime;
.super Lcom/google/firebase/components/AbstractComponentContainer;
.source "com.google.firebase:firebase-common@@17.1.0"


# static fields
.field private static final EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;


# instance fields
.field private final components:Ljava/util/Map;

.field private final eventBus:Lcom/google/firebase/components/EventBus;

.field private final lazyInstanceMap:Ljava/util/Map;

.field private final lazySetMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/google/firebase/components/ComponentRuntime$$Lambda$3;->lambdaFactory$()Lcom/google/firebase/inject/Provider;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/ComponentRuntime;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/Component;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Lcom/google/firebase/components/AbstractComponentContainer;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/google/firebase/components/EventBus;

    invoke-direct {v0, p1}, Lcom/google/firebase/components/EventBus;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->eventBus:Lcom/google/firebase/components/EventBus;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-class v1, Lcom/google/firebase/components/EventBus;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/google/firebase/events/Subscriber;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/firebase/events/Publisher;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/ComponentRegistrar;

    .line 56
    invoke-interface {v0}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 60
    invoke-static {p1}, Lcom/google/firebase/components/CycleDetector;->detect(Ljava/util/List;)V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/components/Component;

    .line 63
    new-instance p3, Lcom/google/firebase/components/Lazy;

    invoke-static {p0, p2}, Lcom/google/firebase/components/ComponentRuntime$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)Lcom/google/firebase/inject/Provider;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 68
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->processInstanceComponents()V

    .line 71
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->processSetComponents()V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/components/ComponentRuntime;Lcom/google/firebase/components/Component;)Ljava/lang/Object;
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/google/firebase/components/Component;->getFactory()Lcom/google/firebase/components/ComponentFactory;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/RestrictedComponentContainer;

    invoke-direct {v1, p1, p0}, Lcom/google/firebase/components/RestrictedComponentContainer;-><init>(Lcom/google/firebase/components/Component;Lcom/google/firebase/components/ComponentContainer;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/components/ComponentFactory;->create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$processSetComponents$1(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 117
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Lazy;

    .line 118
    invoke-virtual {v1}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private processInstanceComponents()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 77
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Lazy;

    .line 82
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 83
    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/components/ComponentRuntime;->validateDependencies()V

    return-void
.end method

.method private processSetComponents()V
    .locals 6

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Component;

    .line 96
    invoke-virtual {v3}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Lazy;

    .line 102
    invoke-virtual {v3}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 103
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 104
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 112
    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    new-instance v4, Lcom/google/firebase/components/Lazy;

    invoke-static {v2}, Lcom/google/firebase/components/ComponentRuntime$$Lambda$2;->lambdaFactory$(Ljava/util/Set;)Lcom/google/firebase/inject/Provider;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 112
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void
.end method

.method private validateDependencies()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Component;

    .line 164
    invoke-virtual {v1}, Lcom/google/firebase/components/Component;->getDependencies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/Dependency;

    .line 165
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Lcom/google/firebase/components/MissingDependencyException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v3}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unsatisfied dependency for component %s: %s"

    .line 167
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/components/MissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 1

    const-string v0, "Null interface requested."

    .line 128
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazyInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inject/Provider;

    return-object p1
.end method

.method public initializeEagerComponents(Z)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 152
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/Lazy;

    .line 154
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isAlwaysEager()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isEagerInDefaultApp()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 155
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/components/ComponentRuntime;->eventBus:Lcom/google/firebase/components/EventBus;

    invoke-virtual {p1}, Lcom/google/firebase/components/EventBus;->enablePublishingAndFlushPending()V

    return-void
.end method

.method public setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/firebase/components/ComponentRuntime;->lazySetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/components/Lazy;

    if-eqz p1, :cond_0

    return-object p1

    .line 139
    :cond_0
    sget-object p1, Lcom/google/firebase/components/ComponentRuntime;->EMPTY_PROVIDER:Lcom/google/firebase/inject/Provider;

    return-object p1
.end method
