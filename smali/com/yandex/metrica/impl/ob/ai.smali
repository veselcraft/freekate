.class public Lcom/yandex/metrica/impl/ob/ai;
.super Lcom/yandex/metrica/impl/ob/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/u;-><init>(Lcom/yandex/metrica/impl/ob/i;)V

    .line 25
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/utils/i$a;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {p2}, Lcom/yandex/metrica/impl/utils/i;->a(Lcom/yandex/metrica/impl/utils/i$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/g;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/i;->d(Lcom/yandex/metrica/impl/g;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ai;->b(Lcom/yandex/metrica/impl/g;)V

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method b(Lcom/yandex/metrica/impl/g;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->j()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v4

    .line 37
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/i;->g()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v5}, Lcom/yandex/metrica/impl/utils/i;->a(Ljava/lang/String;)Lcom/yandex/metrica/d;

    move-result-object v6

    .line 40
    invoke-virtual {v4, v6}, Lcom/yandex/metrica/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v4}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    .line 42
    invoke-virtual {p1, v5}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    .line 43
    sget-object v0, Lcom/yandex/metrica/impl/utils/i$a;->b:Lcom/yandex/metrica/impl/utils/i$a;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ai;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/utils/i$a;)V

    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/i;->a(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->c()V

    .line 58
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v4}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v6}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/utils/i$a;->a:Lcom/yandex/metrica/impl/utils/i$a;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ai;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/utils/i$a;)V

    goto :goto_1

    :cond_4
    move v2, v1

    .line 44
    goto :goto_2

    .line 46
    :cond_5
    invoke-virtual {v4}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v4}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/yandex/metrica/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    if-eqz v0, :cond_7

    .line 47
    sget-object v0, Lcom/yandex/metrica/impl/utils/i$a;->c:Lcom/yandex/metrica/impl/utils/i$a;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ai;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/utils/i$a;)V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 46
    goto :goto_3

    .line 49
    :cond_7
    sget-object v0, Lcom/yandex/metrica/impl/utils/i$a;->d:Lcom/yandex/metrica/impl/utils/i$a;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ai;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/utils/i$a;)V

    goto :goto_1
.end method
