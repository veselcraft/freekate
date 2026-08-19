.class Lcom/perm/kate/AudioFragment$12;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$12;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 572
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$12;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v1, Lcom/perm/kate/AudioFragment;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/session/Session;->getAudioUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
