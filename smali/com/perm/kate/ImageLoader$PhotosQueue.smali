.class Lcom/perm/kate/ImageLoader$PhotosQueue;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field private photosToLoad:Ljava/util/Stack;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-object p0
.end method


# virtual methods
.method public Clean(Landroid/view/View;)V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    monitor-enter v0

    const/4 v1, 0x0

    .line 899
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 900
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 901
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 902
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
