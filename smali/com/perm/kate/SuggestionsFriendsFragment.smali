.class public Lcom/perm/kate/SuggestionsFriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "SuggestionsFriendsFragment.java"


# instance fields
.field private account_id:J

.field private adapter:Lcom/perm/kate/UsersListAdapter;

.field private btn_clear:Landroid/widget/ImageButton;

.field private callback:Lcom/perm/kate/session/Callback;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private suggestions:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/SuggestionsFriendsFragment$3;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 120
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$4;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 187
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$6;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 202
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$7;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 243
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$8;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/utils/ScrollPauser;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/SuggestionsFriendsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/SuggestionsFriendsFragment;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/SuggestionsFriendsFragment;Lcom/perm/kate/api/User;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->hideUser(Lcom/perm/kate/api/User;)V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 2

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/kate/UsersListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/UsersListAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 166
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/SuggestionsFriendsFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment$5;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private filter(Ljava/lang/CharSequence;)V
    .locals 4

    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 181
    iget-object v3, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_3
    invoke-direct {p0, v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 255
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private hideUser(Lcom/perm/kate/api/User;)V
    .locals 4

    .line 264
    iget-wide v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->account_id:J

    iget-wide v2, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/utils/RecommendationsHelper;->hideUser(JJ)V

    .line 265
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 138
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 69
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->account_id:J

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021e

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 48
    iget-object p3, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 50
    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p2, 0x7f0902bf

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    .line 52
    iget-object p3, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 55
    new-instance p3, Lcom/perm/kate/SuggestionsFriendsFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$1;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 75
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$2;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
