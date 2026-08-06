.class public Lcom/perm/kate/MyStickersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MyStickersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/StickersAdapter;

.field dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private listener:Landroid/view/View$OnClickListener;

.field private lv_list:Landroid/widget/ListView;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/perm/kate/MyStickersActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MyStickersActivity$2;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->listener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/perm/kate/MyStickersActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MyStickersActivity$3;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MyStickersActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MyStickersActivity;)Lcom/perm/kate/StickersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MyStickersActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    return-object v0
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/perm/kate/StickersAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/StickersAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 62
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    iget-object v2, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/StickersAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/MyStickersActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 81
    const-string v1, "product"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 82
    .local v0, "product":Lcom/perm/kate/api/Product;
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-direct {p0}, Lcom/perm/kate/MyStickersActivity;->displayData()V

    .line 84
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;)V

    .line 86
    .end local v0    # "product":Lcom/perm/kate/api/Product;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v3, 0x7f0300b2

    invoke-virtual {p0, v3}, Lcom/perm/kate/MyStickersActivity;->setContentView(I)V

    .line 28
    const v3, 0x7f070474

    invoke-virtual {p0, v3}, Lcom/perm/kate/MyStickersActivity;->setHeaderTitle(I)V

    .line 29
    const v3, 0x7f0e006e

    invoke-virtual {p0, v3}, Lcom/perm/kate/MyStickersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    .line 30
    iget-object v3, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    check-cast v3, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v4, p0, Lcom/perm/kate/MyStickersActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {v3, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 31
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->getStickers()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/MyStickersActivity;->displayData()V

    .line 33
    const v3, 0x7f0e0069

    invoke-virtual {p0, v3}, Lcom/perm/kate/MyStickersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/MyStickersActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/MyStickersActivity;->setButtonsBg()V

    .line 37
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 38
    .local v0, "account_id":J
    invoke-static {v0, v1, p0}, Lcom/perm/kate/StickerHints;->refreshInThread(JLandroid/app/Activity;)V

    .line 41
    const v3, 0x7f0e024c

    invoke-virtual {p0, v3}, Lcom/perm/kate/MyStickersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 42
    .local v2, "check":Landroid/widget/CheckBox;
    invoke-static {}, Lcom/perm/kate/StickerHints;->getShowStickerHints()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    new-instance v3, Lcom/perm/kate/MyStickersActivity$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/MyStickersActivity$1;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    .line 54
    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 55
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 56
    return-void
.end method
