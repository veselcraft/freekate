.class Lcom/inmobi/ads/InMobiStrandAdapter$10;
.super Ljava/lang/Object;
.source "InMobiStrandAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiStrandAdapter;->smoothScrollToPosition(Landroid/widget/ListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:I

.field final synthetic c:Lcom/inmobi/ads/InMobiStrandAdapter;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiStrandAdapter;Landroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10;->c:Lcom/inmobi/ads/InMobiStrandAdapter;

    iput-object p2, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10;->a:Landroid/widget/ListView;

    iput p3, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 710
    if-nez p2, :cond_0

    .line 711
    iget-object v0, p0, Lcom/inmobi/ads/InMobiStrandAdapter$10;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 714
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/inmobi/ads/InMobiStrandAdapter$10$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiStrandAdapter$10$1;-><init>(Lcom/inmobi/ads/InMobiStrandAdapter$10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    :cond_0
    return-void
.end method
