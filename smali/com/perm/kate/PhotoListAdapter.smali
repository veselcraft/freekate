.class public Lcom/perm/kate/PhotoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private checkClickListener:Landroid/view/View$OnClickListener;

.field public photos:Ljava/util/ArrayList;

.field public selectButton:Landroid/widget/Button;

.field private select_mode:I

.field public selected_photos:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    .line 134
    new-instance v0, Lcom/perm/kate/PhotoListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoListAdapter$1;-><init>(Lcom/perm/kate/PhotoListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->checkClickListener:Landroid/view/View$OnClickListener;

    .line 31
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;ILandroid/widget/Button;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    .line 134
    new-instance v0, Lcom/perm/kate/PhotoListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoListAdapter$1;-><init>(Lcom/perm/kate/PhotoListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->checkClickListener:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    .line 38
    iput p3, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    .line 39
    iput-object p4, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoListAdapter;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public cancelSelectModeForAction()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 54
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    iget-wide v0, p1, Lcom/perm/kate/api/Photo;->pid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00ef

    .line 83
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/api/Photo;

    const v1, 0x7f090184

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 91
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, p3, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v5, 0x1

    const-wide v6, 0x4052c00000000000L    # 75.0

    .line 92
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const v7, 0x7f080208

    const/4 v8, 0x0

    move-object v4, v1

    .line 91
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v4, 0x7f0f0265

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901b9

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    iget-object v2, p3, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0901b7

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    iget-object v2, p3, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901b8

    .line 101
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    iget-object v2, p3, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_2
    const v2, -0x444445

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v1, 0x7f0900d6

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 108
    iget-object v2, p3, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0900d3

    .line 112
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    iget-object v2, p3, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 109
    :cond_5
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v1, 0x7f09018d

    .line 115
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f0900b7

    .line 116
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_8

    .line 118
    iget v6, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    if-lez v6, :cond_6

    const/4 v5, 0x0

    :cond_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget v5, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    if-lez v5, :cond_7

    .line 120
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/perm/kate/PhotoListAdapter;->checkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photo"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p3, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 123
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 127
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 129
    :cond_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_8
    :goto_4
    return-object p2
.end method

.method public setSelectModeForAction(Landroid/widget/Button;Lcom/perm/kate/api/Photo;I)V
    .locals 0

    .line 43
    iput p3, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    .line 44
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "photo"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
