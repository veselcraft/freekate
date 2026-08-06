.class public Lcom/yandex/metrica/impl/ob/bu;
.super Lcom/yandex/metrica/impl/ob/bm;
.source "SourceFile"


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/bv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/bm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bu;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bm;->k()V

    .line 46
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/bv;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bv;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "_serviceproviderspreferences"

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/bm;->i()V

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/bv;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bv;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bu;->c:Lcom/yandex/metrica/impl/ob/bv;

    .line 37
    return-void
.end method
