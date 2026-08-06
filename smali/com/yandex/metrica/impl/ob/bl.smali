.class public Lcom/yandex/metrica/impl/ob/bl;
.super Lcom/yandex/metrica/impl/ob/bm;
.source "SourceFile"


# instance fields
.field private final c:Lcom/yandex/metrica/impl/ob/bv;

.field private final d:Lcom/yandex/metrica/impl/ob/bv;

.field private final e:Lcom/yandex/metrica/impl/ob/bv;

.field private final f:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "init_event_pref_key"

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bl;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->c:Lcom/yandex/metrica/impl/ob/bv;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->d:Lcom/yandex/metrica/impl/ob/bv;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "first_event_pref_key"

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bl;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->e:Lcom/yandex/metrica/impl/ob/bv;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "fitst_event_description_key"

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bl;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->f:Lcom/yandex/metrica/impl/ob/bv;

    .line 38
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/bv;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1, p0}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    const-string v0, "init_event_pref_key"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->d:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->k()V

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->e:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DONE"

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->k()V

    .line 50
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->e:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->d:Lcom/yandex/metrica/impl/ob/bv;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bl;->a(Lcom/yandex/metrica/impl/ob/bv;)V

    .line 66
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "init_event_pref_key"

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bl;->a(Lcom/yandex/metrica/impl/ob/bv;)V

    .line 70
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/bl;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->k()V

    .line 86
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->f:Lcom/yandex/metrica/impl/ob/bv;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bl;->a(Lcom/yandex/metrica/impl/ob/bv;)V

    .line 94
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "_initpreferences"

    return-object v0
.end method

.method h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
