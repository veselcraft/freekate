.class final Lcom/my/target/core/engines/f$1;
.super Ljava/lang/Object;
.source "FSSliderAppwallAdEngine.java"

# interfaces
.implements Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/engines/f;-><init>(Lcom/my/target/core/facades/f;Landroid/view/ViewGroup;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/f;

.field final synthetic b:Lcom/my/target/core/engines/f;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/f;Lcom/my/target/core/facades/f;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/my/target/core/engines/f$1;->b:Lcom/my/target/core/engines/f;

    iput-object p2, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCardChange(ILcom/my/target/core/models/banners/f;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->b:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->b:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->a(Lcom/my/target/core/engines/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-virtual {v0, p2}, Lcom/my/target/core/facades/f;->a(Lcom/my/target/core/models/banners/d;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->b:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->b(Lcom/my/target/core/engines/f;)Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->a(I)V

    .line 61
    return-void
.end method

.method public final onClick(Landroid/view/View;Lcom/my/target/core/models/banners/f;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/my/target/core/engines/f$1;->a:Lcom/my/target/core/facades/f;

    invoke-virtual {v0, p2}, Lcom/my/target/core/facades/f;->b(Lcom/my/target/core/models/banners/d;)V

    .line 49
    return-void
.end method
