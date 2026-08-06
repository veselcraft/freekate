.class Lcom/perm/kate/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/perm/kate/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Lcom/perm/kate/ImageLoader$PhotoToLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ImageLoader;
    .param p2, "p"    # Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .prologue
    .line 822
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1, v2}, Lcom/perm/kate/ImageLoader;->imageViewReused(Lcom/perm/kate/ImageLoader$PhotoToLoad;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 837
    :goto_0
    return-void

    .line 828
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->display()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    goto :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 831
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 832
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, v1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v1}, Lcom/perm/utils/MemoryCache;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/perm/kate/ImageLoader$PhotoToLoad;

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    throw v1
.end method
