.class Lcom/perm/kate/GroupsFragment$3;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$3;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$3;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v0, v0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
