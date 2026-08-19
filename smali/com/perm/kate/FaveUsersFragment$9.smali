.class Lcom/perm/kate/FaveUsersFragment$9;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;

.field final synthetic val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$9;->this$0:Lcom/perm/kate/FaveUsersFragment;

    iput-wide p2, p0, Lcom/perm/kate/FaveUsersFragment$9;->val$user_id:J

    iput-object p4, p0, Lcom/perm/kate/FaveUsersFragment$9;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$9;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 236
    new-instance p1, Lcom/perm/kate/FaveUsersFragment$9$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/FaveUsersFragment$9$1;-><init>(Lcom/perm/kate/FaveUsersFragment$9;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
