.class public Lcom/perm/kate/AlbumListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumListAdapter.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field albums:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumListAdapter;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/perm/kate/AlbumListAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0024

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/AlbumsFragment$AlbumData;

    const p3, 0x7f09017c

    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageView;

    const p3, 0x7f0901fa

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v1, 0x7f09034d

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09034e

    .line 41
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    iget-boolean v4, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->is_simple:Z

    if-nez v4, :cond_1

    .line 43
    iget-object v4, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->size:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->photo:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x82

    const v6, 0x7f080208

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 48
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p3, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p3, 0x8

    .line 51
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f080208

    .line 52
    invoke-virtual {v3, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    :goto_0
    iget-wide v0, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-object p2
.end method
