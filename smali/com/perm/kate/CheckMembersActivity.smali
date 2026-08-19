.class public Lcom/perm/kate/CheckMembersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CheckMembersActivity.java"


# instance fields
.field private btn_clear:Landroid/widget/ImageButton;

.field private btn_next:Landroid/widget/Button;

.field private check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

.field private checked:Ljava/util/HashMap;

.field private current_filter:Ljava/lang/CharSequence;

.field private cursor:Landroid/database/Cursor;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private friends_invite:Z

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

    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    .line 34
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->current_filter:Ljava/lang/CharSequence;

    .line 97
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$3;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 108
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$4;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 140
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$5;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->nextClickListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$6;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/CheckMembersActivity;)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->current_filter:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$102(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/CheckMembersActivity;)Landroid/database/Cursor;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/CheckMembersActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/CheckMembersActivity;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/perm/kate/CheckMembersActivity;->uid:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/CheckMembersActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/CheckMembersActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/CheckMembersActivity;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/CheckMembersActivity;->checkUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/CheckMembersActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/CheckMembersActivity;)Ljava/util/HashMap;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/CheckMembersActivity;)Landroid/widget/ListView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method private checkTextForNextButton()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    const v1, 0x7f0f020e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    const v1, 0x7f0f01de

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private checkUser(Ljava/lang/String;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_2

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    if-eqz p1, :cond_3

    .line 127
    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/CheckMembersActivity;->checkTextForNextButton()V

    return-void
.end method

.method private displayData()V
    .locals 5

    .line 77
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/CheckMembersActivity;->uid:J

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchFriends(JLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 79
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter;

    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/perm/kate/CheckMembersActivity;->checked:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1, v2}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    .line 80
    new-instance v1, Lcom/perm/kate/CheckMembersActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/CheckMembersActivity$2;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->check_members_adapter:Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CheckMembersActivity;->uid:J

    const p1, 0x7f0c0040

    .line 46
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.friends_invite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0f0219

    .line 49
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0501

    .line 51
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.new_chat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    const p1, 0x7f09021e

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p1, 0x7f090090

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    .line 57
    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f02ae

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0f01de

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 61
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->nextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_next:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->new_chat:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/perm/kate/CheckMembersActivity;->friends_invite:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const p1, 0x7f0902bf

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    .line 64
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090150

    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900be

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/CheckMembersActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 67
    new-instance v0, Lcom/perm/kate/CheckMembersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/CheckMembersActivity$1;-><init>(Lcom/perm/kate/CheckMembersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/perm/kate/CheckMembersActivity;->displayData()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CheckMembersActivity;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/perm/kate/CheckMembersActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
