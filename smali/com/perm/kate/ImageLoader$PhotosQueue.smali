.class Lcom/perm/kate/ImageLoader$PhotosQueue;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhotosQueue"
.end annotation


# instance fields
.field private photosToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/perm/kate/ImageLoader$PhotoToLoad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ImageLoader$PhotosQueue;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public Clean(Landroid/view/View;)V
    .locals 3
    .param p1, "image"    # Landroid/view/View;

    .prologue
    .line 748
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    monitor-enter v2

    .line 751
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 754
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosQueue;->photosToLoad:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    return-void
.end method
