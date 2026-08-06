.class public Lcom/perm/kate/FriendsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private addClickListener:Landroid/view/View$OnClickListener;

.field private add_flags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private keepClickListener:Landroid/view/View$OnClickListener;

.field private remove_flags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private show_add_button:Z

.field private show_add_region:Z

.field private show_remove_button:Z

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 6
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    .line 185
    new-instance v2, Lcom/perm/kate/FriendsListAdapter$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/FriendsListAdapter$1;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v2, Lcom/perm/kate/FriendsListAdapter$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/FriendsListAdapter$2;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 35
    .local v0, "id":Ljava/lang/Long;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/Object;

    .line 36
    .local v1, "u":[Ljava/lang/Object;
    aput-object v0, v1, v4

    .line 37
    iget-object v3, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "u":[Ljava/lang/Object;
    :cond_0
    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    .line 41
    iput-boolean v4, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    .line 42
    iput-boolean v5, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 43
    iput-boolean v5, p0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Z)V
    .locals 7
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "show_add_region"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v6, 0x1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    .line 185
    new-instance v2, Lcom/perm/kate/FriendsListAdapter$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/FriendsListAdapter$1;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v2, Lcom/perm/kate/FriendsListAdapter$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/FriendsListAdapter$2;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    .line 49
    iput-boolean p3, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    .line 50
    iput-boolean v6, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 51
    iput-boolean v6, p0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 53
    .local v1, "obj":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Long;

    .line 54
    .local v0, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v3, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "obj":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;ZZ)V
    .locals 8
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "show_add_button"    # Z
    .param p4, "show_remove_button"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/app/Activity;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    .line 29
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    .line 185
    new-instance v4, Lcom/perm/kate/FriendsListAdapter$1;

    invoke-direct {v4, p0}, Lcom/perm/kate/FriendsListAdapter$1;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v4, p0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v4, Lcom/perm/kate/FriendsListAdapter$2;

    invoke-direct {v4, p0}, Lcom/perm/kate/FriendsListAdapter$2;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v4, p0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    .line 61
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 63
    .local v0, "id":Ljava/lang/Long;
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/Object;

    .line 64
    .local v1, "u":[Ljava/lang/Object;
    aput-object v0, v1, v2

    .line 65
    iget-object v5, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    if-eqz p3, :cond_1

    .line 67
    iget-object v5, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    if-eqz p4, :cond_0

    .line 69
    iget-object v5, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "u":[Ljava/lang/Object;
    :cond_2
    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    .line 73
    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    .line 74
    iput-boolean p3, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 75
    iput-boolean p4, p0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsListAdapter;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FriendsListAdapter;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsListAdapter;->deleteFriend(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/FriendsListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid_str"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/FriendsListAdapter$3;-><init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lcom/perm/kate/FriendsListAdapter$3;->start()V

    .line 227
    return-void
.end method

.method private deleteFriend(Ljava/lang/Long;)V
    .locals 1
    .param p1, "uid_str"    # Ljava/lang/Long;

    .prologue
    .line 230
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/FriendsListAdapter$4;-><init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V

    .line 235
    invoke-virtual {v0}, Lcom/perm/kate/FriendsListAdapter$4;->start()V

    .line 236
    return-void
.end method

.method private setButtonsBg(Landroid/view/View;)V
    .locals 2
    .param p1, "vi"    # Landroid/view/View;

    .prologue
    .line 175
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    .line 176
    const v0, 0x7f0e034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const v0, 0x7f0e034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 93
    const-wide/16 v0, -0x1

    .line 94
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    if-nez p2, :cond_5

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 102
    .local v12, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    if-eqz v2, :cond_4

    const v13, 0x7f03010d

    .line 103
    .local v13, "layout_id":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 105
    .local v22, "vi":Landroid/view/View;
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const v2, 0x7f0e0064

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 107
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .local v18, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 111
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 116
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v13    # "layout_id":I
    .end local v18    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v20

    .line 118
    .local v20, "user":Lcom/perm/kate/api/User;
    const v2, 0x7f0e0065

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 120
    .local v17, "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 121
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    if-eqz v20, :cond_6

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "display_name":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 127
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 126
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 128
    move-object/from16 v0, v20

    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 129
    .local v19, "uid_str":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    const v2, 0x7f0e0198

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    .end local v9    # "display_name":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    if-eqz v2, :cond_3

    .line 139
    if-eqz v20, :cond_1

    .line 141
    const v2, 0x7f0e00ee

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v21, v2, v3

    check-cast v21, Ljava/lang/String;

    .line 144
    .local v21, "user_message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v10, v2, v3

    check-cast v10, Ljava/lang/Long;

    .line 145
    .local v10, "from_id":Ljava/lang/Long;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 146
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v11

    .line 147
    .local v11, "from_user":Lcom/perm/kate/api/User;
    if-eqz v11, :cond_2

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070279

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 150
    .end local v11    # "from_user":Lcom/perm/kate/api/User;
    :cond_2
    if-eqz v21, :cond_8

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 151
    const v2, 0x7f0e0348

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v2, 0x7f0e0348

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_4
    const v2, 0x7f0e0349

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 157
    .local v14, "ll_add_region":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 159
    const v2, 0x7f0e034b

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    const v2, 0x7f0e034d

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    const v2, 0x7f0e034b

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0e034d

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 164
    .local v15, "local_show_add_button":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 165
    .local v16, "local_show_remove_button":Z
    :goto_6
    const v2, 0x7f0e034a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v15, :cond_b

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const v2, 0x7f0e034c

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v16, :cond_c

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const v2, 0x7f0e034d

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v15, :cond_d

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070227

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/perm/kate/FriendsListAdapter;->setButtonsBg(Landroid/view/View;)V

    .line 170
    .end local v10    # "from_id":Ljava/lang/Long;
    .end local v14    # "ll_add_region":Landroid/widget/LinearLayout;
    .end local v15    # "local_show_add_button":Z
    .end local v16    # "local_show_remove_button":Z
    .end local v21    # "user_message":Ljava/lang/String;
    :cond_3
    return-object v22

    .line 102
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v17    # "name":Landroid/widget/TextView;
    .end local v19    # "uid_str":Ljava/lang/String;
    .end local v20    # "user":Lcom/perm/kate/api/User;
    .end local v22    # "vi":Landroid/view/View;
    .restart local v12    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    const v13, 0x7f03010c

    goto/16 :goto_0

    .line 115
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v22, p2

    .restart local v22    # "vi":Landroid/view/View;
    goto/16 :goto_1

    .line 132
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v17    # "name":Landroid/widget/TextView;
    .restart local v20    # "user":Lcom/perm/kate/api/User;
    :cond_6
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v2, 0x7f0e0198

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "uid_str":Ljava/lang/String;
    goto/16 :goto_2

    .line 141
    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 154
    .restart local v10    # "from_id":Ljava/lang/Long;
    .restart local v21    # "user_message":Ljava/lang/String;
    :cond_8
    const v2, 0x7f0e0348

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 163
    .restart local v14    # "ll_add_region":Landroid/widget/LinearLayout;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    goto/16 :goto_5

    .line 164
    .restart local v15    # "local_show_add_button":Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    move/from16 v16, v0

    goto/16 :goto_6

    .line 165
    .restart local v16    # "local_show_remove_button":Z
    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 166
    :cond_c
    const/16 v2, 0x8

    goto/16 :goto_8

    .line 167
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070293

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_9
.end method
