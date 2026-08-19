.class Lcom/perm/kate/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/perm/kate/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Lcom/perm/kate/ImageLoader$PhotoToLoad;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->imageViewReused(Lcom/perm/kate/ImageLoader$PhotoToLoad;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    return-void

    .line 976
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->display()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 978
    :try_start_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 979
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 980
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 983
    :goto_2
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 984
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
