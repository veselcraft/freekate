.class Lcom/perm/kate/FaveUsersFragment$7$1;
.super Ljava/lang/Thread;
.source "FaveUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveUsersFragment$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FaveUsersFragment$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/FaveUsersFragment$7;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$7$1;->this$1:Lcom/perm/kate/FaveUsersFragment$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 191
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$7$1;->this$1:Lcom/perm/kate/FaveUsersFragment$7;

    iget-wide v2, v1, Lcom/perm/kate/FaveUsersFragment$7;->val$user_id:J

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$7$1;->this$1:Lcom/perm/kate/FaveUsersFragment$7;

    iget-object v1, v1, Lcom/perm/kate/FaveUsersFragment$7;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/FaveUsersFragment$7$1;->this$1:Lcom/perm/kate/FaveUsersFragment$7;

    iget-object v4, v4, Lcom/perm/kate/FaveUsersFragment$7;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FaveUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/session/Session;->faveRemoveUser(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 192
    return-void
.end method
