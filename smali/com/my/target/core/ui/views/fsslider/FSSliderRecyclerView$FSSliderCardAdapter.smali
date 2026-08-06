.class public Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FSSliderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FSSliderCardAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final backgroundColor:I

.field private cardClickListener:Landroid/view/View$OnClickListener;

.field private final fsCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILandroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/f;",
            ">;I",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->fsCards:Ljava/util/ArrayList;

    .line 274
    iput p2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->backgroundColor:I

    .line 275
    iput-object p3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->resources:Landroid/content/res/Resources;

    .line 276
    return-void
.end method

.method private setBannerToView(Lcom/my/target/core/models/banners/f;Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 220
    .line 223
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 224
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 226
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    move-object v1, v0

    .line 229
    :goto_0
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 230
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 232
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/models/ImageData;

    move-object v3, v0

    .line 238
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    move-object v1, v0

    .line 251
    :goto_3
    if-nez v1, :cond_4

    .line 253
    if-nez v0, :cond_3

    .line 258
    :goto_4
    invoke-virtual {p2, v2}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 260
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/f;->getAgeRestrictions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setAgeRestrictions(Ljava/lang/String;)V

    .line 262
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    .line 248
    goto :goto_3

    :cond_3
    move-object v2, v0

    .line 255
    goto :goto_4

    :cond_4
    move-object v2, v1

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v3, v2

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->fsCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->fsCards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 209
    const/4 v0, 0x2

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->onBindViewHolder(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;I)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->fsCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/f;

    invoke-virtual {p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;->getSliderAppwallImageView()Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->setBannerToView(Lcom/my/target/core/models/banners/f;Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;)V

    .line 292
    invoke-virtual {p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;->getSliderAppwallImageView()Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 281
    new-instance v0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;

    .line 282
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->backgroundColor:I

    invoke-direct {v0, v1, v2}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;-><init>(Landroid/content/Context;I)V

    .line 283
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    new-instance v1, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;-><init>(Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;)V

    return-object v1
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;

    invoke-virtual {p0, p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->onViewRecycled(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;)V
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderRecyclerViewHolder;->getSliderAppwallImageView()Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 306
    return-void
.end method

.method setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderRecyclerView$FSSliderCardAdapter;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 267
    return-void
.end method
