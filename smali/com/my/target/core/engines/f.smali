.class public final Lcom/my/target/core/engines/f;
.super Lcom/my/target/core/engines/a;
.source "FSSliderAppwallAdEngine.java"


# instance fields
.field private final c:Lcom/my/target/core/facades/f;

.field private final d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

.field private e:Lcom/my/target/core/engines/b$a;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/f;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/my/target/core/engines/f;->c:Lcom/my/target/core/facades/f;

    .line 37
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    invoke-direct {v0, p3}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    .line 38
    invoke-virtual {p1}, Lcom/my/target/core/facades/f;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/my/target/core/engines/f;->f:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Lcom/my/target/core/facades/f;->c()Lcom/my/target/core/models/sections/e;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/my/target/core/engines/f$1;

    invoke-direct {v2, p0, p1}, Lcom/my/target/core/engines/f$1;-><init>(Lcom/my/target/core/engines/f;Lcom/my/target/core/facades/f;)V

    .line 63
    iget-object v3, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    invoke-virtual {v3, v2}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->setFSSliderCardListener(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;)V

    .line 64
    iget-object v2, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    invoke-virtual {v2, v1, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->a(Lcom/my/target/core/models/sections/e;Ljava/util/ArrayList;)V

    .line 65
    new-instance v0, Lcom/my/target/core/engines/f$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/f$2;-><init>(Lcom/my/target/core/engines/f;)V

    .line 74
    iget-object v1, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;->setCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 79
    iget-object v1, p0, Lcom/my/target/core/engines/f;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/f;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/core/engines/f;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/engines/f;)Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/core/engines/f;->d:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallAdView;

    return-object v0
.end method

.method static synthetic c(Lcom/my/target/core/engines/f;)Lcom/my/target/core/engines/b$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/engines/b$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/my/target/core/engines/f;->e:Lcom/my/target/core/engines/b$a;

    .line 29
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/my/target/core/engines/f;->c:Lcom/my/target/core/facades/f;

    invoke-virtual {v0}, Lcom/my/target/core/facades/f;->d()V

    .line 92
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
