.class Lcom/perm/kate/FaveGroupsFragment$4;
.super Ljava/lang/Object;
.source "FaveGroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$4;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/perm/kate/FaveGroupsFragment$4;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/perm/kate/FaveGroupsFragment$4;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
