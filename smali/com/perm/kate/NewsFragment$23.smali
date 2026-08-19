.class Lcom/perm/kate/NewsFragment$23;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$23;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1146
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$23;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1}, Lcom/perm/kate/NewsFragment;->access$1600(Lcom/perm/kate/NewsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$23;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getLists(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
