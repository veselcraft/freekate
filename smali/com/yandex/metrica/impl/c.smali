.class public abstract Lcom/yandex/metrica/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/b;
.implements Lcom/yandex/metrica/impl/ad$a;


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/aw;

.field protected final b:Lcom/yandex/metrica/impl/ay;

.field private c:Lcom/yandex/metrica/impl/x;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/aw;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    .line 45
    iput-object p4, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/g;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 266
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-static {}, Lcom/yandex/metrica/impl/utils/b$a;->d()Lcom/yandex/metrica/impl/utils/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/utils/b$a;)V

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/aw;)V

    .line 54
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/i;)V

    .line 62
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/cc;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/aw;->b(Lcom/yandex/metrica/impl/ob/cc;)V

    .line 58
    return-void
.end method

.method a(Lcom/yandex/metrica/impl/x;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yandex/metrica/impl/c;->c:Lcom/yandex/metrica/impl/x;

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->h(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p1}, Lcom/yandex/metrica/impl/bl;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->b(Lcom/yandex/metrica/impl/aw;)V

    .line 104
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->h()V

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->c:Lcom/yandex/metrica/impl/x;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/x;->b()V

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    invoke-static {p1}, Lcom/yandex/metrica/impl/q;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->h()Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->m:Lcom/yandex/metrica/impl/q$a;

    invoke-static {v1}, Lcom/yandex/metrica/impl/q;->d(Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 124
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/aw;)V

    .line 99
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p1}, Lcom/yandex/metrica/impl/bl;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->i()V

    .line 145
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->c:Lcom/yandex/metrica/impl/x;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/x;->a()V

    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    invoke-static {p1}, Lcom/yandex/metrica/impl/q;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 149
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->g()V

    .line 151
    :cond_0
    return-void
.end method

.method c()Z
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/c;->a_()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 252
    :goto_0
    if-eqz v0, :cond_0

    .line 253
    sget-object v1, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/q$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/q;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v3, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v2, v1, v3}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)V

    .line 257
    :cond_0
    return v0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Lcom/yandex/metrica/impl/aw;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 198
    const-string v0, "Native Crash"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/aw;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ay;->c(Lcom/yandex/metrica/impl/aw;)V

    .line 279
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onPauseSession()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/c;->c(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onResumeSession()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/c;->b(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    const-string v0, "Message"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/q;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/g;)V

    .line 178
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/c;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "Event Name"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string v0, "JSON Value"

    invoke-static {p2, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/q;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/c;->a(Lcom/yandex/metrica/impl/g;)V

    .line 163
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
    .line 167
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Event Name"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const-string v0, "Attributes"

    invoke-static {p2, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    invoke-static {p1}, Lcom/yandex/metrica/impl/q;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/c;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/yandex/metrica/impl/ay;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    const-string v0, "Exception"

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->b:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/aw;)V

    goto :goto_0
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "sessionTimeOut"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/c;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(I)V

    .line 183
    return-void
.end method
