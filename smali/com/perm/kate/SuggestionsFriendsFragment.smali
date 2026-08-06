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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
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

    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/SuggestionsFriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/SuggestionsFriendsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/SuggestionsFriendsFragment;Lcom/perm/kate/api/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SuggestionsFriendsFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->hideUser(Lcom/perm/kate/api/User;)V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 163
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/perm/kate/UsersListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/UsersListAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 166
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayToast(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
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
    .line 153
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/SuggestionsFriendsFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment$5;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method private filter(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "filtred":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 181
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-object v3, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_3
    invoke-direct {p0, v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 255
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 256
    return-void
.end method

.method private hideUser(Lcom/perm/kate/api/User;)V
    .locals 4
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->account_id:J

    iget-wide v2, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/utils/RecommendationsHelper;->hideUser(JJ)V

    .line 265
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->displayData(Ljava/util/ArrayList;)V

    .line 267
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 138
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->setHasOptionsMenu(Z)V

    .line 69
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->account_id:J

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 48
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 51
    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    .line 52
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 55
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->btn_clear:Landroid/widget/ImageButton;

    new-instance v2, Lcom/perm/kate/SuggestionsFriendsFragment$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$1;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 118
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V

    .line 261
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->showProgressBar(Z)V

    .line 75
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SuggestionsFriendsFragment$2;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    .line 82
    invoke-virtual {v0}, Lcom/perm/kate/SuggestionsFriendsFragment$2;->start()V

    .line 83
    return-void
.end method
