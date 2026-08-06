.class abstract Lcom/yandex/metrica/impl/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Lcom/yandex/metrica/impl/g;

.field protected b:Lcom/yandex/metrica/impl/aw;

.field protected final c:Lcom/yandex/metrica/impl/t;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/t;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/as;->c:Lcom/yandex/metrica/impl/t;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/aw;)Lcom/yandex/metrica/impl/as;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/as;->b:Lcom/yandex/metrica/impl/aw;

    .line 29
    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/g;)Lcom/yandex/metrica/impl/as;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/as;->a:Lcom/yandex/metrica/impl/g;

    .line 24
    return-object p0
.end method
