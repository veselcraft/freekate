.class Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;
.super Ljava/lang/Object;
.source "FSSliderRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$000(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->isViewActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$200(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$300(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$200(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    move-result-object v2

    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    .line 51
    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$300(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v3}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 50
    invoke-interface {v2, v1, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;->onClick(Landroid/view/View;Lcom/my/target/core/models/banners/f;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v2}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->calculateScrollDistanceOnClick(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method
