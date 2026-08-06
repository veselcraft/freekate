.class Lcom/perm/kate/FaveUsersFragment$4;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveUsersFragment;->requeryOnUiThread()V
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
    .line 117
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$300(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/perm/kate/FaveUsersFragment$4;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveUsersFragment;->access$300(Lcom/perm/kate/FaveUsersFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 122
    :cond_0
    return-void
.end method
