.class Lcom/perm/kate/ProfileInfoFragment$17;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$17;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 912
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$17;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v2, v1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-static {v1}, Lcom/perm/kate/ProfileInfoFragment;->access$1700(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$17;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
