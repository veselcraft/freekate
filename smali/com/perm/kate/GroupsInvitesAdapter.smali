.class public Lcom/perm/kate/GroupsInvitesAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupsInvitesAdapter.java"


# instance fields
.field private accept_click_listener:Landroid/view/View$OnClickListener;

.field private activity:Landroid/app/Activity;

.field private cancel_click_listener:Landroid/view/View$OnClickListener;

.field private items:Ljava/util/ArrayList;

.field private maybe_click_listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 107
    new-instance v0, Lcom/perm/kate/GroupsInvitesAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesAdapter$1;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->accept_click_listener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/perm/kate/GroupsInvitesAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesAdapter$2;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->cancel_click_listener:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/perm/kate/GroupsInvitesAdapter$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsInvitesAdapter$3;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->maybe_click_listener:Landroid/view/View$OnClickListener;

    .line 27
    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private accept(Landroid/view/View;ZZ)V
    .locals 6

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_0

    .line 137
    iget-wide v3, p1, Lcom/perm/kate/api/Group;->gid:J

    .line 138
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 140
    new-instance p1, Lcom/perm/kate/GroupsInvitesAdapter$4;

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/GroupsInvitesAdapter$4;-><init>(Lcom/perm/kate/GroupsInvitesAdapter;ZJZ)V

    .line 148
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupsInvitesAdapter;Landroid/view/View;ZZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupsInvitesAdapter;->accept(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupsInvitesAdapter;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private setButtonsBg(Landroid/view/View;)V
    .locals 2

    .line 100
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09005b

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f09006a

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090080

    .line 103
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
.method public Destroy()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    .line 131
    iput-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public addData(Ljava/util/ArrayList;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 35
    iget-object v1, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, " "

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 64
    :try_start_0
    iget-object p2, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c0096

    .line 65
    invoke-virtual {p2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 68
    :cond_0
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/perm/kate/GroupsInvitesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Group;

    const p3, 0x7f090373

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 70
    iget-object v2, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090188

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/ImageView;

    const p3, 0x7f0903e6

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 73
    iget-object v2, p1, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 74
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p1, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/perm/kate/GroupsInvitesAdapter;->activity:Landroid/app/Activity;

    const v6, 0x7f0f021a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 77
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    const p3, 0x7f09005b

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->accept_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f09006a

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->cancel_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x2

    .line 84
    iget-object v0, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p3, v0, :cond_2

    const p3, 0x7f09013a

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090080

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/perm/kate/GroupsInvitesAdapter;->maybe_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/perm/kate/GroupsInvitesAdapter;->setButtonsBg(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    move-object v2, p2

    .line 93
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v2
.end method
