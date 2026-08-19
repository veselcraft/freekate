.class Lcom/perm/kate/FaveGroupsFragment$7;
.super Ljava/lang/Object;
.source "FaveGroupsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;

.field final synthetic val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$group_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$7;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    iput-wide p2, p0, Lcom/perm/kate/FaveGroupsFragment$7;->val$group_id:J

    iput-object p4, p0, Lcom/perm/kate/FaveGroupsFragment$7;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$7;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 183
    new-instance p1, Lcom/perm/kate/FaveGroupsFragment$7$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/FaveGroupsFragment$7$1;-><init>(Lcom/perm/kate/FaveGroupsFragment$7;)V

    .line 188
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
