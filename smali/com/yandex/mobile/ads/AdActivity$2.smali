.class Lcom/yandex/mobile/ads/AdActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/AdActivity;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/AdActivity;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdActivity$2;->a:Lcom/yandex/mobile/ads/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdActivity$2;->a:Lcom/yandex/mobile/ads/AdActivity;

    iget-object v1, p0, Lcom/yandex/mobile/ads/AdActivity$2;->a:Lcom/yandex/mobile/ads/AdActivity;

    invoke-static {v1}, Lcom/yandex/mobile/ads/AdActivity;->b(Lcom/yandex/mobile/ads/AdActivity;)Lcom/yandex/mobile/ads/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/d;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 432
    return-void
.end method
