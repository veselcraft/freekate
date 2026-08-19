.class public Lcom/perm/kate/FriendsListsAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsListsAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLists:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    .line 21
    iput-object p2, p0, Lcom/perm/kate/FriendsListsAdapter;->mActivity:Landroid/app/Activity;

    .line 22
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsListsAdapter;->setData(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/FriendsList;

    iget p1, p1, Lcom/perm/kate/api/FriendsList;->lid:I

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 56
    iget-object p2, p0, Lcom/perm/kate/FriendsListsAdapter;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0c012c

    .line 57
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0903e6

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0, p1}, Lcom/perm/kate/FriendsListsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/FriendsList;

    const v1, 0x7f090188

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p1, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget p1, p1, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0801de

    .line 66
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 68
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/perm/kate/FriendsListsAdapter;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
