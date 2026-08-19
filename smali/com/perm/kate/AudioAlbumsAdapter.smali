.class public Lcom/perm/kate/AudioAlbumsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioAlbumsAdapter.java"


# instance fields
.field activity:Landroid/app/Activity;

.field items:Ljava/util/ArrayList;

.field show_ava:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioAlbumsAdapter;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/perm/kate/AudioAlbumsAdapter;->show_ava:Z

    .line 21
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsAdapter;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public displayData(Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsAdapter;->items:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/AudioAlbum;

    iget-wide v0, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/perm/kate/AudioAlbumsAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c002c

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/perm/kate/AudioAlbumsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/AudioAlbum;

    const p3, 0x7f09033a

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 52
    iget-object v1, p1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-boolean p3, p0, Lcom/perm/kate/AudioAlbumsAdapter;->show_ava:Z

    if-eqz p3, :cond_1

    const p3, 0x7f090188

    .line 54
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageView;

    .line 55
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/AudioAlbum;->photo:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    .line 57
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v6

    const/4 v7, 0x0

    .line 56
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 59
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method
