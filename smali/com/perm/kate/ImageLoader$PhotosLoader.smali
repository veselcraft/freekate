.class Lcom/perm/kate/ImageLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/perm/kate/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    .line 915
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    const/4 v0, 0x0

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v1, v1, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
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

    .line 929
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 930
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-boolean v3, v2, Lcom/perm/kate/ImageLoader;->paused:Z

    if-nez v3, :cond_3

    .line 931
    iget-object v0, v2, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader$PhotosQueue;->access$000(Lcom/perm/kate/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/ImageLoader$PhotoToLoad;

    .line 932
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 935
    :try_start_2
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v1}, Lcom/perm/kate/ImageLoader;->access$200(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->load()V

    .line 939
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v1}, Lcom/perm/kate/ImageLoader;->access$200(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 940
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-virtual {v1, v0}, Lcom/perm/kate/ImageLoader;->imageViewReused(Lcom/perm/kate/ImageLoader$PhotoToLoad;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 944
    iget-object v1, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    iget-boolean v2, v1, Lcom/perm/kate/ImageLoader;->testMode:Z

    if-nez v2, :cond_4

    .line 945
    iget-object v2, v1, Lcom/perm/kate/ImageLoader;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/perm/kate/ImageLoader$BitmapDisplayer;

    invoke-direct {v3, v1, v0}, Lcom/perm/kate/ImageLoader$BitmapDisplayer;-><init>(Lcom/perm/kate/ImageLoader;Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 947
    :cond_4
    new-instance v2, Lcom/perm/kate/ImageLoader$BitmapDisplayer;

    invoke-direct {v2, v1, v0}, Lcom/perm/kate/ImageLoader$BitmapDisplayer;-><init>(Lcom/perm/kate/ImageLoader;Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader$BitmapDisplayer;->run()V

    goto :goto_0

    .line 949
    :cond_5
    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader$PhotoToLoad;->clear()V

    .line 952
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v0}, Lcom/perm/kate/ImageLoader;->access$200(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    .line 953
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "running_tasks,size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/ImageLoader$PhotosLoader;->this$0:Lcom/perm/kate/ImageLoader;

    invoke-static {v2}, Lcom/perm/kate/ImageLoader;->access$200(Lcom/perm/kate/ImageLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 955
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 932
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
