.class public Lcom/perm/kate/FriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FriendsFragment.java"


# instance fields
.field private audio_attachment:Ljava/lang/String;

.field private btn_clear:Landroid/widget/ImageButton;

.field private by_ListId_callback:Lcom/perm/kate/session/Callback;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback_friendsLists:Lcom/perm/kate/session/Callback;

.field private checked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field current_filter:Ljava/lang/CharSequence;

.field cursor:Landroid/database/Cursor;

.field private doc_attachment:Ljava/lang/String;

.field private enable_me_item:Z

.field filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private forward_messages:[J

.field private friendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation
.end field

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

.field sendClick:Landroid/view/View$OnClickListener;

.field sex_filter:I

.field private shared_photo:Landroid/net/Uri;

.field private shared_text:Ljava/lang/String;

.field uris_shared:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field user_id:Ljava/lang/Long;

.field private video_attachment:Ljava/lang/String;

.field private wall_attachment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 63
    iput-object v3, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    .line 65
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 66
    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    .line 67
    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    .line 77
    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    .line 78
    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->me_item_enabled:Z

    .line 79
    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    .line 82
    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    .line 83
    iput-object v3, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    .line 84
    iput-object v3, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    .line 128
    new-instance v0, Lcom/perm/kate/FriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$2;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->sendClick:Landroid/view/View$OnClickListener;

    .line 215
    new-instance v0, Lcom/perm/kate/FriendsFragment$4;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FriendsFragment$4;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 264
    iput-object v3, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->checked:Ljava/util/HashMap;

    .line 302
    new-instance v0, Lcom/perm/kate/FriendsFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$7;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 371
    new-instance v0, Lcom/perm/kate/FriendsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$8;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/perm/kate/FriendsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$9;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 456
    iput v2, p0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    .line 551
    new-instance v0, Lcom/perm/kate/FriendsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$11;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 578
    new-instance v0, Lcom/perm/kate/FriendsFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$12;-><init>(Lcom/perm/kate/FriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 655
    new-instance v0, Lcom/perm/kate/FriendsFragment$15;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FriendsFragment$15;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    .line 688
    new-instance v0, Lcom/perm/kate/FriendsFragment$17;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FriendsFragment$17;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->by_ListId_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->checked:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsFragment;JLjava/util/Set;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/Set;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/FriendsFragment;->showCompose(JLjava/util/Set;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->me_item_enabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->refetch()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/FriendsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->changeLists(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->callback_friendsLists:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showFriendsListsDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/FriendsFragment;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->by_ListId_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->diplayListInUiThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->diplayFriendsList(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/FriendsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->deleteFriend(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->requeryInUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/FriendsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->selectUserAndFinish(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    return v0
.end method

.method static synthetic access$800(Lcom/perm/kate/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    return v0
.end method

.method static synthetic access$900(Lcom/perm/kate/FriendsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/FriendsFragment;->showDeleteDialog(J)V

    return-void
.end method

.method private addMeItem(Landroid/view/LayoutInflater;)V
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v12, 0x0

    .line 145
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "me_id":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 147
    .local v8, "me":Lcom/perm/kate/api/User;
    const v0, 0x7f03010c

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 148
    .local v10, "me_item":Landroid/view/ViewGroup;
    const v0, 0x7f0e0065

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 149
    .local v11, "name":Landroid/widget/TextView;
    const v0, 0x7f0701b9

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 151
    const v0, 0x7f0e0064

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .local v2, "img_user_photo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v8, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    .line 153
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 154
    const v0, 0x7f0e00ee

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, v8, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v10, v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->me_item_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "img_user_photo":Landroid/widget/ImageView;
    .end local v8    # "me":Lcom/perm/kate/api/User;
    .end local v9    # "me_id":Ljava/lang/String;
    .end local v10    # "me_item":Landroid/view/ViewGroup;
    .end local v11    # "name":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 154
    .restart local v2    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v8    # "me":Lcom/perm/kate/api/User;
    .restart local v9    # "me_id":Ljava/lang/String;
    .restart local v10    # "me_item":Landroid/view/ViewGroup;
    .restart local v11    # "name":Landroid/widget/TextView;
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 157
    .end local v2    # "img_user_photo":Landroid/widget/ImageView;
    .end local v8    # "me":Lcom/perm/kate/api/User;
    .end local v9    # "me_id":Ljava/lang/String;
    .end local v10    # "me_item":Landroid/view/ViewGroup;
    .end local v11    # "name":Landroid/widget/TextView;
    :catch_0
    move-exception v7

    .line 158
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private changeLists(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "_list_id":Ljava/lang/Integer;
    if-lez p1, :cond_0

    .line 622
    if-ne p1, v3, :cond_2

    .line 623
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 636
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    if-eq v0, v1, :cond_1

    .line 637
    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    .line 638
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->list_id:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 639
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getByListIdInThread()V

    .line 643
    :cond_1
    :goto_1
    return-void

    .line 624
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 625
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 627
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 629
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 631
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    if-le v1, p1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/FriendsList;

    iget v1, v1, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 641
    :cond_7
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/perm/kate/FriendsFragment;->diplayFriendsList(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method private deleteFriend(J)V
    .locals 3
    .param p1, "friend_id"    # J

    .prologue
    .line 769
    new-instance v0, Lcom/perm/kate/FriendsFragment$21;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/perm/kate/FriendsFragment$21;-><init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;J)V

    .line 788
    .local v0, "delete_friend_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 789
    new-instance v1, Lcom/perm/kate/FriendsFragment$22;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/FriendsFragment$22;-><init>(Lcom/perm/kate/FriendsFragment;JLcom/perm/kate/session/Callback;)V

    .line 794
    invoke-virtual {v1}, Lcom/perm/kate/FriendsFragment$22;->start()V

    .line 795
    return-void
.end method

.method private diplayFriendsList(Ljava/util/ArrayList;Z)V
    .locals 7
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 721
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_0
    if-eqz p2, :cond_2

    .line 724
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, ""

    iget-boolean v5, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget v6, p0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZI)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 728
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 729
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    new-instance v1, Lcom/perm/kate/FriendsFragment$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/perm/kate/FriendsFragment$19;-><init>(Lcom/perm/kate/FriendsFragment;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 754
    return-void

    .line 727
    :cond_2
    new-instance v0, Lcom/perm/kate/UserCursor;

    invoke-direct {v0, p1}, Lcom/perm/kate/UserCursor;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method private diplayListInUiThread(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FriendsFragment$18;-><init>(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayData()V
    .locals 5

    .prologue
    .line 273
    :try_start_0
    iget-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/perm/kate/FriendsFragment;->checked:Ljava/util/HashMap;

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    .line 276
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perm/kate/FriendsCursorAdapter;->clickable_checkboxes:Z

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    new-instance v2, Lcom/perm/kate/FriendsFragment$6;

    invoke-direct {v2, p0}, Lcom/perm/kate/FriendsFragment$6;-><init>(Lcom/perm/kate/FriendsFragment;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/FriendsCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 289
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    :goto_1
    return-void

    .line 278
    :cond_0
    new-instance v1, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/perm/kate/FriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/FriendsFragment;->displayToast(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private fetchData()V
    .locals 5

    .prologue
    .line 298
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, ""

    iget-boolean v4, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 299
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 300
    return-void
.end method

.method private getFriendsList()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 647
    new-instance v0, Lcom/perm/kate/FriendsFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$14;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 652
    invoke-virtual {v0}, Lcom/perm/kate/FriendsFragment$14;->start()V

    .line 653
    return-void
.end method

.method private getLastRefreshDate()J
    .locals 6

    .prologue
    .line 531
    invoke-static {}, Lcom/perm/kate/FriendsFragment;->getPrefName()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "preference_name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 533
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 534
    .local v0, "last_check":J
    return-wide v0
.end method

.method private static getPrefName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_friends_1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "preference_name":Ljava/lang/String;
    return-object v0
.end method

.method private refetch()V
    .locals 7

    .prologue
    .line 506
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 508
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    iget v6, p0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;ZI)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    .line 509
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/FriendsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 510
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 511
    return-void
.end method

.method private requeryInUiThread(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FriendsFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FriendsFragment$5;-><init>(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private selectUserAndFinish(J)V
    .locals 3
    .param p1, "member_id"    # J

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "com.perm.kate.member_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 339
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 340
    return-void
.end method

.method public static setLastRefreshedDate(J)V
    .locals 4
    .param p0, "now"    # J

    .prologue
    .line 538
    invoke-static {}, Lcom/perm/kate/FriendsFragment;->getPrefName()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "preference_name":Ljava/lang/String;
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 540
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 543
    return-void
.end method

.method private showCompose(JLjava/util/Set;)V
    .locals 5
    .param p1, "user_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "user_ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    .line 344
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 345
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 346
    const/4 p3, 0x0

    .line 348
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_2

    .line 350
    const-string v1, "com.perm.kate.user_ids"

    check-cast p3, Ljava/io/Serializable;

    .end local p3    # "user_ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->forward_messages:[J

    if-eqz v1, :cond_1

    .line 354
    const-string v1, "com.perm.kate.forward_messages"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->forward_messages:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 355
    :cond_1
    const-string v1, "com.perm.kate.photo_attachment"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->photo_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "com.perm.kate.wall_attachment"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->wall_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "com.perm.kate.audio_attachment"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->audio_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "com.perm.kate.video_attachment"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->video_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v1, "com.perm.kate.doc_attachment"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->doc_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "shared_photo"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->shared_photo:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    const-string v1, "shared_photos"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->uris_shared:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 362
    const-string v1, "shared_text"

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->shared_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0, v3}, Lcom/perm/kate/FriendsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 365
    return-void

    .line 352
    .restart local p3    # "user_ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    const-string v1, "com.perm.kate.user_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showDeleteDialog(J)V
    .locals 5
    .param p1, "friend_id"    # J

    .prologue
    .line 757
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/FriendsFragment$20;

    invoke-direct {v3, p0, p1, p2}, Lcom/perm/kate/FriendsFragment$20;-><init>(Lcom/perm/kate/FriendsFragment;J)V

    .line 759
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 764
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 766
    return-void
.end method

.method private showFilterDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 475
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f070422

    invoke-virtual {p0, v4}, Lcom/perm/kate/FriendsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v3

    const v3, 0x7f070421

    invoke-virtual {p0, v3}, Lcom/perm/kate/FriendsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const v4, 0x7f070420

    invoke-virtual {p0, v4}, Lcom/perm/kate/FriendsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v3

    .line 476
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07025e

    .line 477
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/perm/kate/FriendsFragment$10;

    invoke-direct {v4, p0}, Lcom/perm/kate/FriendsFragment$10;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 478
    invoke-virtual {v3, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 500
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 501
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 502
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 503
    return-void
.end method

.method private showFriendsListsDialog()V
    .locals 10

    .prologue
    .line 587
    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->getFriendsList()V

    .line 617
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v7, 0x7f0701a8

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "array":[Ljava/lang/String;
    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, 0x6

    .line 596
    .local v6, "size":I
    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 597
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f07012c

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 598
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_1

    .line 599
    add-int/lit8 v7, v2, 0x1

    aget-object v8, v0, v2

    aput-object v8, v3, v7

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 600
    :cond_1
    const/4 v5, 0x6

    .line 601
    .local v5, "real_size":I
    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 602
    const/4 v2, 0x0

    :goto_2
    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 603
    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/FriendsList;

    iget v7, v7, Lcom/perm/kate/api/FriendsList;->lid:I

    const/16 v8, 0x19

    if-lt v7, v8, :cond_2

    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/FriendsList;

    iget v7, v7, Lcom/perm/kate/api/FriendsList;->lid:I

    const/16 v8, 0x1d

    if-le v7, v8, :cond_3

    .line 604
    :cond_2
    add-int/lit8 v8, v2, 0x6

    iget-object v7, p0, Lcom/perm/kate/FriendsFragment;->friendsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/FriendsList;

    iget-object v7, v7, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    aput-object v7, v3, v8

    .line 605
    add-int/lit8 v5, v5, 0x1

    .line 602
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 607
    :cond_4
    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 608
    .local v4, "real_items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_5

    .line 609
    aget-object v7, v3, v2

    aput-object v7, v4, v2

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 610
    :cond_5
    new-instance v7, Lcom/perm/kate/FriendsFragment$13;

    invoke-direct {v7, p0}, Lcom/perm/kate/FriendsFragment$13;-><init>(Lcom/perm/kate/FriendsFragment;)V

    invoke-virtual {v1, v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 615
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private showHideFilter()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 514
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->ll_friend_search:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->ll_friend_search:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->ll_friend_search:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 516
    :cond_1
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1f9

    .line 450
    iget-boolean v0, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    if-eqz v0, :cond_0

    .line 451
    const v0, 0x7f0701a8

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 452
    :cond_0
    const/16 v0, 0x1fa

    const v1, 0x7f0702d8

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method public getByListIdInThread()V
    .locals 1

    .prologue
    .line 679
    new-instance v0, Lcom/perm/kate/FriendsFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$16;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 685
    invoke-virtual {v0}, Lcom/perm/kate/FriendsFragment$16;->start()V

    .line 686
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 801
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 804
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_0

    .line 199
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "online_first"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->online_first:Z

    .line 170
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.select_user"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    .line 171
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.new_message"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    .line 172
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.forward_messages"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->forward_messages:[J

    .line 173
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.photo_attachment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->photo_attachment:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.wall_attachment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->wall_attachment:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.audio_attachment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->audio_attachment:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.video_attachment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->video_attachment:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.doc_attachment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->doc_attachment:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.enable_me"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    .line 179
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shared_photo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->shared_photo:Landroid/net/Uri;

    .line 180
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shared_photos"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->uris_shared:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shared_text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->shared_text:Ljava/lang/String;

    .line 182
    if-nez v1, :cond_1

    .line 183
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->fetchData()V

    .line 194
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->isMe:Z

    .line 196
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThreadSometimes()V

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThread()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 89
    const v2, 0x7f03007b

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->ll_friend_search:Landroid/widget/FrameLayout;

    .line 93
    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 94
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 96
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 99
    :cond_0
    const v2, 0x7f0e00d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    .line 100
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->enable_me_item:Z

    if-eqz v2, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsFragment;->addMeItem(Landroid/view/LayoutInflater;)V

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->displayData()V

    .line 109
    const v2, 0x7f0e0091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 110
    iget-object v2, p0, Lcom/perm/kate/FriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    new-instance v3, Lcom/perm/kate/FriendsFragment$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/FriendsFragment$1;-><init>(Lcom/perm/kate/FriendsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->select_user:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/perm/kate/FriendsFragment;->new_message:Z

    if-eqz v2, :cond_3

    .line 118
    const v2, 0x7f0e0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "share_container":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v2, :cond_2

    .line 121
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_2
    const v2, 0x7f0e01a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment;->sendClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .end local v0    # "share_container":Landroid/view/View;
    :cond_3
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 419
    :cond_1
    iput-object v2, p0, Lcom/perm/kate/FriendsFragment;->notes:Lcom/perm/kate/FriendsCursorAdapter;

    .line 420
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 421
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 471
    :pswitch_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 462
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showHideFilter()V

    goto :goto_0

    .line 465
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showFriendsListsDialog()V

    goto :goto_0

    .line 468
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->showFilterDialog()V

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThread()V

    .line 564
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 568
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 569
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_messages"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 575
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 576
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/perm/kate/FriendsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsFragment$3;-><init>(Lcom/perm/kate/FriendsFragment;)V

    .line 212
    invoke-virtual {v0}, Lcom/perm/kate/FriendsFragment$3;->start()V

    .line 213
    return-void
.end method

.method refreshInThreadSometimes()V
    .locals 8

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/perm/kate/FriendsFragment;->getLastRefreshDate()J

    move-result-wide v0

    .line 522
    .local v0, "last_check":J
    const-wide/32 v2, 0x493e0

    .line 523
    .local v2, "max_period":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 524
    .local v4, "now":J
    sub-long v6, v4, v0

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/perm/kate/FriendsFragment;->refreshInThread()V

    .line 526
    invoke-static {v4, v5}, Lcom/perm/kate/FriendsFragment;->setLastRefreshedDate(J)V

    .line 528
    :cond_0
    return-void
.end method
