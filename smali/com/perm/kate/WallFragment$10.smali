.class Lcom/perm/kate/WallFragment$10;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->requeryOnUiThread()V
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
    .line 543
    iput-object p1, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->clearAttachmentsCache()V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/perm/kate/WallFragment$10;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 550
    :cond_1
    return-void
.end method
