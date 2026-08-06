.class public abstract Lcom/yandex/metrica/impl/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/af$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/af$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/af;->a()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Landroid/util/SparseArray;

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yandex/metrica/impl/ob/bq;)I
.end method

.method abstract a()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/af$a;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 35
    new-instance v2, Lcom/yandex/metrica/impl/ob/bq;

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/ob/bq;)I

    move-result v0

    .line 37
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v3

    .line 39
    if-ge v0, v3, :cond_2

    move v1, v0

    .line 41
    :goto_0
    if-gt v1, v3, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/af;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/af$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/af$a;->a(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/af;->a(Lcom/yandex/metrica/impl/ob/bq;I)V

    .line 43
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/bq;->k()V

    .line 45
    :cond_2
    return-void
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/ob/bq;I)V
.end method
