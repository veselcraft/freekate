.class Lcom/perm/kate/FaveUsersFragment$6;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$6;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$6;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$200(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$6;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$200(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
