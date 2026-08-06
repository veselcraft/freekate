.class public Lcom/perm/kate/MarketAlbumsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MarketAlbumsAdapter.java"


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
            "Lcom/perm/kate/api/MarketAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsAdapter;->albums:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/MarketAlbumsAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 22
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
            "Lcom/perm/kate/api/MarketAlbum;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketAlbum;>;"
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsAdapter;->albums:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Lcom/perm/kate/MarketAlbumsAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 31
    move-object v11, p2

    .line 32
    .local v11, "view":Landroid/view/View;
    if-nez v11, :cond_0

    .line 33
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009f

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 35
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/MarketAlbum;

    .line 36
    .local v7, "album":Lcom/perm/kate/api/MarketAlbum;
    const v0, 0x7f0e007a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 37
    .local v2, "img_user_photo":Landroid/widget/ImageView;
    const v0, 0x7f0e007b

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 38
    .local v8, "ll_texts_content":Landroid/widget/LinearLayout;
    const v0, 0x7f0e007c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 39
    .local v10, "tv_album_name":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v5

    .line 41
    .local v5, "stub":I
    iget-object v0, v7, Lcom/perm/kate/api/MarketAlbum;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v7, Lcom/perm/kate/api/MarketAlbum;->photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0xc8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 45
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-wide v0, v7, Lcom/perm/kate/api/MarketAlbum;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .end local v2    # "img_user_photo":Landroid/widget/ImageView;
    .end local v5    # "stub":I
    .end local v7    # "album":Lcom/perm/kate/api/MarketAlbum;
    .end local v8    # "ll_texts_content":Landroid/widget/LinearLayout;
    .end local v10    # "tv_album_name":Landroid/widget/TextView;
    :goto_1
    return-object v11

    .line 44
    .restart local v2    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v5    # "stub":I
    .restart local v7    # "album":Lcom/perm/kate/api/MarketAlbum;
    .restart local v8    # "ll_texts_content":Landroid/widget/LinearLayout;
    .restart local v10    # "tv_album_name":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v2    # "img_user_photo":Landroid/widget/ImageView;
    .end local v5    # "stub":I
    .end local v7    # "album":Lcom/perm/kate/api/MarketAlbum;
    .end local v8    # "ll_texts_content":Landroid/widget/LinearLayout;
    .end local v10    # "tv_album_name":Landroid/widget/TextView;
    :catch_0
    move-exception v9

    .line 48
    .local v9, "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
