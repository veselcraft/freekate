.class Lcom/perm/kate/ProfileFragment$32;
.super Ljava/lang/Thread;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$32;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1517
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$32;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, v1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$3600(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment$32;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
