.class Lcom/inmobi/ads/ab;
.super Ljava/lang/Object;
.source "NativeStrandImpressionTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Lcom/inmobi/ads/n$a;

.field private static final e:Lcom/inmobi/ads/ap$a;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/inmobi/ads/ab$1;

    invoke-direct {v0}, Lcom/inmobi/ads/ab$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ab;->d:Lcom/inmobi/ads/n$a;

    .line 40
    new-instance v0, Lcom/inmobi/ads/ab$2;

    invoke-direct {v0}, Lcom/inmobi/ads/ab$2;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ab;->e:Lcom/inmobi/ads/ap$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/inmobi/ads/b$f;)Lcom/inmobi/ads/n;
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n;

    .line 99
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/inmobi/ads/n;

    new-instance v1, Lcom/inmobi/ads/m;

    sget-object v2, Lcom/inmobi/ads/ab;->e:Lcom/inmobi/ads/ap$a;

    invoke-direct {v1, v2, p1}, Lcom/inmobi/ads/m;-><init>(Lcom/inmobi/ads/ap$a;Landroid/app/Activity;)V

    sget-object v2, Lcom/inmobi/ads/ab;->d:Lcom/inmobi/ads/n$a;

    invoke-direct {v0, p2, v1, v2}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/b$f;Lcom/inmobi/ads/ap;Lcom/inmobi/ads/n$a;)V

    .line 103
    iget-object v1, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-boolean v1, p0, Lcom/inmobi/ads/ab;->c:Z

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/ab;->c:Z

    .line 109
    :cond_0
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/inmobi/ads/n;->e()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->c:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ab;->c:Z

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Lcom/inmobi/ads/b$f;Landroid/view/View;Lcom/inmobi/ads/q;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ab;->a(Landroid/app/Activity;Lcom/inmobi/ads/b$f;)Lcom/inmobi/ads/n;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p3, p4, p2}, Lcom/inmobi/ads/n;->a(Landroid/view/View;Ljava/lang/Object;Lcom/inmobi/ads/b$f;)V

    .line 82
    return-void
.end method

.method a(Landroid/app/Activity;Lcom/inmobi/ads/q;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/n;->a(Ljava/lang/Object;)Landroid/view/View;

    .line 88
    invoke-virtual {v0}, Lcom/inmobi/ads/n;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    const-string v2, "Impression tracker is free, removing it"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ab;->a(Landroid/app/Activity;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    const-string v2, "Activity destroyed, removing impression tracker"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ab;->a(Landroid/app/Activity;)V

    .line 155
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/inmobi/ads/n;->a()V

    .line 143
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/inmobi/ads/n;->b()V

    .line 135
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
