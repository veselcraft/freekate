.class Lcom/yandex/metrica/impl/ax$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yandex/metrica/impl/ax;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/yandex/metrica/impl/ax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ax;-><init>(B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ax$a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Landroid/content/Context;)Landroid/content/Context;

    .line 87
    return-object p0
.end method

.method a(Landroid/os/Handler;)Lcom/yandex/metrica/impl/ax$a;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Landroid/os/Handler;)Landroid/os/Handler;

    .line 102
    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ax$a;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ay;)Lcom/yandex/metrica/impl/ay;

    .line 92
    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ax$a;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/i;

    .line 97
    return-object p0
.end method

.method a(Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ax$a;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Lcom/yandex/metrica/impl/ob/cc;)Lcom/yandex/metrica/impl/ob/cc;

    .line 107
    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/yandex/metrica/impl/ax$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/metrica/impl/ad$a;",
            ">;)",
            "Lcom/yandex/metrica/impl/ax$a;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ax;->a(Lcom/yandex/metrica/impl/ax;Ljava/util/List;)Ljava/util/List;

    .line 112
    return-object p0
.end method

.method a()Lcom/yandex/metrica/impl/ax;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/ax$a;->a:Lcom/yandex/metrica/impl/ax;

    return-object v0
.end method
