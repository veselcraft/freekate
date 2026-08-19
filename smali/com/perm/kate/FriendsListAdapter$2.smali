.class Lcom/perm/kate/FriendsListAdapter$2;
.super Ljava/lang/Object;
.source "FriendsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListAdapter;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/FriendsListAdapter;->access$200(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V

    :cond_0
    const/16 v1, 0x8

    .line 208
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {p1}, Lcom/perm/kate/FriendsListAdapter;->access$300(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {p1}, Lcom/perm/kate/FriendsListAdapter;->access$300(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
