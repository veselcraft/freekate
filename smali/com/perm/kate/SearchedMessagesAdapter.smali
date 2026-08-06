.class public Lcom/perm/kate/SearchedMessagesAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedMessagesAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;",
            ">;"
        }
    .end annotation
.end field

.field public me:Lcom/perm/kate/api/User;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation
.end field

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/perm/kate/api/User;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "me"    # Lcom/perm/kate/api/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;",
            "Lcom/perm/kate/api/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->map:Ljava/util/WeakHashMap;

    .line 219
    new-instance v0, Lcom/perm/kate/SearchedMessagesAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchedMessagesAdapter$1;-><init>(Lcom/perm/kate/SearchedMessagesAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    .line 35
    iput-object p3, p0, Lcom/perm/kate/SearchedMessagesAdapter;->me:Lcom/perm/kate/api/User;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchedMessagesAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchedMessagesAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    .line 232
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 55
    const-wide/16 v0, 0x0

    .line 56
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-wide v0, v0, Lcom/perm/kate/api/Message;->mid:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 35
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    if-nez p2, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v21

    .line 65
    .local v21, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300f5

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v34

    .line 66
    .local v34, "v":Landroid/view/View;
    new-instance v20, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    invoke-direct/range {v20 .. v20}, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;-><init>()V

    .line 67
    .local v20, "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->map:Ljava/util/WeakHashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const v2, 0x7f0e011f

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0e0118

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    .line 70
    const v2, 0x7f0e011d

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f0e011c

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutMe:Landroid/view/View;

    .line 72
    const v2, 0x7f0e011e

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    .line 73
    const v2, 0x7f0e011a

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f0e0119

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->multichatIcon:Landroid/view/View;

    .line 75
    const v2, 0x7f0e0076

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    .line 76
    const v2, 0x7f0e00ee

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    .line 77
    const v2, 0x7f0e0120

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    .line 83
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    const v2, 0x7f0e0318

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 85
    .local v30, "tv_message_type":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->messages:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/perm/kate/api/Message;

    .line 88
    .local v23, "m":Lcom/perm/kate/api/Message;
    :try_start_0
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/perm/kate/api/Message;->is_out:Z

    move/from16 v22, v0

    .line 89
    .local v22, "is_out":Z
    if-eqz v30, :cond_0

    .line 90
    if-eqz v22, :cond_4

    .line 91
    const v2, 0x7f07041b

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_0
    :goto_1
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/perm/kate/api/Message;->read_state:Z

    move/from16 v27, v0

    .line 96
    .local v27, "read_state":Z
    if-nez v27, :cond_5

    if-nez v22, :cond_5

    .line 97
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    :goto_2
    const v2, 0x7f0e01fe

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 102
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v2, :cond_6

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 103
    .local v16, "chat_id":J
    :goto_3
    const v2, 0x7f0e0069

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 105
    const/16 v19, 0x0

    .line 106
    .local v19, "group":Lcom/perm/kate/api/Group;
    const/16 v32, 0x0

    .line 107
    .local v32, "user":Lcom/perm/kate/api/User;
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v19

    .line 120
    :cond_1
    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v2, v16, v6

    if-lez v2, :cond_8

    .line 122
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    .local v3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v5, 0x50

    const/16 v6, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V

    .line 134
    .end local v3    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->me:Lcom/perm/kate/api/User;

    if-eqz v2, :cond_b

    .line 135
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->me:Lcom/perm/kate/api/User;

    iget-object v7, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/16 v10, 0x50

    .line 137
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v11

    const/4 v12, 0x1

    .line 136
    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 138
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    :goto_6
    if-eqz v22, :cond_c

    if-nez v27, :cond_c

    .line 145
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 149
    :goto_7
    const/16 v33, 0x0

    .line 150
    .local v33, "user_name":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 151
    if-eqz v19, :cond_2

    .line 152
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 155
    :cond_2
    :goto_8
    const-wide/16 v6, 0x0

    cmp-long v2, v16, v6

    if-lez v2, :cond_e

    .line 156
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 157
    .local v18, "chat_title":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->multichatIcon:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .end local v18    # "chat_title":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/perm/kate/api/Message;->date:J

    move-wide/from16 v24, v0

    .line 166
    .local v24, "long_date":J
    const/4 v2, 0x0

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, "ago_text":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 170
    .local v28, "text":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v2, 0x7f0e01d2

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 172
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    .line 173
    .local v31, "uid":Ljava/lang/Long;
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    const v2, 0x7f0e011a

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 176
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/SearchedMessagesAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v4, 0x7f0e026f

    move-object/from16 v0, v31

    invoke-virtual {v2, v4, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 179
    const v2, 0x7f0e011f

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 181
    const-wide/16 v6, 0x0

    cmp-long v2, v16, v6

    if-lez v2, :cond_f

    .line 182
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :goto_a
    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    .line 190
    .local v14, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, v14}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "attchmns_text":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 192
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 194
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 196
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 197
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 198
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 204
    :goto_b
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v13    # "ago_text":Ljava/lang/String;
    .end local v14    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v15    # "attchmns_text":Ljava/lang/String;
    .end local v16    # "chat_id":J
    .end local v19    # "group":Lcom/perm/kate/api/Group;
    .end local v22    # "is_out":Z
    .end local v24    # "long_date":J
    .end local v27    # "read_state":Z
    .end local v28    # "text":Ljava/lang/String;
    .end local v31    # "uid":Ljava/lang/Long;
    .end local v32    # "user":Lcom/perm/kate/api/User;
    .end local v33    # "user_name":Ljava/lang/String;
    :goto_c
    return-object v34

    .line 79
    .end local v20    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    .end local v23    # "m":Lcom/perm/kate/api/Message;
    .end local v30    # "tv_message_type":Landroid/widget/TextView;
    .end local v34    # "v":Landroid/view/View;
    :cond_3
    move-object/from16 v34, p2

    .line 80
    .restart local v34    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->map:Ljava/util/WeakHashMap;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    .restart local v20    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    goto/16 :goto_0

    .line 93
    .restart local v22    # "is_out":Z
    .restart local v23    # "m":Lcom/perm/kate/api/Message;
    .restart local v30    # "tv_message_type":Landroid/widget/TextView;
    :cond_4
    const v2, 0x7f070414

    :try_start_1
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 211
    .end local v22    # "is_out":Z
    :catch_0
    move-exception v29

    .line 212
    .local v29, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    invoke-static/range {v29 .. v29}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/SearchedMessagesAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 99
    .end local v29    # "th":Ljava/lang/Throwable;
    .restart local v22    # "is_out":Z
    .restart local v27    # "read_state":Z
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 102
    :cond_6
    const-wide/16 v16, 0x0

    goto/16 :goto_3

    .line 110
    .restart local v16    # "chat_id":J
    .restart local v19    # "group":Lcom/perm/kate/api/Group;
    .restart local v32    # "user":Lcom/perm/kate/api/User;
    :cond_7
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v32

    .line 111
    if-nez v32, :cond_1

    .line 112
    new-instance v32, Lcom/perm/kate/api/User;

    .end local v32    # "user":Lcom/perm/kate/api/User;
    invoke-direct/range {v32 .. v32}, Lcom/perm/kate/api/User;-><init>()V

    .line 113
    .restart local v32    # "user":Lcom/perm/kate/api/User;
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    move-object/from16 v0, v32

    iput-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    .line 114
    const-string v2, ""

    move-object/from16 v0, v32

    iput-object v2, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 115
    const-string v2, ""

    move-object/from16 v0, v32

    iput-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 116
    const-string v2, ""

    move-object/from16 v0, v32

    iput-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 117
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v32

    iput-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 125
    :cond_8
    const/4 v5, 0x0

    .line 126
    .local v5, "url_from_user":Ljava/lang/String;
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 127
    if-eqz v19, :cond_9

    .line 128
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 131
    :cond_9
    :goto_d
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/4 v7, 0x1

    const/16 v8, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto/16 :goto_5

    .line 130
    :cond_a
    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_d

    .line 140
    .end local v5    # "url_from_user":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_6

    .line 147
    :cond_c
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 154
    .restart local v33    # "user_name":Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_8

    .line 160
    :cond_e
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->multichatIcon:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 184
    .restart local v13    # "ago_text":Ljava/lang/String;
    .restart local v24    # "long_date":J
    .restart local v28    # "text":Ljava/lang/String;
    .restart local v31    # "uid":Ljava/lang/Long;
    :cond_f
    if-eqz v32, :cond_10

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 185
    .local v26, "online":Ljava/lang/Boolean;
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 184
    .end local v26    # "online":Ljava/lang/Boolean;
    :cond_10
    const/4 v2, 0x0

    goto :goto_e

    .line 185
    .restart local v26    # "online":Ljava/lang/Boolean;
    :cond_11
    const/16 v2, 0x8

    goto :goto_f

    .line 200
    .end local v26    # "online":Ljava/lang/Boolean;
    .restart local v14    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .restart local v15    # "attchmns_text":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 202
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_b

    .line 206
    :cond_13
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 209
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_c
.end method
