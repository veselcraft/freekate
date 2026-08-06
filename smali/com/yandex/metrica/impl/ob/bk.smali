.class public Lcom/yandex/metrica/impl/ob/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/bl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/yandex/metrica/impl/ob/bk$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/bk$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/bk;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/bl;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk;->g()V

    .line 30
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk;->h()V

    .line 32
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bk;->b(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk;->g()V

    .line 49
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk;->d()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/bl;->d(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bk;->e()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bk;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/ob/bk;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->h()Ljava/util/Map;

    move-result-object v1

    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ob/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 61
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method f()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->a()V

    .line 82
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bk;->b:Lcom/yandex/metrica/impl/ob/bl;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bl;->c()V

    .line 90
    return-void
.end method
