.class Lcom/perm/kate/ProfileInfoFragment$26;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1064
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileInfoFragment;->access$2400(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->isFriend(JLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
