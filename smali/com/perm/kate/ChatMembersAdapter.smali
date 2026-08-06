.class public Lcom/perm/kate/ChatMembersAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMembersAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private chat_id:J

.field private delete_member_click_listener:Landroid/view/View$OnClickListener;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;J)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "chat_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;",
            "Landroid/app/Activity;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 86
    new-instance v0, Lcom/perm/kate/ChatMembersAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChatMembersAdapter$1;-><init>(Lcom/perm/kate/ChatMembersAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->delete_member_click_listener:Landroid/view/View$OnClickListener;

    .line 25
    iput-object p1, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    .line 26
    iput-object p2, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    .line 27
    iput-wide p3, p0, Lcom/perm/kate/ChatMembersAdapter;->chat_id:J

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ChatMembersAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChatMembersAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ChatMembersAdapter;->removeMemberFromChat(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ChatMembersAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/ChatMembersAdapter;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/perm/kate/ChatMembersAdapter;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/ChatMembersAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ChatMembersAdapter;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/ChatMembersAdapter;->errorDeleteChatMember()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/ChatMembersAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ChatMembersAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private errorDeleteChatMember()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/ChatMembersAdapter$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/ChatMembersAdapter$4;-><init>(Lcom/perm/kate/ChatMembersAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/perm/kate/EditChatActivity;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity;->requeryOnUiThread()V

    goto :goto_0
.end method

.method private removeMemberFromChat(J)V
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "m":Lcom/perm/kate/api/User;
    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 99
    .local v2, "u":Lcom/perm/kate/api/User;
    iget-wide v4, v2, Lcom/perm/kate/api/User;->uid:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 100
    move-object v0, v2

    .line 104
    .end local v2    # "u":Lcom/perm/kate/api/User;
    :cond_1
    if-eqz v0, :cond_2

    .line 105
    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/perm/kate/ChatMembersAdapter;->notifyDataSetChanged()V

    .line 108
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/perm/kate/EditChatActivity;

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    check-cast v3, Lcom/perm/kate/EditChatActivity;

    iget-object v4, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/perm/kate/EditChatActivity;->setHeaderText(I)V

    .line 110
    :cond_3
    new-instance v1, Lcom/perm/kate/ChatMembersAdapter$2;

    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/perm/kate/ChatMembersAdapter$2;-><init>(Lcom/perm/kate/ChatMembersAdapter;Landroid/app/Activity;J)V

    .line 123
    .local v1, "remove_member_callback":Lcom/perm/kate/session/Callback;
    new-instance v3, Lcom/perm/kate/ChatMembersAdapter$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/perm/kate/ChatMembersAdapter$3;-><init>(Lcom/perm/kate/ChatMembersAdapter;JLcom/perm/kate/session/Callback;)V

    .line 128
    invoke-virtual {v3}, Lcom/perm/kate/ChatMembersAdapter$3;->start()V

    .line 129
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 45
    const-wide/16 v0, -0x1

    .line 46
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/perm/kate/ChatMembersAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 54
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03003a

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 57
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .local v14, "vi":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/ChatMembersAdapter;->users:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/User;

    .line 59
    .local v13, "user":Lcom/perm/kate/api/User;
    const v2, 0x7f0e0065

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 60
    .local v11, "name":Landroid/widget/TextView;
    const v2, 0x7f0e0064

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 61
    .local v4, "img_user_photo":Landroid/widget/ImageView;
    if-eqz v13, :cond_2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

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

    move-result-object v9

    .line 63
    .local v9, "display_name":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v13, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 65
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 64
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 66
    iget-wide v2, v13, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "uid_str":Ljava/lang/String;
    invoke-virtual {v14, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    const v2, 0x7f0e0347

    invoke-virtual {v14, v2, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    const v2, 0x7f0e00c6

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, v13, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v2, 0x7f0e00c7

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/ChatMembersAdapter;->delete_member_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f0e00c7

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-wide v6, v13, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "uid_str":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 56
    .end local v4    # "img_user_photo":Landroid/widget/ImageView;
    .end local v11    # "name":Landroid/widget/TextView;
    .end local v13    # "user":Lcom/perm/kate/api/User;
    .end local v14    # "vi":Landroid/view/View;
    :cond_0
    move-object/from16 v14, p2

    .restart local v14    # "vi":Landroid/view/View;
    goto/16 :goto_0

    .line 69
    .restart local v4    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v9    # "display_name":Ljava/lang/String;
    .restart local v11    # "name":Landroid/widget/TextView;
    .restart local v12    # "uid_str":Ljava/lang/String;
    .restart local v13    # "user":Lcom/perm/kate/api/User;
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .line 73
    .end local v9    # "display_name":Ljava/lang/String;
    .end local v12    # "uid_str":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    const v2, 0x7f0e0347

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    const v2, 0x7f0e00c7

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method
