.class public final Lcom/my/target/core/ui/a;
.super Landroid/app/Dialog;
.source "InterstitialAdDialog.java"

# interfaces
.implements Lcom/my/target/core/engines/b$a;


# instance fields
.field private a:Lcom/my/target/core/facades/g;

.field private b:Lcom/my/target/core/engines/b;


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/g;ZLandroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 44
    invoke-direct {p0, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/my/target/core/ui/a;->a:Lcom/my/target/core/facades/g;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/a;->requestWindowFeature(I)Z

    .line 48
    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->a()V

    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->c()V

    .line 110
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->f()V

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 113
    return-void
.end method

.method public final onClick(Z)V
    .locals 0

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 95
    :cond_0
    return-void
.end method

.method public final onCloseClick()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 101
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 59
    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    iget-object v0, p0, Lcom/my/target/core/ui/a;->a:Lcom/my/target/core/facades/g;

    instance-of v0, v0, Lcom/my/target/nativeads/NativeAppwallAd;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/my/target/core/ui/a;->a:Lcom/my/target/core/facades/g;

    check-cast v0, Lcom/my/target/nativeads/NativeAppwallAd;

    .line 66
    new-instance v2, Lcom/my/target/core/ui/views/AdTitle;

    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/my/target/core/ui/views/AdTitle;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/AdTitle;->setLabel(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/AdTitle;->setCloseClickListener(Lcom/my/target/core/engines/b$a;)V

    .line 69
    const/high16 v3, 0x42500000    # 52.0f

    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 70
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {v2, v4}, Lcom/my/target/core/ui/views/AdTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleSupplementaryColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/AdTitle;->setStripeColor(I)V

    .line 73
    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/AdTitle;->setMainColor(I)V

    .line 74
    invoke-virtual {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleTextColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/AdTitle;->setTitleColor(I)V

    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/a;->a:Lcom/my/target/core/facades/g;

    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/my/target/core/factories/c;->a(Lcom/my/target/core/facades/g;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/my/target/core/engines/b;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    .line 79
    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/a;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 81
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0, p0}, Lcom/my/target/core/engines/b;->a(Lcom/my/target/core/engines/b$a;)V

    .line 82
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->g()V

    .line 83
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->d()V

    .line 84
    iget-object v0, p0, Lcom/my/target/core/ui/a;->b:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->b()V

    .line 85
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method
