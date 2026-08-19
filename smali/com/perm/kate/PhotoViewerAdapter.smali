.class public Lcom/perm/kate/PhotoViewerAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;
    }
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field private listener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

.field private mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

.field private photos:Ljava/util/ArrayList;

.field quality:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    invoke-static {}, Lcom/perm/kate/PhotoViewerAdapter;->getQualityPreference()I

    move-result v0

    iput v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->quality:I

    .line 263
    new-instance v0, Lcom/perm/kate/PhotoViewerAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerAdapter$1;-><init>(Lcom/perm/kate/PhotoViewerAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->listener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    .line 34
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/perm/kate/PhotoViewerAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoViewerAdapter;)Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerAdapter;->mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    return-object p0
.end method

.method static getPhotoUrl(Lcom/perm/kate/api/Photo;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 110
    iget-object p1, p0, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    iget-object p0, p0, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    return-object p0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    return-object p0
.end method

.method private getPreviewFromMemory(Lcom/perm/kate/api/Photo;)Landroid/graphics/Bitmap;
    .locals 2

    .line 101
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getQualityPreference()I
    .locals 3

    .line 116
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 117
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0f0174

    .line 118
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->activity:Landroid/app/Activity;

    .line 260
    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    iget-wide v0, p1, Lcom/perm/kate/api/Photo;->pid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .line 69
    iget-object p2, p0, Lcom/perm/kate/PhotoViewerAdapter;->activity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c00f4

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 75
    iget-object p3, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f090185

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f09027c

    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerAdapter;->getPreviewFromMemory(Lcom/perm/kate/api/Photo;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;

    iget v1, p0, Lcom/perm/kate/PhotoViewerAdapter;->quality:I

    invoke-static {p1, v1}, Lcom/perm/kate/PhotoViewerAdapter;->getPhotoUrl(Lcom/perm/kate/api/Photo;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;-><init>(Landroid/view/View;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 87
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f090284

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0f0599

    .line 90
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/perm/kate/ImageLoader;->displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 92
    instance-of p1, p3, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-eqz p1, :cond_1

    .line 93
    check-cast p3, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter;->listener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    invoke-virtual {p3, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setOnZoomChangedListener(Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;)V

    :cond_1
    return-object p2
.end method

.method public setHighQuality()V
    .locals 1

    const/4 v0, 0x2

    .line 123
    iput v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->quality:I

    return-void
.end method

.method public setOnZoomingListener(Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter;->mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    return-void
.end method

.method public setPhotos(Ljava/util/ArrayList;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
