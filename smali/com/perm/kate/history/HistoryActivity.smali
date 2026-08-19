.class public Lcom/perm/kate/history/HistoryActivity;
.super Lcom/perm/kate/BaseActivity;
.source "HistoryActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/history/HistoryAdapter;

.field private history_list:Landroid/widget/ListView;

.field private items:Ljava/util/ArrayList;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/perm/kate/history/HistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/history/HistoryActivity$1;-><init>(Lcom/perm/kate/history/HistoryActivity;)V

    iput-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private displayHistoryData()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/perm/kate/history/History;->getHistory()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->items:Ljava/util/ArrayList;

    .line 58
    iget-object v1, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/history/HistoryAdapter;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private onClearHistory()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/perm/kate/history/History;->clearHistory()V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    iget-object v1, p0, Lcom/perm/kate/history/HistoryActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/history/HistoryAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 91
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public fillMenuItems(Landroid/view/Menu;)Z
    .locals 3

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0f01cf

    .line 73
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a3

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0213

    .line 28
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f09016b

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/history/HistoryActivity;->history_list:Landroid/widget/ListView;

    .line 31
    new-instance p1, Lcom/perm/kate/history/HistoryAdapter;

    invoke-direct {p1, p0}, Lcom/perm/kate/history/HistoryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    .line 32
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->history_list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/history/HistoryActivity;->displayHistoryData()V

    .line 34
    iget-object p1, p0, Lcom/perm/kate/history/HistoryActivity;->history_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/perm/kate/history/HistoryActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/history/HistoryActivity;->onClearHistory()V

    return v1
.end method
