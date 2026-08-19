.class Lcom/perm/kate/ProfileFragment$33;
.super Ljava/lang/Thread;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$33;->this$0:Lcom/perm/kate/ProfileFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment$33;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1527
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$33;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$33;->val$message:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$3700(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/ProfileFragment$33;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/session/Session;->addFriend(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
