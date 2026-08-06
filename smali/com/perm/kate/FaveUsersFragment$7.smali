.class Lcom/perm/kate/FaveUsersFragment$7;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveUsersFragment;->faveRemoveUser(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;

.field final synthetic val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveUsersFragment;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$7;->this$0:Lcom/perm/kate/FaveUsersFragment;

    iput-wide p2, p0, Lcom/perm/kate/FaveUsersFragment$7;->val$user_id:J

    iput-object p4, p0, Lcom/perm/kate/FaveUsersFragment$7;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$7;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/FaveUsersFragment;->showProgressBar(Z)V

    .line 188
    new-instance v0, Lcom/perm/kate/FaveUsersFragment$7$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveUsersFragment$7$1;-><init>(Lcom/perm/kate/FaveUsersFragment$7;)V

    .line 193
    invoke-virtual {v0}, Lcom/perm/kate/FaveUsersFragment$7$1;->start()V

    .line 194
    return-void
.end method
