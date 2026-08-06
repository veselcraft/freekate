.class abstract Lcom/yandex/metrica/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/aw;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/aw;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yandex/metrica/impl/h;->a:Lcom/yandex/metrica/impl/aw;

    .line 18
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ay;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/h;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/h;->a:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/aw;)V

    .line 24
    :cond_0
    return-void
.end method

.method abstract a(Ljava/lang/Throwable;)Z
.end method
