.class public Lcom/perm/kate/FriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FriendsFragment.java"


# instance fields
.field private btn_clear:Landroid/widget/ImageButton;

.field private by_ListId_callback:Lcom/perm/kate/session/Callback;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback_friendsLists:Lcom/perm/kate/session/Callback;

.field checked:Ljava/util/HashMap;

.field current_filter:Ljava/lang/CharSequence;

.field cursor:Landroid/database/Cursor;

.field private enable_me_item:Z

.field filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private forward_messages:[J

.field private friendsList:Ljava/util/ArrayList;

.field private isMe:Z

.field private itemMenuClickListener:Landroid/view/View$OnClickListener;

.field private list_id:Ljava/lang/Integer;

.field private ll_friend_search:Landroid/widget/FrameLayout;

.field private lv_user_list:Landroid/widget/ListView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private me_item_enabled:Z

.field private new_message:Z

.field private notes:Lcom/perm/kate/FriendsCursorAdapter;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field online_first:Z

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private photo_attachment:Ljava/lang/String;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private select_user:Z

.field selected_city:J

.field sex_filter:I

.field private shared_photo:Landroid/net/Uri;

.field private shared_text:Ljava/lang/String;

.field uris_shared:Ljava/util/ArrayList;

.field user_id:Ljava/lang/Long;


# direct methods
.method public static synthetic $r8$lambda$cPxDL-VmcDl_ITf0fEOmibW12gk(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/FriendsFragment;->lambda$showFilterDialog$1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ikccJzD_f3f6MKE6_XsL5pwaU9I(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->lambda$showFilterDialog$0(Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    .line 69
    new-instance v1, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v1}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/FriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    .line 71
    iput-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    .line 77
    iput-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    .line 78
    iput-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->me_item_enabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    .line 82
    iput-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    .line 83
    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    .line 84
    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    .line 195
    new-instance v2, Lcom/perm/kate/FriendsFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/perm/kate/FriendsFragment$3;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 247
    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    const-string v0, ""

    .line 249
    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->checked:Ljava/util/HashMap;

    .line 287
    new-instance v0, Lcom/perm/kate/FriendsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$6;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 357
    new-instance v0, Lcom/perm/kate/FriendsFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$7;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 409
    new-instance v0, Lcom/perm/kate/FriendsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$8;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 442
    iput v1, p0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    const-wide/16 v0, 0x0

    .line 539
    iput-wide v0, p0, Lcom/perm/kate/FriendsFragment;->selected_city:J

    .line 587
    new-instance v0, Lcom/perm/kate/FriendsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$11;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 614
    new-instance v0, Lcom/perm/kate/FriendsFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$12;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    new-instance v0, Lcom/perm/kate/FriendsFragment$15;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FriendsFragment$15;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    .line 724
    new-instance v0, Lcom/perm/kate/FriendsFragment$17;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FriendsFragment$17;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->by_ListId_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->requeryInUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->refetch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/FriendsFragment;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->changeLists(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/FriendsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showFriendsListsDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/FriendsFragment;)Ljava/lang/Integer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/FriendsFragment;->by_ListId_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->diplayListInUiThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->diplayFriendsList(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/FriendsFragment;J)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->deleteFriend(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/FriendsFragment;->fetchCities(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FriendsFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    return p0
.end method

.method static synthetic access$400(Lcom/perm/kate/FriendsFragment;J)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->selectUserAndFinish(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/FriendsFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/FriendsFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    return p0
.end method

.method static synthetic access$700(Lcom/perm/kate/FriendsFragment;JLjava/util/Set;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/FriendsFragment;->showCompose(JLjava/util/Set;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/FriendsFragment;J)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->showDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/FriendsFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/perm/kate/FriendsFragment;->me_item_enabled:Z

    return p0
.end method

.method private addMeItem(Landroid/view/LayoutInflater;)V
    .locals 12

    .line 121
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    const v2, 0x7f0c012c

    .line 123
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v2, 0x7f0903e6

    .line 124
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0215

    .line 125
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090188

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 128
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v8, 0x1

    const/16 v9, 0x5a

    .line 129
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v10

    const/4 v11, 0x1

    move-object v7, v0

    .line 128
    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const v2, 0x7f09009a

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, v1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 132
    iput-boolean v3, p0, Lcom/perm/kate/FriendsFragment;->me_item_enabled:Z

    .line 133
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    .line 135
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    invoke-virtual {p1, v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 136
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 137
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 138
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 141
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private changeLists(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_5

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1c

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/16 p1, 0x1d

    .line 661
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x1b

    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/16 p1, 0x19

    .line 665
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    const/16 p1, 0x1a

    .line 667
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 669
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    if-le v2, p1, :cond_5

    .line 670
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x6

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/FriendsList;

    iget p1, p1, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object p1, v1

    .line 672
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    if-eq p1, v2, :cond_7

    .line 673
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 675
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getByListIdInThread()V

    goto :goto_1

    .line 677
    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/perm/kate/FriendsFragment;->diplayFriendsList(Ljava/util/ArrayList;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private deleteFriend(J)V
    .locals 2

    .line 805
    new-instance v0, Lcom/perm/kate/FriendsFragment$21;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/perm/kate/FriendsFragment$21;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;J)V

    const/4 v1, 0x1

    .line 824
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 825
    new-instance v1, Lcom/perm/kate/FriendsFragment$22;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/FriendsFragment$22;-><init>(Lcom/perm/kate/FriendsFragment;JLcom/perm/kate/session/Callback;)V

    .line 830
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private diplayFriendsList(Ljava/util/ArrayList;Z)V
    .locals 9

    .line 755
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 757
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz p2, :cond_1

    .line 760
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v5, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget v6, p0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    iget-wide v7, p0, Lcom/perm/kate/FriendsFragment;->selected_city:J

    const-string v4, ""

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZIJ)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    goto :goto_0

    .line 763
    :cond_1
    new-instance v0, Lcom/perm/kate/UserCursor;

    invoke-direct {v0, p1}, Lcom/perm/kate/UserCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 764
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 765
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    if-eqz v0, :cond_2

    .line 766
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    new-instance v1, Lcom/perm/kate/FriendsFragment$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/perm/kate/FriendsFragment$19;-><init>(Lcom/perm/kate/FriendsFragment;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    return-void
.end method

.method private diplayListInUiThread(Ljava/util/ArrayList;)V
    .locals 2

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 744
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FriendsFragment$18;-><init>(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private displayData()V
    .locals 4

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->checked:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    const/4 v1, 0x1

    .line 259
    iput-boolean v1, v0, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    new-instance v1, Lcom/perm/kate/FriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/FriendsFragment$5;-><init>(Lcom/perm/kate/FriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 272
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 274
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private fetchCities(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .line 515
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 516
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    .line 518
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0f04b4

    .line 519
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 522
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchFriendCities(J)Landroid/database/Cursor;

    move-result-object v2

    .line 523
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 524
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 525
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    .line 526
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 528
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    const-string p2, "ff_fetchCities"

    .line 535
    invoke-static {v0, v1, p2, p1}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method private fetchData()V
    .locals 7

    .line 281
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 282
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    const-string v6, ""

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "ff_fetchFriends"

    .line 283
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 284
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private getFriendsList()V
    .locals 1

    const/4 v0, 0x1

    .line 682
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 683
    new-instance v0, Lcom/perm/kate/FriendsFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$14;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 688
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getLastRefreshDate()J
    .locals 4

    .line 567
    invoke-static {}, Lcom/perm/kate/FriendsFragment;->getPrefName()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 569
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getPrefName()Ljava/lang/String;
    .locals 2

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_friends_1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showFilterDialog$0(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3

    .line 490
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    .line 491
    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 492
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private synthetic lambda$showFilterDialog$1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 8

    .line 477
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v7, Lcom/perm/kate/FriendsFragment$9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/FriendsFragment$9;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 479
    invoke-virtual {v0, p1, v7, p2}, Lcom/perm/kate/session/Session;->getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/perm/kate/FriendsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p4}, Lcom/perm/kate/FriendsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refetch()V
    .locals 9

    .line 542
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 544
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget v6, p0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    iget-wide v7, p0, Lcom/perm/kate/FriendsFragment;->selected_city:J

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZIJ)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 545
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 546
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private requeryInUiThread(Ljava/lang/Integer;)V
    .locals 2

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FriendsFragment$4;-><init>(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectUserAndFinish(J)V
    .locals 2

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.member_id"

    .line 322
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static setLastRefreshedDate(J)V
    .locals 2

    .line 574
    invoke-static {}, Lcom/perm/kate/FriendsFragment;->getPrefName()Ljava/lang/String;

    move-result-object v0

    .line 575
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 576
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 577
    invoke-interface {v1, v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showCompose(JLjava/util/Set;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 333
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 334
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 p3, 0x0

    .line 337
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_1

    .line 340
    check-cast p3, Ljava/io/Serializable;

    const-string p1, "com.perm.kate.user_ids"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.user_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment;->forward_messages:[J

    if-eqz p1, :cond_2

    const-string p2, "com.perm.kate.forward_messages"

    .line 344
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment;->photo_attachment:Ljava/lang/String;

    const-string p2, "com.perm.kate.photo_attachment"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment;->shared_photo:Landroid/net/Uri;

    const-string p2, "shared_photo"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment;->uris_shared:Ljava/util/ArrayList;

    const-string p2, "shared_photos"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 348
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment;->shared_text:Ljava/lang/String;

    const-string p2, "shared_text"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showDeleteDialog(J)V
    .locals 3

    .line 793
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 794
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f01e3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/FriendsFragment$20;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/kate/FriendsFragment$20;-><init>(Lcom/perm/kate/FriendsFragment;J)V

    const p1, 0x7f0f05a7

    .line 795
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v1, 0x0

    .line 800
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 801
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showFilterDialog()V
    .locals 13

    .line 461
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090155

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v3, 0x7f0900bd

    .line 463
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 466
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 467
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 469
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-direct {p0, v10, v8, v6}, Lcom/perm/kate/FriendsFragment;->fetchCities(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 476
    new-instance v11, Ljava/lang/Thread;

    new-instance v12, Lcom/perm/kate/FriendsFragment$$ExternalSyntheticLambda1;

    move-object v4, v12

    move-object v5, p0

    move-object v7, v10

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/perm/kate/FriendsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 495
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 497
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/FriendsFragment$10;

    invoke-direct {v4, p0, v1, v3, v10}, Lcom/perm/kate/FriendsFragment$10;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    const v1, 0x7f0f0398

    .line 499
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 509
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showFriendsListsDialog()V
    .locals 7

    .line 623
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->getFriendsList()V

    goto/16 :goto_3

    .line 626
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0204

    .line 627
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 631
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    add-int/2addr v2, v3

    .line 632
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 633
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f019a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    .line 634
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 635
    aget-object v4, v1, v4

    aput-object v4, v2, v6

    move v4, v6

    goto :goto_0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 638
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 639
    iget-object v4, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/FriendsList;

    iget v4, v4, Lcom/perm/kate/api/FriendsList;->lid:I

    const/16 v6, 0x19

    if-lt v4, v6, :cond_2

    iget-object v4, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/FriendsList;

    iget v4, v4, Lcom/perm/kate/api/FriendsList;->lid:I

    const/16 v6, 0x1d

    if-le v4, v6, :cond_3

    :cond_2
    add-int/lit8 v4, v1, 0x6

    .line 640
    iget-object v6, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/FriendsList;

    iget-object v6, v6, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    aput-object v6, v2, v4

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 643
    :cond_4
    new-array v1, v3, [Ljava/lang/CharSequence;

    :goto_2
    if-ge v5, v3, :cond_5

    .line 645
    aget-object v4, v2, v5

    aput-object v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 646
    :cond_5
    new-instance v2, Lcom/perm/kate/FriendsFragment$13;

    invoke-direct {v2, p0}, Lcom/perm/kate/FriendsFragment$13;-><init>(Lcom/perm/kate/FriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void
.end method

.method private showHideFilter()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->ll_friend_search:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    .line 436
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    const/4 v1, 0x0

    const/16 v2, 0x1f9

    if-eqz v0, :cond_0

    const v0, 0x7f0f0204

    .line 437
    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/16 v0, 0x1fa

    const v3, 0x7f0f0335

    .line 438
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public getByListIdInThread()V
    .locals 1

    .line 715
    new-instance v0, Lcom/perm/kate/FriendsFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$16;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 721
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "online_first"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.select_user"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.new_message"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.forward_messages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->forward_messages:[J

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.photo_attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->photo_attachment:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.enable_me"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_photo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->shared_photo:Landroid/net/Uri;

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_photos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->uris_shared:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->shared_text:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 162
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->fetchData()V

    .line 173
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    .line 175
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThreadSometimes()V

    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThread()V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090150

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment;->ll_friend_search:Landroid/widget/FrameLayout;

    const p3, 0x7f09021e

    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 94
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 96
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 97
    iget-object p3, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    :cond_0
    const p3, 0x7f0902bf

    .line 99
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-boolean p3, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    if-eqz p3, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->addMeItem(Landroid/view/LayoutInflater;)V

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->displayData()V

    const p1, 0x7f0900be

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/FriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 110
    new-instance p3, Lcom/perm/kate/FriendsFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/FriendsFragment$1;-><init>(Lcom/perm/kate/FriendsFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 404
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 405
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    .line 406
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 446
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1f6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1fa

    if-eq v0, v1, :cond_0

    .line 457
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showFilterDialog()V

    return v2

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showFriendsListsDialog()V

    return v2

    .line 448
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showHideFilter()V

    return v2
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 599
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThread()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 604
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 605
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_messages"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 610
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 611
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .line 181
    new-instance v0, Lcom/perm/kate/FriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$2;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method refreshInThreadSometimes()V
    .locals 7

    .line 557
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->getLastRefreshDate()J

    move-result-wide v0

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x493e0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThread()V

    .line 562
    invoke-static {v2, v3}, Lcom/perm/kate/FriendsFragment;->setLastRefreshedDate(J)V

    :cond_0
    return-void
.end method
