.class Lcom/perm/kate/WallFragment$14;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 684
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget v2, v0, Lcom/perm/kate/WallFragment;->page_size:I

    .line 685
    .local v2, "size":I
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 687
    .local v3, "offset":I
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v0, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v1, v1, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget v1, v1, Lcom/perm/kate/WallFragment;->page_size:I

    sub-int v3, v0, v1

    .line 689
    if-gez v3, :cond_0

    .line 690
    const/4 v3, 0x0

    .line 691
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v1, v1, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int v2, v0, v1

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v0, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget v0, v0, Lcom/perm/kate/WallFragment;->offset_shift:I

    add-int/2addr v3, v0

    .line 698
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v1}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v4}, Lcom/perm/kate/WallFragment;->access$100(Lcom/perm/kate/WallFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v5, v5, Lcom/perm/kate/WallFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v6}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getWallMessages(Ljava/lang/Long;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 699
    return-void
.end method
