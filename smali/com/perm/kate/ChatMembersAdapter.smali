.class public Lcom/perm/kate/ChatMembersAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMembersAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private chat_id:J

.field private delete_member_click_listener:Landroid/view/View$OnClickListener;

.field private members:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;J)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 134
    new-instance v0, Lcom/perm/kate/ChatMembersAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChatMembersAdapter$1;-><init>(Lcom/perm/kate/ChatMembersAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->delete_member_click_listener:Landroid/view/View$OnClickListener;

    .line 29
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    .line 31
    iput-wide p3, p0, Lcom/perm/kate/ChatMembersAdapter;->chat_id:J

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ChatMembersAdapter;Lcom/perm/kate/api/ChatMember;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/ChatMembersAdapter;->getIsAdmin(Lcom/perm/kate/api/ChatMember;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/ChatMembersAdapter;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ChatMembersAdapter;->removeMemberFromChat(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ChatMembersAdapter;JZLcom/perm/kate/api/ChatMember;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/ChatMembersAdapter;->setRole(JZLcom/perm/kate/api/ChatMember;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/ChatMembersAdapter;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/perm/kate/ChatMembersAdapter;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/ChatMembersAdapter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/ChatMembersAdapter;->errorDeleteChatMember()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ChatMembersAdapter;Lcom/perm/kate/api/ChatMember;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ChatMembersAdapter;->setIsAdmin(Lcom/perm/kate/api/ChatMember;Z)V

    return-void
.end method

.method private errorDeleteChatMember()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/ChatMembersAdapter$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/ChatMembersAdapter$6;-><init>(Lcom/perm/kate/ChatMembersAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/perm/kate/EditChatActivity;

    if-eqz v1, :cond_1

    .line 252
    check-cast v0, Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity;->requeryOnUiThread()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getIsAdmin(Lcom/perm/kate/api/ChatMember;)Z
    .locals 1

    .line 172
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/perm/kate/api/User;->is_admin:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 174
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private removeMemberFromChat(J)V
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/ChatMember;

    .line 191
    iget-object v2, v1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    cmp-long v4, v2, p1

    if-eqz v4, :cond_3

    :cond_1
    iget-object v2, v1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    if-eqz v2, :cond_0

    iget-wide v2, v2, Lcom/perm/kate/api/Group;->gid:J

    const-wide/16 v4, -0x1

    mul-long v4, v4, p1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 197
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/perm/kate/EditChatActivity;

    if-eqz v1, :cond_5

    .line 201
    check-cast v0, Lcom/perm/kate/EditChatActivity;

    iget-object v1, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditChatActivity;->setHeaderText(I)V

    .line 202
    :cond_5
    new-instance v0, Lcom/perm/kate/ChatMembersAdapter$2;

    iget-object v1, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/perm/kate/ChatMembersAdapter$2;-><init>(Lcom/perm/kate/ChatMembersAdapter;Landroid/app/Activity;J)V

    .line 215
    new-instance v1, Lcom/perm/kate/ChatMembersAdapter$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/ChatMembersAdapter$3;-><init>(Lcom/perm/kate/ChatMembersAdapter;JLcom/perm/kate/session/Callback;)V

    .line 220
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setIsAdmin(Lcom/perm/kate/api/ChatMember;Z)V
    .locals 1

    .line 181
    iget-object v0, p1, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/User;->is_admin:Ljava/lang/Boolean;

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_1

    .line 184
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-void
.end method

.method private setRole(JZLcom/perm/kate/api/ChatMember;)V
    .locals 6

    .line 224
    new-instance v5, Lcom/perm/kate/ChatMembersAdapter$4;

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v5, p0, v0, p4, p3}, Lcom/perm/kate/ChatMembersAdapter$4;-><init>(Lcom/perm/kate/ChatMembersAdapter;Landroid/app/Activity;Lcom/perm/kate/api/ChatMember;Z)V

    .line 232
    new-instance p4, Lcom/perm/kate/ChatMembersAdapter$5;

    move-object v0, p4

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ChatMembersAdapter$5;-><init>(Lcom/perm/kate/ChatMembersAdapter;JZLcom/perm/kate/session/Callback;)V

    .line 239
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

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
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 57
    iget-object v2, v0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c003e

    move-object/from16 v4, p3

    .line 58
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 61
    :goto_0
    iget-object v3, v0, Lcom/perm/kate/ChatMembersAdapter;->members:Ljava/util/ArrayList;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/ChatMember;

    .line 62
    iget-object v4, v3, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    .line 63
    iget-object v5, v3, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    const v6, 0x7f0903e6

    .line 64
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090188

    .line 65
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/widget/ImageView;

    const-string v7, ", "

    const v14, 0x7f0f0143

    const v13, 0x7f09037a

    const/16 v12, 0x8

    const-string v9, ""

    const-string v8, " "

    const v1, 0x7f090194

    if-eqz v4, :cond_7

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    iget-object v6, v4, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v11, 0x1

    const/16 v17, 0x5a

    .line 70
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v18

    const/16 v19, 0x1

    move-object v15, v8

    move-object v8, v5

    move-object v5, v9

    move-object v9, v6

    const v6, 0x7f09019b

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    .line 69
    invoke-virtual/range {v8 .. v14}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 71
    iget-wide v8, v4, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v8, v4, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v8, v0, Lcom/perm/kate/ChatMembersAdapter;->delete_member_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-wide v8, v4, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v14, 0x7f09037a

    .line 75
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 77
    iget-object v8, v4, Lcom/perm/kate/api/User;->invited_by:Ljava/lang/Long;

    if-eqz v8, :cond_5

    .line 78
    sget-object v9, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 79
    iget-wide v9, v4, Lcom/perm/kate/api/User;->uid:J

    iget-object v11, v4, Lcom/perm/kate/api/User;->invited_by:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-nez v13, :cond_2

    .line 80
    iget-object v4, v0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0f01e1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const v13, 0x7f0f0143

    invoke-virtual {v9, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v5

    .line 85
    :goto_2
    iget-object v4, v4, Lcom/perm/kate/api/User;->is_admin:Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 88
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const v7, 0x7f0f0189

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    move-object v9, v5

    .line 92
    :cond_6
    :goto_3
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_7
    move-object v15, v8

    move-object v12, v9

    const v4, 0x7f09019b

    const v13, 0x7f0f0143

    const v14, 0x7f09037a

    if-eqz v5, :cond_c

    .line 94
    iget-object v8, v5, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 95
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    iget-object v9, v5, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v11, 0x1

    const/16 v6, 0x5a

    .line 97
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v16

    const/16 v17, 0x1

    move-object/from16 v20, v12

    move v12, v6

    const v6, 0x7f0f0143

    move/from16 v13, v16

    const v6, 0x7f09037a

    move/from16 v14, v17

    .line 96
    invoke-virtual/range {v8 .. v14}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 98
    iget-wide v8, v5, Lcom/perm/kate/api/Group;->gid:J

    const-wide/16 v10, -0x1

    mul-long v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v8, v0, Lcom/perm/kate/ChatMembersAdapter;->delete_member_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-wide v8, v5, Lcom/perm/kate/api/Group;->gid:J

    mul-long v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 104
    iget-object v6, v5, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    if-eqz v6, :cond_a

    .line 105
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const v10, 0x7f0f0143

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_8
    move-object/from16 v9, v20

    .line 109
    :goto_4
    iget-object v5, v5, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 110
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const v7, 0x7f0f0189

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_a
    move-object/from16 v9, v20

    .line 115
    :cond_b
    :goto_5
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    move-object v4, v12

    .line 117
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v4

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f090403

    .line 120
    invoke-virtual {v2, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 121
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_6
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090008

    invoke-virtual {v1, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v2
.end method
