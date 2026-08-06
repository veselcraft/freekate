.class Lcom/yandex/metrica/impl/ob/dp$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/dr$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/dr$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/dr$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dr$b;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dp$c;->a:Lcom/yandex/metrica/impl/ob/dr$b;

    .line 85
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dp$c;->b:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/dr$b;Ljava/lang/Object;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dp$c;-><init>(Lcom/yandex/metrica/impl/ob/dr$b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$c;->a:Lcom/yandex/metrica/impl/ob/dr$b;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dp$c;->a:Lcom/yandex/metrica/impl/ob/dr$b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dp$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/dr$b;->a(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method
