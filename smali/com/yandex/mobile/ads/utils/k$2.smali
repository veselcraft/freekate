.class final Lcom/yandex/mobile/ads/utils/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/utils/k;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/yandex/mobile/ads/utils/k$2;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p2, p0, Lcom/yandex/mobile/ads/utils/k$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yandex/mobile/ads/utils/k$2;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z

    .line 195
    iget-object v0, p0, Lcom/yandex/mobile/ads/utils/k$2;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 196
    const/4 v0, 0x1

    return v0
.end method
