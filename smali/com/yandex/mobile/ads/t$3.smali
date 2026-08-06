.class Lcom/yandex/mobile/ads/t$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/t;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/t;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yandex/mobile/ads/t$3;->a:Lcom/yandex/mobile/ads/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreDraw(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/yandex/mobile/ads/t$3;->a:Lcom/yandex/mobile/ads/t;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/t;->T()V

    .line 98
    iget-object v0, p0, Lcom/yandex/mobile/ads/t$3;->a:Lcom/yandex/mobile/ads/t;

    iget-object v0, v0, Lcom/yandex/mobile/ads/t;->a:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/mobile/ads/t$3$1;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/t$3$1;-><init>(Lcom/yandex/mobile/ads/t$3;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    const/4 v0, 0x1

    return v0
.end method
