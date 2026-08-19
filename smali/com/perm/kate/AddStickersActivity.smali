.class public Lcom/perm/kate/AddStickersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AddStickersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/StickersAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private products:Ljava/util/ArrayList;

.field skip:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->products:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    .line 63
    new-instance v0, Lcom/perm/kate/AddStickersActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AddStickersActivity$2;-><init>(Lcom/perm/kate/AddStickersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 148
    new-instance v0, Lcom/perm/kate/AddStickersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AddStickersActivity$4;-><init>(Lcom/perm/kate/AddStickersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AddStickersActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/AddStickersActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/AddStickersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AddStickersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/AddStickersActivity;->products:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/AddStickersActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/AddStickersActivity;->displayData()V

    return-void
.end method

.method private displayData()V
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity;->products:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/StickersAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/perm/kate/AddStickersActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AddStickersActivity$3;-><init>(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0493

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09021c

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 29
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    new-instance v0, Lcom/perm/kate/StickersAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/StickersAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, v0, Lcom/perm/kate/StickersAdapter;->show_buttons:Z

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/AddStickersActivity;->refreshInThread()V

    .line 37
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->getStickers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 38
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity;->skip:Ljava/util/HashSet;

    iget v0, v0, Lcom/perm/kate/api/Product;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/perm/kate/AddStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 118
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 43
    new-instance v0, Lcom/perm/kate/AddStickersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AddStickersActivity$1;-><init>(Lcom/perm/kate/AddStickersActivity;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
