.class public Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FSSliderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FSSliderRecyclerViewHolder"
.end annotation


# instance fields
.field private final bannerImageView:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 372
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;->bannerImageView:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;

    .line 373
    return-void
.end method


# virtual methods
.method getSliderAppwallImageView()Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;->bannerImageView:Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;

    return-object v0
.end method
