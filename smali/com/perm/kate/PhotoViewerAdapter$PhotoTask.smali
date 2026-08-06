.class Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "PhotoViewerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhotoTask"
.end annotation


# instance fields
.field pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

.field root:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 137
    iput-object p2, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->url:Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->mergeable:Z

    .line 140
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 178
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 179
    return-void
.end method

.method display()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 155
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    .line 156
    .local v1, "loader":Lcom/perm/kate/ImageLoader;
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0e0295

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 157
    .local v0, "img_photo_view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0e009e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0e0125

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 160
    .local v2, "preview":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 161
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v4}, Lcom/perm/kate/ImageLoader;->displayBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 163
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    const v4, 0x7f0700a3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 8

    .prologue
    const/16 v2, 0x320

    const/4 v4, 0x1

    .line 144
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    .line 145
    .local v0, "loader":Lcom/perm/kate/ImageLoader;
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v3, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v3, v1}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    .line 150
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    move v3, v2

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 184
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerAdapter$PhotoTask;->pd:Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;

    invoke-virtual {v0, p1}, Lcom/perm/kate/PhotoViewerAdapter$ProgressDisplayer;->setView(Landroid/view/View;)V

    .line 185
    return-void
.end method
