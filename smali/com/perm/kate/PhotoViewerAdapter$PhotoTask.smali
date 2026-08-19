.class Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "PhotoViewerAdapter.java"


# instance fields
.field pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

.field root:Ljava/lang/ref/WeakReference;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0, p2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 137
    iput-object p2, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->url:Ljava/lang/String;

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->mergeable:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 178
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method display()V
    .locals 5

    .line 155
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f090185

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 157
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f090284

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f09027c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 160
    iget-object v4, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 161
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v4, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v4}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const/16 v0, 0x8

    .line 163
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00df

    .line 167
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 8

    .line 144
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 149
    :cond_0
    new-instance v5, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v5, v1}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    .line 150
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->url:Ljava/lang/String;

    const/16 v2, 0x320

    const/16 v3, 0x320

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 1

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 184
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    invoke-virtual {v0, p1}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->setView(Landroid/view/View;)V

    return-void
.end method
