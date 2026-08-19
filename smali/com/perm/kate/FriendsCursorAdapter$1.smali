.class Lcom/perm/kate/FriendsCursorAdapter$1;
.super Ljava/lang/Object;
.source "FriendsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsCursorAdapter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 121
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v0, v0, Lcom/perm/kate/FriendsCursorAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v0, v0, Lcom/perm/kate/FriendsCursorAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0}, Lcom/perm/kate/MembersActivity;->selected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-static {v0}, Lcom/perm/kate/FriendsCursorAdapter;->access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-static {v0}, Lcom/perm/kate/FriendsCursorAdapter;->access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method
