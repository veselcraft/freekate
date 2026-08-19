.class Lcom/perm/kate/AudioFragment$9;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$1700(Lcom/perm/kate/AudioFragment;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    if-eqz v0, :cond_1

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043b\u0438\u0446\u0435\u043d\u0437\u0438\u044e \u043c\u0443\u0437\u044b\u043a\u0438"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$9;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1800(Lcom/perm/kate/AudioFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 432
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
