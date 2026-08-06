.class public Lcom/yandex/mobile/ads/nativeads/ay$c;
.super Lcom/yandex/mobile/ads/nativeads/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/nativeads/ay",
        "<",
        "Landroid/widget/TextView;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay;-><init>(Landroid/view/View;)V

    .line 100
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 96
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay$c;->a(Landroid/widget/TextView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/TextView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ay;->a(Landroid/view/View;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ay$c;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 96
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ay$c;->b(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
