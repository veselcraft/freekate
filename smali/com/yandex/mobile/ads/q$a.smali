.class Lcom/yandex/mobile/ads/q$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/q$d;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/yandex/mobile/ads/q$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/q$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/yandex/mobile/ads/q$a;->a:Ljava/util/Collection;

    .line 311
    iput-object p2, p0, Lcom/yandex/mobile/ads/q$a;->b:Lcom/yandex/mobile/ads/q$d;

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yandex/mobile/ads/q$a;->a:Ljava/util/Collection;

    invoke-static {v0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/yandex/mobile/ads/q$a;->b:Lcom/yandex/mobile/ads/q$d;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/q$d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method
