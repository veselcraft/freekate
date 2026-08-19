.class public Lcom/perm/kate/FriendsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FriendsListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private addClickListener:Landroid/view/View$OnClickListener;

.field private add_flags:Ljava/util/HashMap;

.field private keepClickListener:Landroid/view/View$OnClickListener;

.field private remove_flags:Ljava/util/HashMap;

.field private show_add_button:Z

.field private show_add_region:Z

.field private show_remove_button:Z

.field private users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    .line 184
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListAdapter$1;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListAdapter$2;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 37
    iget-object v1, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    .line 41
    iput-boolean v0, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 43
    iput-boolean p1, p0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Z)V
    .locals 4

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    .line 184
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListAdapter$1;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListAdapter$2;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    .line 49
    iput-boolean p3, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 51
    iput-boolean p2, p0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 53
    aget-object p2, p2, p3

    check-cast p2, Ljava/lang/Long;

    .line 54
    iget-object p3, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p3, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;ZZ)V
    .locals 5

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    .line 184
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListAdapter$1;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FriendsListAdapter$2;-><init>(Lcom/perm/kate/FriendsListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 65
    iget-object v3, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 67
    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_0

    .line 69
    iget-object v2, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_2
    iput-object p2, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 73
    :cond_4
    iput-boolean v0, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    .line 74
    iput-boolean p3, p0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 75
    iput-boolean p4, p0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsListAdapter;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/perm/kate/FriendsListAdapter;->deleteFriend(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/FriendsListAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/FriendsListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 1

    .line 217
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/FriendsListAdapter$3;-><init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private deleteFriend(Ljava/lang/Long;)V
    .locals 1

    .line 229
    new-instance v0, Lcom/perm/kate/FriendsListAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/FriendsListAdapter$4;-><init>(Lcom/perm/kate/FriendsListAdapter;Ljava/lang/Long;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setButtonsBg(Landroid/view/View;)V
    .locals 2

    .line 174
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090135

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090144

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x7f090188

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 101
    iget-object v4, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 102
    iget-boolean v5, v0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0c012d

    goto :goto_0

    :cond_0
    const v5, 0x7f0c012c

    :goto_0
    move-object/from16 v6, p3

    .line 103
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 105
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 107
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    .line 108
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    invoke-static {v11, v12}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v11

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    invoke-virtual {v6, v7, v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 109
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 110
    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 111
    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    .line 116
    :cond_2
    :goto_1
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v6, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v5

    const v6, 0x7f0903e6

    .line 118
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    const v2, 0x7f090239

    const-string v14, ""

    const-string v15, " "

    if-eqz v5, :cond_3

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 123
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    iget-object v8, v5, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 127
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v6, 0x1

    move-object v3, v13

    move v13, v6

    .line 126
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 128
    iget-wide v6, v5, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 132
    :cond_3
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 138
    :goto_2
    iget-boolean v2, v0, Lcom/perm/kate/FriendsListAdapter;->show_add_region:Z

    if-eqz v2, :cond_d

    const/16 v3, 0x8

    if-eqz v5, :cond_5

    const v2, 0x7f09009a

    .line 141
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, v5, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_5
    iget-object v2, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/String;

    .line 144
    iget-object v5, v0, Lcom/perm/kate/FriendsListAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 145
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_6

    .line 146
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const v7, 0x7f0f02d2

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    const v1, 0x7f0903e5

    if-eqz v2, :cond_7

    .line 150
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 151
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v1, 0x7f0901c4

    .line 156
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f090064

    .line 159
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v7, 0x7f09007d

    .line 160
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, v0, Lcom/perm/kate/FriendsListAdapter;->addClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, v0, Lcom/perm/kate/FriendsListAdapter;->keepClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, v0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/perm/kate/FriendsListAdapter;->add_flags:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_5

    :cond_8
    iget-boolean v1, v0, Lcom/perm/kate/FriendsListAdapter;->show_add_button:Z

    .line 164
    :goto_5
    iget-object v5, v0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/perm/kate/FriendsListAdapter;->remove_flags:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_6

    :cond_9
    iget-boolean v5, v0, Lcom/perm/kate/FriendsListAdapter;->show_remove_button:Z

    :goto_6
    const v6, 0x7f090135

    .line 165
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v1, :cond_a

    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/16 v8, 0x8

    :goto_7
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f090144

    .line 166
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v5, :cond_b

    const/4 v3, 0x0

    :cond_b
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    if-eqz v5, :cond_c

    iget-object v1, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f0281

    goto :goto_8

    :cond_c
    iget-object v1, v0, Lcom/perm/kate/FriendsListAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f02eb

    :goto_8
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-direct {v0, v4}, Lcom/perm/kate/FriendsListAdapter;->setButtonsBg(Landroid/view/View;)V

    :cond_d
    return-object v4
.end method
