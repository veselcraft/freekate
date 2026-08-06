.class Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;
.super Ljava/lang/Object;
.source "FSSliderRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    .line 348
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    invoke-static {v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$400(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;->this$0:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;

    .line 353
    invoke-static {v2}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->getOffsetToCenterView()I

    move-result v2

    .line 352
    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->scrollToPositionWithOffset(II)V

    .line 355
    return-void
.end method
