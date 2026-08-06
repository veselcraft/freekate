.class final Lcom/my/target/core/facades/b$5;
.super Ljava/lang/Object;
.source "AbstractNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/facades/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/facades/b;


# direct methods
.method constructor <init>(Lcom/my/target/core/facades/b;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 241
    const-string v0, "Click received by native ad"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$100(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$100(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/b$a;->onClick(Lcom/my/target/core/facades/b;)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    iget-object v1, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    iget-object v1, v1, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    iget-object v2, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$600(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    .line 251
    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$600(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    .line 252
    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$600(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getCurrentCard()Lcom/my/target/nativeads/banners/NativePromoCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$600(Lcom/my/target/core/facades/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    .line 255
    invoke-virtual {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getCurrentCard()Lcom/my/target/nativeads/banners/NativePromoCard;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/d;

    const-string v1, "click"

    iget-object v2, p0, Lcom/my/target/core/facades/b$5;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    .line 254
    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
