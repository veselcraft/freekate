.class Lcom/perm/kate/MessagesFragment$8;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    const-string v7, "chat_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 314
    .local v8, "thread_id":J
    invoke-static {v8, v9}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v4

    .line 315
    .local v4, "chat_id":J
    invoke-static {v8, v9}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v2

    .line 316
    .local v2, "message_uid":J
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    const-string v7, "unread_count"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 317
    .local v6, "unread_count":I
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$600(Lcom/perm/kate/MessagesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/MessagesFragment;->access$700(Lcom/perm/kate/MessagesFragment;JJ)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-boolean v0, v0, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/MessageThreadActivity;->dialogSelected(JJ)V

    .line 321
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$800(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object v0

    iput-wide v8, v0, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    .line 322
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$800(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, v8, v9}, Lcom/perm/kate/MessagesFragment;->access$1000(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$8;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/MessagesFragment;->access$1100(Lcom/perm/kate/MessagesFragment;JJI)V

    goto :goto_0
.end method
