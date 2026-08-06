.class public Lcom/perm/kate/PhotoViewerAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;,
        Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayRunnable;,
        Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;,
        Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;
    }
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field private is_old:Z

.field private listener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

.field private mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field quality:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->is_old:Z

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerAdapter;->getQualityPreference()I

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

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerAdapter;->isOld()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->is_old:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoViewerAdapter;)Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    return-object v0
.end method

.method private getPreviewFromMemory(Lcom/perm/kate/api/Photo;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 101
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "tmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method private getQualityPreference()I
    .locals 4

    .prologue
    .line 116
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 117
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "settings":Landroid/content/SharedPreferences;
    const v2, 0x7f070549

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private isOld()Z
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->activity:Landroid/app/Activity;

    .line 260
    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    .line 261
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 58
    const-wide/16 v0, -0x1

    .line 59
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    goto :goto_0
.end method

.method getPhotoUrl(Lcom/perm/kate/api/Photo;)Ljava/lang/String;
    .locals 2
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 108
    iget v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->quality:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->quality:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    iget-object v9, p0, Lcom/perm/kate/PhotoViewerAdapter;->activity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 68
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300d9

    .line 69
    .local v2, "layout_id":I
    iget-boolean v9, p0, Lcom/perm/kate/PhotoViewerAdapter;->is_old:Z

    if-eqz v9, :cond_0

    .line 70
    const v2, 0x7f0300da

    .line 71
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v1, v2, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 72
    .local v8, "vi":Landroid/view/View;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 75
    iget-object v9, p0, Lcom/perm/kate/PhotoViewerAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    .line 76
    .local v3, "photo":Lcom/perm/kate/api/Photo;
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    const v9, 0x7f0e0295

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "img_photo_view":Landroid/widget/ImageView;
    const v9, 0x7f0e0125

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 81
    .local v4, "preview":Landroid/widget/ImageView;
    invoke-direct {p0, v3}, Lcom/perm/kate/PhotoViewerAdapter;->getPreviewFromMemory(Lcom/perm/kate/api/Photo;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 82
    .local v7, "tmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 83
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_1
    new-instance v5, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerAdapter;->getPhotoUrl(Lcom/perm/kate/api/Photo;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 87
    .local v5, "task":Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const v9, 0x7f0e009e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 90
    .local v6, "textView":Landroid/widget/TextView;
    const v9, 0x7f07050e

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/perm/kate/ImageLoader;->displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 92
    instance-of v9, v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-eqz v9, :cond_2

    .line 93
    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    .end local v0    # "img_photo_view":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/perm/kate/PhotoViewerAdapter;->listener:Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;

    invoke-virtual {v0, v9}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setOnZoomChangedListener(Lcom/perm/kate/imagezoom/ImageViewTouchBase$OnZoomChangedListener;)V

    .line 94
    :cond_2
    return-object v8
.end method

.method public setHighQuality()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/perm/kate/PhotoViewerAdapter;->quality:I

    .line 124
    return-void
.end method

.method public setOnZoomingListener(Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerAdapter;->mZoomingListener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    .line 282
    return-void
.end method
