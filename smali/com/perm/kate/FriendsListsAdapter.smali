.class public Lcom/perm/kate/FriendsListsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsListsAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/FriendsList;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    .line 21
    iput-object p2, p0, Lcom/perm/kate/FriendsListsAdapter;->mActivity:Landroid/app/Activity;

    .line 22
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsListsAdapter;->setData(Ljava/util/ArrayList;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/FriendsList;

    iget v0, v0, Lcom/perm/kate/api/FriendsList;->lid:I

    int-to-long v0, v0

    .line 51
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v5, p0, Lcom/perm/kate/FriendsListsAdapter;->mActivity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 59
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03010c

    invoke-virtual {v1, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 62
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .local v4, "vi":Landroid/view/View;
    :goto_0
    const v5, 0x7f0e0065

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, "name":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsListsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/FriendsList;

    .line 64
    .local v2, "list":Lcom/perm/kate/api/FriendsList;
    const v5, 0x7f0e0064

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, "img_user_photo":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 66
    iget-object v5, v2, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v5, v2, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    const v5, 0x7f020129

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :goto_1
    return-object v4

    .line 61
    .end local v0    # "img_user_photo":Landroid/widget/ImageView;
    .end local v2    # "list":Lcom/perm/kate/api/FriendsList;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v4    # "vi":Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4    # "vi":Landroid/view/View;
    goto :goto_0

    .line 70
    .restart local v0    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v2    # "list":Lcom/perm/kate/api/FriendsList;
    .restart local v3    # "name":Landroid/widget/TextView;
    :cond_1
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/FriendsList;>;"
    iget-object v1, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/FriendsList;

    .line 29
    .local v0, "l":Lcom/perm/kate/api/FriendsList;
    iget-object v2, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v0    # "l":Lcom/perm/kate/api/FriendsList;
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FriendsListsAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
