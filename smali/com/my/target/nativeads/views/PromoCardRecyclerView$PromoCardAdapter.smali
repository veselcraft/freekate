.class public abstract Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PromoCardRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/PromoCardRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PromoCardAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private cardClickListener:Landroid/view/View$OnClickListener;

.field private final nativePromoCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->nativePromoCards:Ljava/util/List;

    .line 202
    return-void
.end method

.method private setBannerToView(Lcom/my/target/nativeads/banners/NativePromoCard;Lcom/my/target/nativeads/views/PromoCardView;)V
    .locals 3

    .prologue
    .line 243
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p2}, Lcom/my/target/nativeads/views/PromoCardView;->getMediaAdView()Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    .line 246
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v1

    .line 247
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v2

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/my/target/nativeads/views/MediaAdView;->setPlaceHolderDimension(II)V

    .line 249
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-interface {p2}, Lcom/my/target/nativeads/views/PromoCardView;->getMediaAdView()Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v1

    .line 252
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/my/target/nativeads/views/PromoCardView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-interface {p2}, Lcom/my/target/nativeads/views/PromoCardView;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-interface {p2}, Lcom/my/target/nativeads/views/PromoCardView;->getCtaButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    .line 256
    invoke-interface {p1}, Lcom/my/target/nativeads/banners/NativePromoCard;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    .line 257
    invoke-interface {p2}, Lcom/my/target/nativeads/views/PromoCardView;->getMediaAdView()Lcom/my/target/nativeads/views/MediaAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/nativeads/views/MediaAdView;->getImageView()Lcom/my/target/core/ui/views/CacheImageView;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->nativePromoCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNativePromoCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/nativeads/banners/NativePromoCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->nativePromoCards:Ljava/util/List;

    return-object v0
.end method

.method public abstract getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->onBindViewHolder(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;I)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->nativePromoCards:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativePromoCard;

    invoke-virtual {p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;->getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->setBannerToView(Lcom/my/target/nativeads/banners/NativePromoCard;Lcom/my/target/nativeads/views/PromoCardView;)V

    .line 221
    invoke-virtual {p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;->getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/nativeads/views/PromoCardView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;->getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/nativeads/views/PromoCardView;->getCtaButtonView()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;

    invoke-virtual {p0}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;-><init>(Lcom/my/target/nativeads/views/PromoCardView;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;

    invoke-virtual {p0, p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->onViewRecycled(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;->getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/nativeads/views/PromoCardView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {p1}, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardViewHolder;->getPromoCardView()Lcom/my/target/nativeads/views/PromoCardView;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/nativeads/views/PromoCardView;->getCtaButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 231
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/my/target/nativeads/views/PromoCardRecyclerView$PromoCardAdapter;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 197
    return-void
.end method
