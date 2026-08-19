.class Lcom/perm/kate/ProfileFragment$23;
.super Ljava/lang/Thread;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$23;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1119
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$23;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-wide/16 v2, -0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$23;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileFragment;->access$3100(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$23;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1120
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$23;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
