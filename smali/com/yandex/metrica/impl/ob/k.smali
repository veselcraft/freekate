.class public abstract Lcom/yandex/metrica/impl/ob/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/p",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/p",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/k;->a:Lcom/yandex/metrica/impl/ob/p;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/k;->b(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/ob/m;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/k;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/m;)Z

    move-result v0

    return v0
.end method

.method protected abstract a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/ob/m;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/g;",
            "Lcom/yandex/metrica/impl/ob/m",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method b(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/ob/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/g;",
            ")",
            "Lcom/yandex/metrica/impl/ob/m",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/k;->a:Lcom/yandex/metrica/impl/ob/p;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/p;->a(I)Lcom/yandex/metrica/impl/ob/m;

    move-result-object v0

    return-object v0
.end method
