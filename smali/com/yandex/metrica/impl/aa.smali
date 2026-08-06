.class Lcom/yandex/metrica/impl/aa;
.super Lcom/yandex/metrica/impl/c;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ac;


# instance fields
.field private final c:Lcom/yandex/metrica/impl/v;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ay;)V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p2}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/aw;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/aw;-><init>()V

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/yandex/metrica/impl/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/aw;)V

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/bb;

    const-string v1, "13"

    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aa;->c:Lcom/yandex/metrica/impl/v;

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    new-instance v1, Lcom/yandex/metrica/impl/ak;

    invoke-virtual {p2}, Lcom/yandex/metrica/e;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ak;-><init>(Lcom/yandex/metrica/PreloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/ak;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/aa;->a(Lcom/yandex/metrica/e;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/aa;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->d:Ljava/util/List;

    new-instance v1, Lcom/yandex/metrica/impl/a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/a;-><init>(Lcom/yandex/metrica/impl/aw;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->d:Ljava/util/List;

    new-instance v1, Lcom/yandex/metrica/impl/ae;

    iget-object v2, p0, Lcom/yandex/metrica/impl/aa;->c:Lcom/yandex/metrica/impl/v;

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ae;-><init>(Lcom/yandex/metrica/impl/aw;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/yandex/metrica/impl/c;->a()V

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->c()V

    .line 72
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 113
    const-string v0, "Activity"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/aa;->b(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "Application"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 100
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Enable activity auto tracking"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/yandex/metrica/impl/m;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/m;-><init>(Lcom/yandex/metrica/impl/aa;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Could not enable activity auto tracking. API level should be more than 14 (ICE_CREAM_SANDWICH)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/location/Location;)V

    .line 140
    return-void
.end method

.method a(Lcom/yandex/metrica/e;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/e;)V

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/aa;->d(Z)V

    .line 125
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/i;)V

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->c:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/v;->a(Lcom/yandex/metrica/impl/i;)V

    .line 66
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/cc;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->c:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/v;->b(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Invalid Error Environment (key,value) pair: (%s,%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/h;

    .line 180
    iget-object v2, p0, Lcom/yandex/metrica/impl/aa;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, p1, v2}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ay;)V

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->d(Z)V

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->b:Lcom/yandex/metrica/impl/ay;

    invoke-static {}, Lcom/yandex/metrica/impl/q;->a()Lcom/yandex/metrica/impl/g;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 170
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 118
    const-string v0, "Activity"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/aa;->c(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Invalid App Environment (key,value) pair: (%s,%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(Z)V

    .line 145
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    .line 130
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(ZLcom/yandex/metrica/impl/aw;)V

    .line 135
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/yandex/metrica/impl/c;->e()V

    .line 187
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/aa;->c:Lcom/yandex/metrica/impl/v;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->c(Lcom/yandex/metrica/impl/aw;)V

    .line 188
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yandex/metrica/impl/aa;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->r()Z

    move-result v0

    return v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Error received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Event received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    invoke-static {}, Lcom/yandex/metrica/impl/utils/e;->e()Lcom/yandex/metrica/impl/utils/e;

    move-result-object v0

    const-string v1, "Event received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/utils/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method
