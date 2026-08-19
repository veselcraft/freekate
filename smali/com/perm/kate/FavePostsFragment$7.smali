.class Lcom/perm/kate/FavePostsFragment$7;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$7;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$7;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$7;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
