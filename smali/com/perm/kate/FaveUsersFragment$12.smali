.class Lcom/perm/kate/FaveUsersFragment$12;
.super Ljava/lang/Thread;
.source "FaveUsersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$12;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 281
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$12;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveUsersFragment;->access$400(Lcom/perm/kate/FaveUsersFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$12;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveUsersFragment;->access$700(Lcom/perm/kate/FaveUsersFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$12;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveUsersFragment;->access$1300(Lcom/perm/kate/FaveUsersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$12;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v1, "photo_100,online"

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getFaveUsers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
