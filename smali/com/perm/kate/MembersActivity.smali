.class public Lcom/perm/kate/MembersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MembersActivity$MembersPagerAdapter;
    }
.end annotation


# instance fields
.field private audio_attachment:Ljava/lang/String;

.field private doc_attachment:Ljava/lang/String;

.field private enable_me:Ljava/lang/Boolean;

.field private forward_messages:[J

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private new_message:Z

.field private only_members:Z

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private photo_attachment:Ljava/lang/String;

.field private put_to_photo:Ljava/lang/Boolean;

.field private shared_photo:Landroid/net/Uri;

.field private shared_text:Ljava/lang/String;

.field private tabs:Lcom/perm/kate/tabs/TabsInfo;

.field private uid_str:Ljava/lang/String;

.field uris_shared:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private video_attachment:Ljava/lang/String;

.field private wall_attachment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 46
    iput-object v1, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    .line 47
    iput-object v1, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 174
    new-instance v0, Lcom/perm/kate/MembersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MembersActivity$1;-><init>(Lcom/perm/kate/MembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MembersActivity;)Lcom/perm/kate/tabs/TabsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MembersActivity;)Lcom/perm/kate/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MembersActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/MembersActivity;->makeFriendsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/MembersActivity;)Lcom/perm/kate/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MembersActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/MembersActivity;->makeMessagesFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method private getSharedContent()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 118
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "mime_type":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 122
    .local v2, "ext":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    const-string v7, "text/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 123
    :cond_0
    if-eqz v2, :cond_4

    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "dat":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    iput-object v6, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    .line 125
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 126
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    .line 136
    .end local v1    # "dat":Ljava/lang/Object;
    .end local v2    # "ext":Landroid/os/Bundle;
    .end local v4    # "mime_type":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/MembersActivity;->uris_shared:Ljava/util/ArrayList;

    .line 138
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 139
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    .line 145
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    return-void

    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "ext":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "mime_type":Ljava/lang/String;
    :cond_4
    move-object v1, v6

    .line 123
    goto :goto_0

    .line 127
    :cond_5
    const-string v6, "image/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 130
    new-instance v7, Ljava/lang/Exception;

    const-string v6, ""

    invoke-direct {v7, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 131
    :cond_6
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    .line 132
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 133
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/perm/kate/MembersActivity;->only_members:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "ext":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "mime_type":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 142
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private makeFriendsFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .prologue
    .line 182
    new-instance v1, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v1}, Lcom/perm/kate/FriendsFragment;-><init>()V

    .line 183
    .local v1, "friendsFragment":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "com.perm.kate.select_user"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-string v2, "com.perm.kate.new_message"

    iget-boolean v3, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "com.perm.kate.forward_messages"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 190
    const-string v2, "com.perm.kate.photo_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 192
    const-string v2, "com.perm.kate.wall_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 194
    const-string v2, "com.perm.kate.audio_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 196
    const-string v2, "com.perm.kate.video_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 198
    const-string v2, "com.perm.kate.doc_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_5
    const-string v2, "com.perm.kate.enable_me"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->enable_me:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    const-string v2, "shared_photo"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    const-string v2, "shared_photos"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->uris_shared:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 202
    const-string v2, "shared_text"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    return-object v1
.end method

.method private makeMessagesFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .prologue
    .line 208
    new-instance v1, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v1}, Lcom/perm/kate/MessagesFragment;-><init>()V

    .line 209
    .local v1, "messagesFragment":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.select_user"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string v2, "com.perm.kate.new_message"

    iget-boolean v3, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    if-eqz v2, :cond_0

    .line 213
    const-string v2, "com.perm.kate.forward_messages"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 215
    const-string v2, "com.perm.kate.photo_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 217
    const-string v2, "com.perm.kate.wall_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 219
    const-string v2, "com.perm.kate.audio_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 221
    const-string v2, "com.perm.kate.video_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 223
    const-string v2, "com.perm.kate.doc_attachment"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_5
    const-string v2, "shared_photo"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    const-string v2, "shared_photos"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->uris_shared:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 226
    const-string v2, "shared_text"

    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 228
    return-object v1
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getRefreshState()Z

    move-result v0

    .line 160
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/MembersActivity;->showProgressBar(Z)V

    .line 161
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 267
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 269
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 270
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 274
    .end local v0    # "pos":I
    .end local v1    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method getRefreshState()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 167
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 168
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 169
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v2, v2, Lcom/perm/kate/BaseFragment;->refreshState:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v3, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->finish()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->uid_str:Ljava/lang/String;

    .line 62
    const v3, 0x7f0300a4

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->setContentView(I)V

    .line 63
    const v3, 0x7f070472

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->setHeaderTitle(I)V

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->setupRefreshButton()V

    .line 66
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.only_members"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    .line 68
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.new_message"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.forward_messages"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.photo_attachment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.wall_attachment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->wall_attachment:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.audio_attachment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->audio_attachment:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.video_attachment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->video_attachment:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.doc_attachment"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->doc_attachment:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.put_to_photo"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->put_to_photo:Ljava/lang/Boolean;

    .line 76
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.enable_me"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->enable_me:Ljava/lang/Boolean;

    .line 79
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shared_text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.friends_invite"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    .local v0, "friends_invite":Z
    if-eqz v0, :cond_2

    .line 83
    const v3, 0x7f0701bd

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->setHeaderTitle(I)V

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/MembersActivity;->getSharedContent()V

    .line 87
    const v3, 0x7f0e0228

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/PagerTitleStrip;

    .line 88
    .local v2, "pagerTitleStrip":Landroid/support/v4/view/PagerTitleStrip;
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "members"

    const v5, 0x7f0701d4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 89
    iget-boolean v3, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    if-nez v3, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->setupMenuButton()V

    .line 91
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v4, "dialogs"

    const v5, 0x7f07008c

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 92
    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    const v4, 0x7f0a00c4

    if-eq v3, v4, :cond_3

    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    const v4, 0x7f0a00c8

    if-eq v3, v4, :cond_3

    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    const v4, 0x7f0a00ca

    if-eq v3, v4, :cond_3

    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    const v4, 0x7f0a00c9

    if-ne v3, v4, :cond_5

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    .line 97
    :goto_1
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setGravity(I)V

    .line 98
    sget-boolean v3, Lcom/perm/kate/MembersActivity;->IsCustomTheme:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v3}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 106
    :cond_4
    :goto_2
    new-instance v1, Lcom/perm/kate/MembersActivity$MembersPagerAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/perm/kate/MembersActivity$MembersPagerAdapter;-><init>(Lcom/perm/kate/MembersActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 107
    .local v1, "mAdapter":Lcom/perm/kate/MembersActivity$MembersPagerAdapter;
    const v3, 0x7f0e020b

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 108
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 109
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/perm/kate/MembersActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 111
    iget-object v3, p0, Lcom/perm/kate/MembersActivity;->put_to_photo:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const v3, 0x7f0701dd

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->setHeaderTitle(I)V

    goto/16 :goto_0

    .line 96
    .end local v1    # "mAdapter":Lcom/perm/kate/MembersActivity$MembersPagerAdapter;
    :cond_5
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextColor(I)V

    goto :goto_1

    .line 101
    :cond_6
    invoke-virtual {v2, v7}, Landroid/support/v4/view/PagerTitleStrip;->setVisibility(I)V

    .line 102
    const v3, 0x7f0e0229

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v3, 0x7f0e022a

    invoke-virtual {p0, v3}, Lcom/perm/kate/MembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->showMenuButton()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 282
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 283
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 288
    .end local v0    # "pos":I
    .end local v1    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/perm/kate/MembersActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 262
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 152
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 153
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0
.end method
