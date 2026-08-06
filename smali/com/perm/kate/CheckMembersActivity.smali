.class public Lcom/perm/kate/CheckMembersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CheckMembersActivity.java"


# instance fields
.field private btn_clear:Landroid/widget/ImageButton;

.field private btn_next:Landroid/widget/Button;

.field private check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

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

.field private current_filter:Ljava/lang/CharSequence;

.field private cursor:Landroid/database/Cursor;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private lv_user_list:Landroid/widget/ListView;

.field private new_chat:Z

.field private nextClickListener:Landroid/view/View$OnClickListener;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    .line 34
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->current_filter:Ljava/lang/CharSequence;

    .line 90
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$3;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 101
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$4;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 128
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$5;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->nextClickListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$6;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/CheckMembersActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->current_filter:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/CheckMembersActivity;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/CheckMembersActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/CheckMembersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/CheckMembersActivity;->uid:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/CheckMembersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/CheckMembersActivity;->checkUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/CheckMembersActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/CheckMembersActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CheckMembersActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private checkTextForNextButton()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    const v1, 0x7f0701b2

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    const v1, 0x7f07017e

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private checkUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/FriendsCursorAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/CheckMembersActivity;->checkTextForNextButton()V

    .line 119
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/CheckMembersActivity;->uid:J

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    .line 71
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 72
    new-instance v1, Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v2, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-direct {v1, p0, v2, v3}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    .line 73
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    new-instance v2, Lcom/perm/kate/CheckMembersActivity$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/CheckMembersActivity$2;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/FriendsCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 82
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "uid_str":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/CheckMembersActivity;->uid:J

    .line 46
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->setContentView(I)V

    .line 47
    const v1, 0x7f070472

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->setHeaderTitle(I)V

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/CheckMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.perm.kate.new_chat"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    .line 49
    const v1, 0x7f0e00d6

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    .line 50
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    const v1, 0x7f0e019f

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    const v3, 0x7f07017e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 54
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity;->nextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    const v1, 0x7f0e00d5

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    .line 57
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/perm/kate/CheckMembersActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    const v1, 0x7f0e00d4

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    const v1, 0x7f0e0091

    invoke-virtual {p0, v1}, Lcom/perm/kate/CheckMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 60
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_clear:Landroid/widget/ImageButton;

    new-instance v2, Lcom/perm/kate/CheckMembersActivity$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/CheckMembersActivity$1;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/CheckMembersActivity;->displayData()V

    .line 66
    return-void

    .line 55
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 168
    return-void
.end method
