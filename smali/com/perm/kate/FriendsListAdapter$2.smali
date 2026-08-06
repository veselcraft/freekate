.class Lcom/perm/kate/FriendsListAdapter$2;
.super Ljava/lang/Object;
.source "FriendsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    .local v0, "ll_add_region":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, "uid_str":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/FriendsListAdapter;->access$200(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V

    .line 209
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v2}, Lcom/perm/kate/FriendsListAdapter;->access$300(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-static {v2}, Lcom/perm/kate/FriendsListAdapter;->access$300(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter$2;->this$0:Lcom/perm/kate/FriendsListAdapter;

    invoke-virtual {v2}, Lcom/perm/kate/FriendsListAdapter;->notifyDataSetChanged()V

    .line 214
    .end local v1    # "uid_str":Ljava/lang/String;
    :cond_2
    return-void
.end method
