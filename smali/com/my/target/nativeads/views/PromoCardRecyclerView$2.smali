.class Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;
.super Ljava/lang/Object;
.source "PromoCardRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/PromoCardRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;


# direct methods
.method constructor <init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$100(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$200(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$200(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->isViewActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$300(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$400(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$300(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    move-result-object v2

    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$400(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v3}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$200(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoCard;

    invoke-interface {v2, v1, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;->onClick(Landroid/view/View;Lcom/my/target/nativeads/banners/NativePromoCard;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    iget-object v2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;->this$0:Lcom/my/target/nativeads/views/PromoCardRecyclerView;

    invoke-static {v2}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->access$200(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->calculateScrollDistanceOnClick(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method
