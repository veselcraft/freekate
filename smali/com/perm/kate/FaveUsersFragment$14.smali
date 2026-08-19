.class Lcom/perm/kate/FaveUsersFragment$14;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;

.field final synthetic val$chunk_size:I


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;I)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$14;->this$0:Lcom/perm/kate/FaveUsersFragment;

    iput p2, p0, Lcom/perm/kate/FaveUsersFragment$14;->val$chunk_size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 312
    iget v0, p0, Lcom/perm/kate/FaveUsersFragment$14;->val$chunk_size:I

    iget-object v1, p0, Lcom/perm/kate/FaveUsersFragment$14;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveUsersFragment;->access$400(Lcom/perm/kate/FaveUsersFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$14;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/FaveUsersFragment;->access$902(Lcom/perm/kate/FaveUsersFragment;I)I

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$14;->this$0:Lcom/perm/kate/FaveUsersFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/FaveUsersFragment;->access$902(Lcom/perm/kate/FaveUsersFragment;I)I

    :goto_0
    return-void
.end method
