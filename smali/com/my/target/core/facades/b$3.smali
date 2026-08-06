.class final Lcom/my/target/core/facades/b$3;
.super Ljava/lang/Object;
.source "AbstractNativeAd.java"

# interfaces
.implements Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;


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
    .line 157
    iput-object p1, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCardChange(Landroid/view/View;Lcom/my/target/nativeads/banners/NativePromoCard;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$200(Lcom/my/target/core/facades/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$200(Lcom/my/target/core/facades/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$300(Lcom/my/target/core/facades/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$200(Lcom/my/target/core/facades/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    check-cast p2, Lcom/my/target/core/models/banners/d;

    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/my/target/core/models/c;->c(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;Lcom/my/target/nativeads/banners/NativePromoCard;)V
    .locals 3

    .prologue
    .line 161
    const-string v0, "Click on native card received"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$100(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-static {v0}, Lcom/my/target/core/facades/b;->access$100(Lcom/my/target/core/facades/b;)Lcom/my/target/core/facades/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/b$a;->onClick(Lcom/my/target/core/facades/b;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->adData:Lcom/my/target/core/models/c;

    check-cast p2, Lcom/my/target/core/models/banners/d;

    iget-object v1, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v1, v1, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v0, v0, Lcom/my/target/core/facades/b;->banner:Lcom/my/target/core/models/banners/h;

    const-string v1, "click"

    iget-object v2, p0, Lcom/my/target/core/facades/b$3;->a:Lcom/my/target/core/facades/b;

    iget-object v2, v2, Lcom/my/target/core/facades/b;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/models/c;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
