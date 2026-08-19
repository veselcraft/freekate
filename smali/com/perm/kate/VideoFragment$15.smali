.class Lcom/perm/kate/VideoFragment$15;
.super Ljava/lang/Thread;
.source "VideoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;

.field final synthetic val$callback_add:Lcom/perm/kate/session/Callback;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$vid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$15;->this$0:Lcom/perm/kate/VideoFragment;

    iput-object p2, p0, Lcom/perm/kate/VideoFragment$15;->val$vid:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/VideoFragment$15;->val$oid:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/VideoFragment$15;->val$callback_add:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 595
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$15;->val$vid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/VideoFragment$15;->val$oid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/VideoFragment$15;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v3}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/VideoFragment$15;->val$callback_add:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/VideoFragment$15;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
