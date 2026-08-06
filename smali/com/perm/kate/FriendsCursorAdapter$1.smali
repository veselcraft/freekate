.class Lcom/perm/kate/FriendsCursorAdapter$1;
.super Ljava/lang/Object;
.source "FriendsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsCursorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsCursorAdapter;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 115
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-static {v2}, Lcom/perm/kate/FriendsCursorAdapter;->access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 119
    iget-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-static {v2}, Lcom/perm/kate/FriendsCursorAdapter;->access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {v2}, Lcom/perm/kate/FriendsCursorAdapter;->notifyDataSetChanged()V

    .line 124
    return-void

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/FriendsCursorAdapter$1;->this$0:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-static {v2}, Lcom/perm/kate/FriendsCursorAdapter;->access$000(Lcom/perm/kate/FriendsCursorAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
