.class Lcom/perm/kate/NewsFragment$7$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewsFragment$7;

.field final synthetic val$ns:Lcom/perm/kate/api/Newsfeed;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment$7;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$7$1;->this$1:Lcom/perm/kate/NewsFragment$7;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$7$1;->val$ns:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7$1;->val$ns:Lcom/perm/kate/api/Newsfeed;

    iget-object v0, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7$1;->this$1:Lcom/perm/kate/NewsFragment$7;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7$1;->val$ns:Lcom/perm/kate/api/Newsfeed;

    iget-object v0, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7$1;->this$1:Lcom/perm/kate/NewsFragment$7;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$7$1;->this$1:Lcom/perm/kate/NewsFragment$7;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment$7;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    :goto_0
    return-void
.end method
