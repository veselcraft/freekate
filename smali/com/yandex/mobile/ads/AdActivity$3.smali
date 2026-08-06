.class Lcom/yandex/mobile/ads/AdActivity$3;
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
    .line 435
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdActivity$3;->a:Lcom/yandex/mobile/ads/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdActivity$3;->a:Lcom/yandex/mobile/ads/AdActivity;

    invoke-static {v0}, Lcom/yandex/mobile/ads/AdActivity;->a(Lcom/yandex/mobile/ads/AdActivity;)V

    .line 439
    return-void
.end method
