.class public Lcom/perm/kate/GroupsInvitesAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupsInvitesAdapter.java"


# instance fields
.field private accept_click_listener:Landroid/view/View$OnClickListener;

.field private activity:Landroid/app/Activity;

.field private cancel_click_listener:Landroid/view/View$OnClickListener;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 100
    new-instance v0, Lcom/perm/kate/GroupsInvitesAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesAdapter$1;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->accept_click_listener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v0, Lcom/perm/kate/GroupsInvitesAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesAdapter$2;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->cancel_click_listener:Landroid/view/View$OnClickListener;

    .line 27
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private accept(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "accept"    # Z

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 122
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 123
    iget-wide v2, v0, Lcom/perm/kate/api/Group;->gid:J

    .line 124
    .local v2, "group_id":J
    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/GroupsInvitesAdapter;->notifyDataSetChanged()V

    .line 126
    new-instance v1, Lcom/perm/kate/GroupsInvitesAdapter$3;

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/perm/kate/GroupsInvitesAdapter$3;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;ZJ)V

    .line 134
    invoke-virtual {v1}, Lcom/perm/kate/GroupsInvitesAdapter$3;->start()V

    .line 136
    .end local v2    # "group_id":J
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupsInvitesAdapter;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsInvitesAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupsInvitesAdapter;->accept(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupsInvitesAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsInvitesAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private setButtonsBg(Landroid/view/View;)V
    .locals 2
    .param p1, "vi"    # Landroid/view/View;

    .prologue
    .line 94
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    .line 95
    const v0, 0x7f0e01e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const v0, 0x7f0e019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iput-object v1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    .line 117
    iput-object v1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    .line 118
    return-void
.end method

.method public addData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 35
    .local v0, "g":Lcom/perm/kate/api/Group;
    iget-object v2, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/GroupsInvitesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    .line 54
    const-wide/16 v0, -0x1

    .line 55
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    const/4 v15, 0x0

    .line 62
    .local v15, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 63
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 64
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030089

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 67
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Group;

    .line 68
    .local v10, "g":Lcom/perm/kate/api/Group;
    const v2, 0x7f0e01e7

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 69
    .local v12, "name":Landroid/widget/TextView;
    iget-object v2, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v2, 0x7f0e0064

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 71
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    const v2, 0x7f0e0065

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 72
    .local v14, "user_name":Landroid/widget/TextView;
    iget-object v2, v10, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, v10, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 73
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, v10, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v13

    .line 74
    .local v13, "u":Lcom/perm/kate/api/User;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0701be

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v13    # "u":Lcom/perm/kate/api/User;
    :goto_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v10, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 78
    const v2, 0x7f0e01e8

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    const v2, 0x7f0e01e8

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/GroupsInvitesAdapter;->accept_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v2, 0x7f0e019b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    const v2, 0x7f0e019b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/GroupsInvitesAdapter;->cancel_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v15, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/perm/kate/GroupsInvitesAdapter;->setButtonsBg(Landroid/view/View;)V

    move-object/from16 v16, v15

    .line 88
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v10    # "g":Lcom/perm/kate/api/Group;
    .end local v12    # "name":Landroid/widget/TextView;
    .end local v14    # "user_name":Landroid/widget/TextView;
    .end local v15    # "vi":Landroid/view/View;
    .local v16, "vi":Landroid/view/View;
    :goto_2
    return-object v16

    .line 66
    .end local v16    # "vi":Landroid/view/View;
    .restart local v15    # "vi":Landroid/view/View;
    :cond_0
    move-object/from16 v15, p2

    goto/16 :goto_0

    .line 76
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v10    # "g":Lcom/perm/kate/api/Group;
    .restart local v12    # "name":Landroid/widget/TextView;
    .restart local v14    # "user_name":Landroid/widget/TextView;
    :cond_1
    const-string v2, ""

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v10    # "g":Lcom/perm/kate/api/Group;
    .end local v12    # "name":Landroid/widget/TextView;
    .end local v14    # "user_name":Landroid/widget/TextView;
    :catch_0
    move-exception v9

    .line 86
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    move-object/from16 v16, v15

    .line 88
    .end local v15    # "vi":Landroid/view/View;
    .restart local v16    # "vi":Landroid/view/View;
    goto :goto_2
.end method
