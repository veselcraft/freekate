.class public Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "FSSliderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;,
        Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;,
        Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ELEMENT_VIEWTYPE:I = 0x0

.field public static final FIRST_ELEMENT_VIEWTYPE:I = 0x1

.field public static final LAST_ELEMENT_VIEWTYPE:I = 0x2


# instance fields
.field private final cardClickListener:Landroid/view/View$OnClickListener;

.field private displayedCardNum:I

.field private fsImageBanners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;"
        }
    .end annotation
.end field

.field private fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

.field private final layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

.field private moving:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;-><init>(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    .line 134
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setHasFixedSize(Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;-><init>(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    .line 141
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setHasFixedSize(Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$1;-><init>(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    .line 148
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setHasFixedSize(Z)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->moving:Z

    return v0
.end method

.method static synthetic access$100(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    return v0
.end method

.method private checkCardChanged()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 175
    if-gez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    if-eq v1, v0, :cond_0

    .line 178
    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    .line 179
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    iget v3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->displayedCardNum:I

    .line 182
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 181
    invoke-interface {v1, v2, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;->onCardChange(ILcom/my/target/core/models/banners/f;)V

    goto :goto_0
.end method


# virtual methods
.method public fling(II)Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->calculateScrollDistanceOnFling(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->smoothScrollBy(II)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 316
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 325
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 324
    invoke-virtual {v1, v2, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->setFirstCardDimensions(II)V

    .line 343
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 347
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$2;-><init>(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void

    .line 330
    :cond_1
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 336
    invoke-virtual {v1, v2, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->setFirstCardDimensions(II)V

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 164
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->moving:Z

    .line 166
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->moving:Z

    if-nez v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->checkCardChanged()V

    .line 170
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBanners(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsImageBanners:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 74
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 75
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 76
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 79
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 80
    iget v0, v2, Landroid/graphics/Point;->y:I

    move v2, v1

    move v1, v0

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    .line 90
    if-le v2, v1, :cond_3

    .line 92
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 98
    invoke-virtual {v1, v2, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->setFirstCardDimensions(II)V

    .line 117
    :cond_0
    :goto_1
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;

    .line 118
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;-><init>(Ljava/util/ArrayList;ILandroid/content/res/Resources;)V

    .line 119
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 121
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    invoke-interface {v1, v3, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;->onCardChange(ILcom/my/target/core/models/banners/f;)V

    .line 124
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 84
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->layoutManager:Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 110
    invoke-virtual {v1, v2, v0}, Lcom/my/target/core/ui/views/fsslider/FSCardRecyclerLayoutManager;->setFirstCardDimensions(II)V

    goto :goto_1
.end method

.method public setFsSliderCardListener(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;->fsSliderCardListener:Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardListener;

    .line 129
    return-void
.end method
