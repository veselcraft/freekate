.class public Lcom/perm/kate/MyStickersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MyStickersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/StickersAdapter;

.field dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private listener:Landroid/view/View$OnClickListener;

.field private lv_list:Landroid/widget/ListView;

.field private products:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/perm/kate/MyStickersActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MyStickersActivity$3;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->listener:Landroid/view/View$OnClickListener;

    .line 106
    new-instance v0, Lcom/perm/kate/MyStickersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MyStickersActivity$4;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MyStickersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/MyStickersActivity;)Lcom/perm/kate/StickersAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    return-object p0
.end method

.method private displayData()V
    .locals 2

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/perm/kate/StickersAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/StickersAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 79
    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    iget-object v1, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/StickersAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "product"

    .line 99
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Product;

    .line 100
    iget-object p2, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/perm/kate/MyStickersActivity;->displayData()V

    .line 102
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c3

    .line 29
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0503

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09021c

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    .line 32
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 33
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setMaxScrollSpeed(F)V

    .line 34
    iget-object p1, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    new-instance v0, Lcom/perm/kate/MyStickersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MyStickersActivity$1;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->getStickers()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity;->products:Ljava/util/ArrayList;

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/MyStickersActivity;->displayData()V

    const p1, 0x7f09005d

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MyStickersActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 49
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    invoke-static {v0, v1, p0}, Lcom/perm/kate/StickerHints;->refreshInThread(JLandroid/app/Activity;)V

    const p1, 0x7f090169

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    invoke-static {}, Lcom/perm/kate/StickerHints;->getShowStickerHints()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 57
    new-instance v0, Lcom/perm/kate/MyStickersActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MyStickersActivity$2;-><init>(Lcom/perm/kate/MyStickersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->lv_list:Landroid/widget/ListView;

    .line 71
    iput-object v0, p0, Lcom/perm/kate/MyStickersActivity;->adapter:Lcom/perm/kate/StickersAdapter;

    .line 72
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
