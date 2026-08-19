.class Lcom/perm/kate/ProfileFragment$PhotoTask;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "ProfileFragment.java"


# instance fields
.field root:Ljava/lang/ref/WeakReference;

.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 1987
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->this$0:Lcom/perm/kate/ProfileFragment;

    .line 1988
    invoke-direct {p0, p3}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 1989
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 1990
    iput-object p3, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->url:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1991
    iput-boolean p1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->mergeable:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 2020
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 2021
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method display()V
    .locals 3

    .line 2006
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2007
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 2008
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2009
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lcom/perm/kate/ProfileFragment;->access$5200(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .line 2015
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 9

    .line 1996
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    .line 1997
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2000
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->url:Ljava/lang/String;

    const/16 v2, 0x320

    const/16 v3, 0x320

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotoToLoad;->bmp:Landroid/graphics/Bitmap;

    .line 2001
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->url:Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setView(Landroid/view/View;)V
    .locals 1

    .line 2026
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    return-void
.end method
