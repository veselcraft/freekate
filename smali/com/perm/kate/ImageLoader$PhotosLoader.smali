.class Lcom/perm/kate/ImageLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ImageLoader;
    .param p2, "thread_name"    # Ljava/lang/String;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    .line 767
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 768
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 777
    :cond_0
    const/4 v1, 0x0

    .line 779
    .local v1, "photoToLoad":Lcom/perm/kate/ImageLoader$PhotoToLoad;
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-boolean v2, v2, Lcom/perm/kate/ImageLoader;->paused:Z

    if-eqz v2, :cond_2

    .line 781
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 782
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-boolean v2, v2, Lcom/perm/kate/ImageLoader;->paused:Z

    if-nez v2, :cond_3

    .line 783
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    move-object v1, v0

    .line 784
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    if-eqz v1, :cond_4

    .line 787
    :try_start_2
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader;->access$100(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->load()V

    .line 791
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader;->access$100(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 792
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-virtual {v2, v1}, Lcom/perm/kate/ImageLoader;->imageViewReused(Lcom/perm/kate/ImageLoader$PhotoToLoad;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 796
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-boolean v2, v2, Lcom/perm/kate/ImageLoader;->testMode:Z

    if-nez v2, :cond_5

    .line 797
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/perm/kate/ImageLoader$BitmapDisplayer;

    iget-object v4, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-direct {v3, v4, v1}, Lcom/perm/kate/ImageLoader$BitmapDisplayer;-><init>(Lcom/perm/kate/ImageLoader;Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader;->access$100(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    .line 805
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running_tasks,size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v4}, Lcom/perm/kate/ImageLoader;->access$100(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 807
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    :goto_1
    return-void

    .line 784
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 810
    :catch_0
    move-exception v2

    goto :goto_1

    .line 799
    :cond_5
    new-instance v2, Lcom/perm/kate/ImageLoader$BitmapDisplayer;

    iget-object v3, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-direct {v2, v3, v1}, Lcom/perm/kate/ImageLoader$BitmapDisplayer;-><init>(Lcom/perm/kate/ImageLoader;Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->run()V

    goto :goto_0

    .line 801
    :cond_6
    invoke-virtual {v1}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
