.class Lcom/perm/kate/FaveUsersFragment$1;
.super Ljava/lang/Thread;
.source "FaveUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveUsersFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveUsersFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$1;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 65
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v1, "photo_100,online"

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FaveUsersFragment$1;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v4}, Lcom/perm/kate/FaveUsersFragment;->access$000(Lcom/perm/kate/FaveUsersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FaveUsersFragment$1;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {v5}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getFaveUsers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 69
    return-void
.end method
