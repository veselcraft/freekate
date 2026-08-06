.class Lcom/yandex/mobile/ads/nativeads/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/aj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/nativeads/k;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/k;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/k;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/k$4;->a:Lcom/yandex/mobile/ads/nativeads/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 164
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/k$4;->a:Lcom/yandex/mobile/ads/nativeads/k;

    invoke-static {v2}, Lcom/yandex/mobile/ads/nativeads/k;->a(Lcom/yandex/mobile/ads/nativeads/k;)Lcom/yandex/mobile/ads/nativeads/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/nativeads/ac;->b(Lcom/yandex/mobile/ads/nativeads/c;)Landroid/view/View;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
