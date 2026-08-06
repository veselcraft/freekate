.class public Lcom/perm/kate/MarketItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketItemsAdapter.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsAdapter;->albums:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/MarketItemsAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method


# virtual methods
.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketItem;>;"
    iput-object p1, p0, Lcom/perm/kate/MarketItemsAdapter;->albums:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Lcom/perm/kate/MarketItemsAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/MarketItemsAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/perm/kate/MarketItemsAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    move-object/from16 v14, p2

    .line 33
    .local v14, "view":Landroid/view/View;
    if-nez v14, :cond_0

    .line 34
    iget-object v2, p0, Lcom/perm/kate/MarketItemsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0300a3

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 36
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/MarketItemsAdapter;->albums:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/api/MarketItem;

    .line 37
    .local v9, "album":Lcom/perm/kate/api/MarketItem;
    const v2, 0x7f0e007a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 38
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    const v2, 0x7f0e007b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 39
    .local v10, "ll_texts_content":Landroid/widget/LinearLayout;
    const v2, 0x7f0e007c

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 40
    .local v12, "tv_album_name":Landroid/widget/TextView;
    iget-object v2, v9, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v2, 0x7f0e021d

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 42
    .local v13, "tv_price":Landroid/widget/TextView;
    iget-object v2, v9, Lcom/perm/kate/api/MarketItem;->price_text:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, v9, Lcom/perm/kate/api/MarketItem;->thumb_photo:Ljava/lang/String;

    .line 44
    .local v3, "photo":Ljava/lang/String;
    iget-object v2, v9, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v9, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 46
    iget-object v2, v9, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    iget-object v3, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 47
    :cond_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0xc8

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-wide v6, v9, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v9    # "album":Lcom/perm/kate/api/MarketItem;
    .end local v10    # "ll_texts_content":Landroid/widget/LinearLayout;
    .end local v12    # "tv_album_name":Landroid/widget/TextView;
    .end local v13    # "tv_price":Landroid/widget/TextView;
    :goto_0
    return-object v14

    .line 50
    :catch_0
    move-exception v11

    .line 51
    .local v11, "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
