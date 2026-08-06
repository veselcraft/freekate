.class public Lcom/perm/kate/AddStickersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AddStickersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/StickersAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callbackStockItems:Lcom/perm/kate/session/Callback;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private products:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation
.end field

.field skip:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->products:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    .line 59
    new-instance v0, Lcom/perm/kate/AddStickersActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AddStickersActivity$2;-><init>(Lcom/perm/kate/AddStickersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 75
    new-instance v0, Lcom/perm/kate/AddStickersActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AddStickersActivity$3;-><init>(Lcom/perm/kate/AddStickersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->callbackStockItems:Lcom/perm/kate/session/Callback;

    .line 138
    new-instance v0, Lcom/perm/kate/AddStickersActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AddStickersActivity$5;-><init>(Lcom/perm/kate/AddStickersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AddStickersActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AddStickersActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity;->callbackStockItems:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AddStickersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/AddStickersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AddStickersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/AddStickersActivity;->addFootballIfMissing(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AddStickersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity;->products:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AddStickersActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AddStickersActivity;->displayData()V

    return-void
.end method

.method private addFootballIfMissing(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "x":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    sget v2, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_FOOTBALL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v0, Lcom/perm/kate/api/Product;

    invoke-direct {v0}, Lcom/perm/kate/api/Product;-><init>()V

    .line 98
    .local v0, "p":Lcom/perm/kate/api/Product;
    sget v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_FOOTBALL:I

    iput v1, v0, Lcom/perm/kate/api/Product;->id:I

    .line 99
    const v1, 0x7f0700ab

    invoke-virtual {p0, v1}, Lcom/perm/kate/AddStickersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_FOOTBALL:[I

    iput-object v1, v0, Lcom/perm/kate/api/Product;->sticker_ids:[I

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v0    # "p":Lcom/perm/kate/api/Product;
    :cond_0
    return-void
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity;->products:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/StickersAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/AddStickersActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "x":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    invoke-virtual {p0}, Lcom/perm/kate/AddStickersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/perm/kate/AddStickersActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AddStickersActivity$4;-><init>(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/AddStickersActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/perm/kate/AddStickersActivity;->setContentView(I)V

    .line 27
    const v2, 0x7f0703fe

    invoke-virtual {p0, v2}, Lcom/perm/kate/AddStickersActivity;->setHeaderTitle(I)V

    .line 28
    const v2, 0x7f0e006e

    invoke-virtual {p0, v2}, Lcom/perm/kate/AddStickersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 29
    .local v0, "lv_list":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    new-instance v2, Lcom/perm/kate/StickersAdapter;

    invoke-direct {v2, p0}, Lcom/perm/kate/StickersAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 32
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/perm/kate/StickersAdapter;->show_buttons:Z

    .line 33
    iget-object v2, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/AddStickersActivity;->refreshInThread()V

    .line 37
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->getStickers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Product;

    .line 38
    .local v1, "p":Lcom/perm/kate/api/Product;
    iget-object v3, p0, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    iget v4, v1, Lcom/perm/kate/api/Product;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v1    # "p":Lcom/perm/kate/api/Product;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 108
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/AddStickersActivity;->showProgressBar(Z)V

    .line 43
    new-instance v0, Lcom/perm/kate/AddStickersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AddStickersActivity$1;-><init>(Lcom/perm/kate/AddStickersActivity;)V

    .line 54
    invoke-virtual {v0}, Lcom/perm/kate/AddStickersActivity$1;->start()V

    .line 55
    return-void
.end method
