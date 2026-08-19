.class Lcom/perm/kate/VideoFragment$9$1;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/VideoFragment$9;

.field final synthetic val$videos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment$9;Ljava/util/ArrayList;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment$9$1;->val$videos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    monitor-enter v0

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/VideoFragment$9$1;->val$videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9$1;->this$1:Lcom/perm/kate/VideoFragment$9;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$000(Lcom/perm/kate/VideoFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$1000(Lcom/perm/kate/VideoFragment;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 345
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
