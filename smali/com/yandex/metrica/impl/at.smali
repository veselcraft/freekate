.class public Lcom/yandex/metrica/impl/at;
.super Lcom/yandex/metrica/impl/as;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/at$a;
    }
.end annotation


# instance fields
.field private d:Lcom/yandex/metrica/impl/at$a;

.field private e:Lcom/yandex/metrica/impl/at$a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/t;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/as;-><init>(Lcom/yandex/metrica/impl/t;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/as;->a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/at$a;)Lcom/yandex/metrica/impl/at;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->d:Lcom/yandex/metrica/impl/at$a;

    .line 31
    return-object p0
.end method

.method public b(Lcom/yandex/metrica/impl/at$a;)Lcom/yandex/metrica/impl/at;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/at;->e:Lcom/yandex/metrica/impl/at$a;

    .line 36
    return-object p0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/at;->a:Lcom/yandex/metrica/impl/g;

    .line 41
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->d:Lcom/yandex/metrica/impl/at$a;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->d:Lcom/yandex/metrica/impl/at$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->b:Lcom/yandex/metrica/impl/aw;

    invoke-interface {v1, v0, v2}, Lcom/yandex/metrica/impl/at$a;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->e:Lcom/yandex/metrica/impl/at$a;

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/at;->e:Lcom/yandex/metrica/impl/at$a;

    iget-object v2, p0, Lcom/yandex/metrica/impl/at;->b:Lcom/yandex/metrica/impl/aw;

    invoke-interface {v1, v0, v2}, Lcom/yandex/metrica/impl/at$a;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/g;

    .line 47
    :cond_1
    return-void
.end method
