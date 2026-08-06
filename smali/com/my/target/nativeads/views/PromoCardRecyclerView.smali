.class public Lcom/my/target/nativeads/views/PromoCardRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "PromoCardRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;,
        Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;,
        Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;
    }
.end annotation


# instance fields
.field private final cardClickListener:Landroid/view/View$OnClickListener;

.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;"
        }
    .end annotation
.end field

.field private displayedCardNum:I

.field private final layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

.field private moving:Z

.field private onPromoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

.field private promoCardAdapter:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    .line 157
    new-instance v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;-><init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setHasFixedSize(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    .line 157
    new-instance v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;-><init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setHasFixedSize(Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    .line 157
    new-instance v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$2;-><init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setHasFixedSize(Z)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->promoCardAdapter:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->moving:Z

    return v0
.end method

.method static synthetic access$200(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->onPromoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    return-object v0
.end method

.method private checkCardChanged()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 144
    if-gez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    if-eq v1, v0, :cond_0

    .line 147
    iput v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    .line 148
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->onPromoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->onPromoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    iget v2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    invoke-virtual {v0, v2}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    iget v3, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->displayedCardNum:I

    .line 152
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoCard;

    .line 150
    invoke-interface {v1, v2, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;->onCardChange(Landroid/view/View;Lcom/my/target/nativeads/banners/NativePromoCard;)V

    goto :goto_0
.end method


# virtual methods
.method public fling(II)Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {v0, p1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->calculateScrollDistanceOnFling(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->smoothScrollBy(II)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentCard()Lcom/my/target/nativeads/banners/NativePromoCard;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {v1}, Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 36
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoCard;

    goto :goto_0
.end method

.method public loadImages()V
    .locals 4

    .prologue
    .line 89
    const-string v0, "load images to cards"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoCard;

    .line 95
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {v0}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_2
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/my/target/nativeads/views/PromoCardRecyclerView$1;

    invoke-direct {v3, p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$1;-><init>(Lcom/my/target/nativeads/views/PromoCardRecyclerView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 133
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->moving:Z

    .line 135
    iget-boolean v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->moving:Z

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->checkCardChanged()V

    .line 139
    :cond_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 65
    instance-of v0, p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    invoke-virtual {p0, p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setPromoCardAdapter(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;)V

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "You must use setPromoCardAdapter(PromoCardAdapter) method with custom CardRecyclerView"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnPromoCardListener(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->onPromoCardListener:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardListener;

    .line 118
    return-void
.end method

.method public setPromoCardAdapter(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;)V
    .locals 2

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->getNativePromoCards()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cards:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->promoCardAdapter:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    .line 82
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->promoCardAdapter:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    iget-object v1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->layoutManager:Lcom/my/target/nativeads/views/CardRecyclerLayoutManager;

    invoke-virtual {p0, v0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView;->promoCardAdapter:Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method
