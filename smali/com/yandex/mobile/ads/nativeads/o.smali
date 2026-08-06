.class final Lcom/yandex/mobile/ads/nativeads/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/c;

.field private final b:Lcom/yandex/mobile/ads/nativeads/i;

.field private final c:Lcom/yandex/mobile/ads/nativeads/a;

.field private final d:Lcom/yandex/mobile/ads/as;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/c;Lcom/yandex/mobile/ads/nativeads/i;Lcom/yandex/mobile/ads/nativeads/a;Lcom/yandex/mobile/ads/as;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/o;->a:Lcom/yandex/mobile/ads/nativeads/c;

    .line 33
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/o;->b:Lcom/yandex/mobile/ads/nativeads/i;

    .line 34
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/o;->c:Lcom/yandex/mobile/ads/nativeads/a;

    .line 35
    iput-object p4, p0, Lcom/yandex/mobile/ads/nativeads/o;->d:Lcom/yandex/mobile/ads/as;

    .line 36
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/o;->b:Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/o;->a:Lcom/yandex/mobile/ads/nativeads/c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/o;->d:Lcom/yandex/mobile/ads/as;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/o;->d:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->c()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/o;->b:Lcom/yandex/mobile/ads/nativeads/i;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/o;->c:Lcom/yandex/mobile/ads/nativeads/a;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/nativeads/a;->a(Ljava/lang/String;)V

    .line 48
    :cond_1
    return-void
.end method
