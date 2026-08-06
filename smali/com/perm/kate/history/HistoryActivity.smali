.class public Lcom/perm/kate/history/HistoryActivity;
.super Lcom/perm/kate/BaseActivity;
.source "HistoryActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/history/HistoryAdapter;

.field private history_list:Landroid/widget/ListView;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/history/HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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

    .prologue
    .line 57
    invoke-static {}, Lcom/perm/kate/history/History;->getHistory()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->items:Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    iget-object v1, p0, Lcom/perm/kate/history/HistoryActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/history/HistoryAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 59
    return-void
.end method

.method private onClearHistory()V
    .locals 2

    .prologue
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

    invoke-virtual {v0}, Lcom/perm/kate/history/HistoryAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method


# virtual methods
.method public fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 73
    const v0, 0x7f070167

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 74
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/perm/kate/history/HistoryActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0701b7

    invoke-virtual {p0, v0}, Lcom/perm/kate/history/HistoryActivity;->setHeaderTitle(I)V

    .line 29
    invoke-virtual {p0}, Lcom/perm/kate/history/HistoryActivity;->setupMenuButton()V

    .line 30
    const v0, 0x7f0e0203

    invoke-virtual {p0, v0}, Lcom/perm/kate/history/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->history_list:Landroid/widget/ListView;

    .line 31
    new-instance v0, Lcom/perm/kate/history/HistoryAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/history/HistoryAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    .line 32
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->history_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/history/HistoryActivity;->adapter:Lcom/perm/kate/history/HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-direct {p0}, Lcom/perm/kate/history/HistoryActivity;->displayHistoryData()V

    .line 34
    iget-object v0, p0, Lcom/perm/kate/history/HistoryActivity;->history_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/history/HistoryActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/perm/kate/history/HistoryActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/history/HistoryActivity;->onClearHistory()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
