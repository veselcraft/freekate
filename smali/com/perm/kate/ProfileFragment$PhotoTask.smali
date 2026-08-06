.class Lcom/perm/kate/ProfileFragment$PhotoTask;
.super Lcom/perm/kate/ImageLoader$PhotoToLoad;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoTask"
.end annotation


# instance fields
.field root:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "root"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->this$0:Lcom/perm/kate/ProfileFragment;

    .line 1935
    invoke-direct {p0, p3}, Lcom/perm/kate/ImageLoader$PhotoToLoad;-><init>(Ljava/lang/String;)V

    .line 1936
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 1937
    iput-object p3, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->url:Ljava/lang/String;

    .line 1938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->mergeable:Z

    .line 1939
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 1967
    invoke-super {p0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 1968
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1969
    return-void
.end method

.method display()V
    .locals 3

    .prologue
    .line 1953
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1954
    .local v0, "img_photo_view":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1955
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1956
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lcom/perm/kate/ProfileFragment;->access$5200(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1958
    :cond_0
    return-void
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method load()V
    .locals 8

    .prologue
    const/16 v2, 0x320

    const/4 v6, 0x1

    .line 1943
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    .line 1944
    .local v0, "loader":Lcom/perm/kate/ImageLoader;
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1949
    :goto_0
    return-void

    .line 1947
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->url:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    .line 1948
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1973
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment$PhotoTask;->root:Ljava/lang/ref/WeakReference;

    .line 1974
    return-void
.end method
