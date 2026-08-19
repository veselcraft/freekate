.class Lcom/perm/kate/DocsFragment$2;
.super Ljava/lang/Thread;
.source "DocsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 108
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v3, v0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$100(Lcom/perm/kate/DocsFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$200(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/DocsFragment$2;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getDocs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
