.class public Lcom/perm/kate/PhotoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private checkClickListener:Landroid/view/View$OnClickListener;

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public selectButton:Landroid/widget/Button;

.field private select_mode:I

.field public selected_photos:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    .line 127
    new-instance v0, Lcom/perm/kate/PhotoListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoListAdapter$1;-><init>(Lcom/perm/kate/PhotoListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->checkClickListener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;ILandroid/widget/Button;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "select_mode"    # I
    .param p4, "select_button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Landroid/widget/Button;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 26
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    .line 127
    new-instance v0, Lcom/perm/kate/PhotoListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoListAdapter$1;-><init>(Lcom/perm/kate/PhotoListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->checkClickListener:Landroid/view/View$OnClickListener;

    .line 34
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    .line 36
    iput p3, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    .line 37
    iput-object p4, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoListAdapter;

    .prologue
    .line 20
    iget v0, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoListAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public cancelSelectModeForAction()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 70
    const-wide/16 v0, -0x1

    .line 71
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    if-nez p2, :cond_3

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoListAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 79
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f0300d4

    .line 80
    .local v14, "layout_id":I
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v14, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 83
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v14    # "layout_id":I
    .local v19, "vi":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/perm/kate/api/Photo;

    .line 84
    .local v18, "photo":Lcom/perm/kate/api/Photo;
    const v2, 0x7f0e028b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 88
    .local v4, "img_photo_photo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v5, 0x1

    const-wide v6, 0x4052c00000000000L    # 75.0

    .line 89
    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const v7, 0x7f020143

    const/4 v8, 0x0

    .line 88
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v5, 0x7f07020b

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0e0073

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 92
    .local v17, "likes_view":Landroid/view/View;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 93
    :cond_0
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :goto_1
    const v2, 0x7f0e01ef

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 105
    .local v10, "comments_view":Landroid/view/View;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    .line 106
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :goto_2
    const v2, 0x7f0e0281

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 113
    .local v13, "itemCheckBox":Landroid/widget/CheckBox;
    if-eqz v13, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    if-lez v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    if-lez v2, :cond_8

    .line 116
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoListAdapter;->checkClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "id":Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v11}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    .end local v11    # "id":Ljava/lang/String;
    :cond_2
    :goto_4
    return-object v19

    .line 82
    .end local v4    # "img_photo_photo":Landroid/widget/ImageView;
    .end local v10    # "comments_view":Landroid/view/View;
    .end local v13    # "itemCheckBox":Landroid/widget/CheckBox;
    .end local v17    # "likes_view":Landroid/view/View;
    .end local v18    # "photo":Lcom/perm/kate/api/Photo;
    .end local v19    # "vi":Landroid/view/View;
    :cond_3
    move-object/from16 v19, p2

    .restart local v19    # "vi":Landroid/view/View;
    goto/16 :goto_0

    .line 95
    .restart local v4    # "img_photo_photo":Landroid/widget/ImageView;
    .restart local v17    # "likes_view":Landroid/view/View;
    .restart local v18    # "photo":Lcom/perm/kate/api/Photo;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    const v2, 0x7f0e028c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 97
    .local v15, "like_count":Landroid/widget/TextView;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v2, 0x7f0e0074

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 99
    .local v16, "likes_heart":Landroid/widget/ImageView;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    const v2, 0x7f020118

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 102
    :cond_5
    const v2, 0x7f020117

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 108
    .end local v15    # "like_count":Landroid/widget/TextView;
    .end local v16    # "likes_heart":Landroid/widget/ImageView;
    .restart local v10    # "comments_view":Landroid/view/View;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v2, 0x7f0e028e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 110
    .local v9, "comments_count":Landroid/widget/TextView;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 114
    .end local v9    # "comments_count":Landroid/widget/TextView;
    .restart local v13    # "itemCheckBox":Landroid/widget/CheckBox;
    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 122
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_4
.end method

.method public setSelectModeForAction(Landroid/widget/Button;Lcom/perm/kate/api/Photo;I)V
    .locals 4
    .param p1, "action_button"    # Landroid/widget/Button;
    .param p2, "photo"    # Lcom/perm/kate/api/Photo;
    .param p3, "select_mode"    # I

    .prologue
    .line 41
    iput p3, p0, Lcom/perm/kate/PhotoListAdapter;->select_mode:I

    .line 42
    iput-object p1, p0, Lcom/perm/kate/PhotoListAdapter;->selectButton:Landroid/widget/Button;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method
