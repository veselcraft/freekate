.class public Lcom/perm/kate/SearchedMessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedMessagesAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field map:Ljava/util/WeakHashMap;

.field public me:Lcom/perm/kate/api/User;

.field private messages:Ljava/util/ArrayList;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/User;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->map:Ljava/util/WeakHashMap;

    .line 208
    new-instance v0, Lcom/perm/kate/SearchedMessagesAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchedMessagesAdapter$1;-><init>(Lcom/perm/kate/SearchedMessagesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    .line 35
    iput-object p3, p0, Lcom/perm/kate/SearchedMessagesAdapter;->me:Lcom/perm/kate/api/User;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchedMessagesAdapter;)Landroid/app/Activity;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Message;

    iget-wide v0, p1, Lcom/perm/kate/api/Message;->mid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, ""

    const v3, 0x7f09038f

    const v4, 0x7f09038e

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, v1, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f0c0111

    move-object/from16 v7, p3

    .line 65
    invoke-virtual {v0, v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    invoke-direct {v6}, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;-><init>()V

    .line 67
    iget-object v7, v1, Lcom/perm/kate/SearchedMessagesAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const v7, 0x7f090183

    .line 69
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v7, 0x7f090226

    .line 70
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const v7, 0x7f090227

    .line 72
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    const v7, 0x7f09038c

    .line 74
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    const v7, 0x7f09009a

    .line 75
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    const v7, 0x7f09038d

    .line 76
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v6, v1, Lcom/perm/kate/SearchedMessagesAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    :goto_0
    move-object/from16 v23, v6

    move-object v6, v0

    move-object/from16 v0, v23

    .line 82
    iget-object v7, v1, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Message;

    .line 85
    :try_start_0
    iget-boolean v8, v7, Lcom/perm/kate/api/Message;->is_out:Z

    .line 86
    iget-boolean v9, v7, Lcom/perm/kate/api/Message;->read_state:Z

    const/4 v10, 0x1

    if-nez v9, :cond_1

    if-nez v8, :cond_1

    .line 88
    invoke-static {v10}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 90
    :cond_1
    invoke-static {v5}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const v11, 0x7f09013d

    .line 91
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    iget-object v11, v7, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_2

    :cond_2
    move-wide v14, v12

    :goto_2
    const v11, 0x7f09005d

    .line 94
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    iget-wide v3, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 99
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v10, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v2

    move-object v3, v4

    goto :goto_3

    .line 101
    :cond_3
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v10, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v3, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v3

    if-nez v3, :cond_4

    .line 103
    new-instance v3, Lcom/perm/kate/api/User;

    invoke-direct {v3}, Lcom/perm/kate/api/User;-><init>()V

    .line 104
    iget-wide v10, v7, Lcom/perm/kate/api/Message;->uid:J

    iput-wide v10, v3, Lcom/perm/kate/api/User;->uid:J

    .line 105
    iput-object v2, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 106
    iput-object v2, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 107
    iput-object v2, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 108
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v3, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    :cond_4
    move-object v2, v4

    :goto_3
    cmp-long v10, v14, v12

    if-lez v10, :cond_5

    .line 113
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v10, v14, v15}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v17

    .line 114
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v16

    iget-object v10, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v19, 0x50

    const/16 v20, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v21

    move-object/from16 v18, v10

    invoke-virtual/range {v16 .. v21}, Lcom/perm/kate/ImageLoader;->DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V

    goto :goto_6

    .line 117
    :cond_5
    iget-wide v10, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v2, :cond_6

    .line 119
    iget-object v10, v2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object/from16 v17, v4

    goto :goto_5

    .line 121
    :cond_7
    iget-object v10, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    :goto_4
    move-object/from16 v17, v10

    .line 122
    :goto_5
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v16

    iget-object v10, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v19, 0x1

    const/16 v20, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v18, v10

    invoke-virtual/range {v16 .. v22}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    :goto_6
    const/16 v10, 0x8

    if-eqz v8, :cond_8

    .line 125
    iget-object v11, v1, Lcom/perm/kate/SearchedMessagesAdapter;->me:Lcom/perm/kate/api/User;

    if-eqz v11, :cond_8

    .line 126
    iget-object v11, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v16

    iget-object v11, v1, Lcom/perm/kate/SearchedMessagesAdapter;->me:Lcom/perm/kate/api/User;

    iget-object v11, v11, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/16 v19, 0x1

    const/16 v20, 0x50

    .line 128
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v17, v11

    move-object/from16 v18, v5

    .line 127
    invoke-virtual/range {v16 .. v22}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 129
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_7

    .line 131
    :cond_8
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/16 v11, 0x30

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_7
    if-eqz v8, :cond_9

    if-nez v9, :cond_9

    .line 136
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_8

    .line 138
    :cond_9
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_8
    iget-wide v8, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v2, :cond_a

    .line 143
    iget-object v2, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object v2, v4

    goto :goto_9

    .line 145
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    cmp-long v5, v14, v12

    if-lez v5, :cond_c

    .line 147
    iget-object v5, v7, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    .line 148
    iget-object v8, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 150
    :cond_c
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_a
    iget-wide v8, v7, Lcom/perm/kate/api/Message;->date:J

    .line 155
    invoke-static {v4, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, v7, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 159
    iget-object v5, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    sget-object v8, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v8, v4}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f090049

    .line 160
    invoke-virtual {v6, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 161
    iget-wide v8, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 162
    invoke-virtual {v6, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v8, 0x7f09038f

    .line 163
    invoke-virtual {v6, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 165
    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/perm/kate/SearchedMessagesAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v8, 0x7f090186

    invoke-virtual {v2, v8, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f09038e

    .line 168
    invoke-virtual {v6, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    cmp-long v2, v14, v12

    if-lez v2, :cond_d

    .line 171
    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_d
    if-eqz v3, :cond_e

    .line 173
    iget-object v2, v3, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 174
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_c

    :cond_f
    const/16 v2, 0x8

    :goto_c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_d
    iget-object v2, v7, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    .line 179
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3, v2}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lez v3, :cond_11

    .line 181
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_10

    .line 182
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 183
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 185
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 186
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 187
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_e

    .line 189
    :cond_10
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 191
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 193
    :goto_e
    iget-object v0, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 195
    :cond_11
    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 198
    iget-object v0, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 203
    iget-object v2, v1, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_f
    return-object v6
.end method
