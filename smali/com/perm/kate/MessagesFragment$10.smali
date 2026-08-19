.class Lcom/perm/kate/MessagesFragment$10;
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

    .line 408
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 411
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "chat_id"

    .line 416
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 417
    invoke-static {p1, p2}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v3

    .line 418
    invoke-static {p1, p2}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v1

    .line 419
    iget-object p3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p3, p3, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    const-string p4, "unread_count"

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 420
    iget-object p3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p3}, Lcom/perm/kate/MessagesFragment;->access$700(Lcom/perm/kate/MessagesFragment;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 421
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/perm/kate/MessagesFragment;->access$800(Lcom/perm/kate/MessagesFragment;JJ)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object p3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-boolean p4, p3, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    if-eqz p4, :cond_2

    .line 423
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/perm/kate/MessageThreadActivity;->dialogSelected(JJ)V

    .line 424
    iget-object p3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p3}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object p3

    iput-wide p1, p3, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    .line 425
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 426
    :cond_2
    invoke-static {p3}, Lcom/perm/kate/MessagesFragment;->access$1000(Lcom/perm/kate/MessagesFragment;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 427
    iget-object p3, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p3, p1, p2}, Lcom/perm/kate/MessagesFragment;->access$1100(Lcom/perm/kate/MessagesFragment;J)V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$10;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/MessagesFragment;->access$1200(Lcom/perm/kate/MessagesFragment;JJI)V

    :goto_0
    return-void
.end method
