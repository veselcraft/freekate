.class final Lcom/yandex/mobile/ads/AdResources$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdResources$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/AdResources$e;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/AdResources$e;Z)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/yandex/mobile/ads/AdResources$e$b;->a:Lcom/yandex/mobile/ads/AdResources$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/AdResources$e$b;->b:Z

    .line 815
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/yandex/mobile/ads/AdResources$e$b;->a:Lcom/yandex/mobile/ads/AdResources$e;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/AdResources$e$b;->b:Z

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/AdResources$e;->a(Lcom/yandex/mobile/ads/AdResources$e;Z)V

    .line 821
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 823
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 817
    return-void
.end method
