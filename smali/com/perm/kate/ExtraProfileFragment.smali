.class public Lcom/perm/kate/ExtraProfileFragment;
.super Lcom/perm/kate/BaseFragment;
.source "ExtraProfileFragment.java"


# instance fields
.field private callback_profile:Lcom/perm/kate/session/Callback;

.field private children_container:Landroid/widget/LinearLayout;

.field private connectionClickListener:Landroid/view/View$OnClickListener;

.field private connections_container:Landroid/widget/LinearLayout;

.field private contacts_container:Landroid/widget/LinearLayout;

.field private grandchildren_container:Landroid/widget/LinearLayout;

.field private grandparents_container:Landroid/widget/LinearLayout;

.field private parents_container:Landroid/widget/LinearLayout;

.field private siblings_container:Landroid/widget/LinearLayout;

.field private textClickListener:Landroid/view/View$OnClickListener;

.field private tv_profile_about:Landroid/widget/TextView;

.field private tv_profile_about_title:Landroid/widget/TextView;

.field private tv_profile_activities:Landroid/widget/TextView;

.field private tv_profile_activities_title:Landroid/widget/TextView;

.field private tv_profile_books:Landroid/widget/TextView;

.field private tv_profile_books_title:Landroid/widget/TextView;

.field private tv_profile_children_title:Landroid/widget/TextView;

.field private tv_profile_connections_title:Landroid/widget/TextView;

.field private tv_profile_contacts_title:Landroid/widget/TextView;

.field private tv_profile_games:Landroid/widget/TextView;

.field private tv_profile_games_title:Landroid/widget/TextView;

.field private tv_profile_grandchildren_title:Landroid/widget/TextView;

.field private tv_profile_grandparents_title:Landroid/widget/TextView;

.field private tv_profile_interests:Landroid/widget/TextView;

.field private tv_profile_interests_title:Landroid/widget/TextView;

.field private tv_profile_movies:Landroid/widget/TextView;

.field private tv_profile_movies_title:Landroid/widget/TextView;

.field private tv_profile_music:Landroid/widget/TextView;

.field private tv_profile_music_title:Landroid/widget/TextView;

.field private tv_profile_parents_title:Landroid/widget/TextView;

.field private tv_profile_quotes:Landroid/widget/TextView;

.field private tv_profile_quotes_title:Landroid/widget/TextView;

.field private tv_profile_siblings_title:Landroid/widget/TextView;

.field private tv_profile_tv:Landroid/widget/TextView;

.field private tv_profile_tv_title:Landroid/widget/TextView;

.field private uid:J

.field private user:Lcom/perm/kate/api/User;

.field private userClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 149
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ExtraProfileFragment$2;-><init>(Lcom/perm/kate/ExtraProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 361
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$5;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    .line 407
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$6;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->userClickListener:Landroid/view/View$OnClickListener;

    .line 438
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$7;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->connectionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ExtraProfileFragment;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/perm/kate/ExtraProfileFragment;->uid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/ExtraProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->hideLoadingTextInUIThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/ExtraProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->displayUserInfoOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->displayUserInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ExtraProfileFragment;Ljava/lang/String;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ExtraProfileFragment;->onConnectionsSelect(Ljava/lang/String;I)V

    return-void
.end method

.method private displayUserInfo()V
    .locals 10

    .line 202
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 247
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_9
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v6, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v6, v6, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Relative;

    .line 271
    iget-object v8, v7, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    const-string v9, "grandparent"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 272
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_b
    iget-object v8, v7, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    const-string v9, "parent"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 274
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_c
    iget-object v8, v7, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    const-string v9, "sibling"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 276
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_d
    iget-object v8, v7, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    const-string v9, "child"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 278
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_e
    iget-object v8, v7, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    const-string v9, "grandchild"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 280
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 283
    iget-object v6, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandparents_title:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v6, p0, Lcom/perm/kate/ExtraProfileFragment;->grandparents_container:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v6, p0, Lcom/perm/kate/ExtraProfileFragment;->grandparents_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v0}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 287
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 288
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_parents_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->parents_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->parents_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 292
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_siblings_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->siblings_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->siblings_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v3}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 297
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 298
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_children_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->children_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->children_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v4}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 302
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 303
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandchildren_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->grandchildren_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->grandchildren_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v5}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 308
    :cond_14
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 310
    :cond_15
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_connections_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 314
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    const-string v2, "Twitter"

    invoke-direct {p0, v0, v0, v2, v1}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 316
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    :cond_16
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 319
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v2, v0, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/api/User;->facebook_name:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "Facebook"

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 321
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    :cond_17
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 324
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "Skype"

    invoke-direct {p0, v0, v0, v3, v2}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 326
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    :cond_18
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 329
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "Livejournal"

    invoke-direct {p0, v0, v0, v3, v2}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 331
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :cond_19
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 334
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "Instagram"

    invoke-direct {p0, v0, v0, v3, v2}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 336
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    :cond_1a
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 339
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    const v2, 0x7f0f05a0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 341
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :cond_1b
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 345
    :cond_1c
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_contacts_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 348
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_1d

    .line 349
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    const v2, 0x7f0f0502

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v0, v2, v1}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 351
    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :cond_1d
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 354
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    const v2, 0x7f0f04ff

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v0, v2, v1}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 356
    iget-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    return-void
.end method

.method private displayUserInfoOnUiThread()V
    .locals 2

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ExtraProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/ExtraProfileFragment$4;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .locals 2

    .line 371
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 372
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Relative;

    .line 373
    invoke-direct {p0, v0}, Lcom/perm/kate/ExtraProfileFragment;->getUserView(Lcom/perm/kate/api/Relative;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 5

    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c012a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09037b

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0903e7

    .line 421
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 422
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v4, p0, Lcom/perm/kate/ExtraProfileFragment;->connectionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v0, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 426
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x5

    if-ne p4, p1, :cond_0

    .line 429
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 430
    invoke-static {p1}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 432
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-object v0
.end method

.method private getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 402
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private getUserView(Lcom/perm/kate/api/Relative;)Landroid/view/View;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c012f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 384
    iget-wide v3, p1, Lcom/perm/kate/api/Relative;->id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 385
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    :cond_0
    const v1, 0x7f0903e6

    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090188

    .line 387
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 391
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    .line 390
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 392
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment;->userClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-wide v1, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/api/Relative;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-object v0
.end method

.method private hideLoadingTextInUIThread()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ExtraProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/ExtraProfileFragment$3;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConnectionsSelect(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 499
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/perm/kate/Helper;->onDial(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :pswitch_1
    iget-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object p2, p2, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p2

    .line 493
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 494
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto/16 :goto_1

    .line 488
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://instagram.com/_u/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 483
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".livejournal.com/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 474
    :pswitch_4
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 478
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "\u041e\u0448\u0438\u0431\u043a\u0430. \u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 Skype \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e."

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 470
    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://www.facebook.com/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 467
    :pswitch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://www.twitter.com/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 118
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/ExtraProfileFragment;->uid:J

    .line 120
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->refreshInThread()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0071

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903a7

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities_title:Landroid/widget/TextView;

    const p2, 0x7f0903a6

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    const p2, 0x7f0903c2

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests_title:Landroid/widget/TextView;

    const p2, 0x7f0903c1

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    const p2, 0x7f0903c6

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music_title:Landroid/widget/TextView;

    const p2, 0x7f0903c5

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    const p2, 0x7f0903c4

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies_title:Landroid/widget/TextView;

    const p2, 0x7f0903c3

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    const p2, 0x7f0903d0

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv_title:Landroid/widget/TextView;

    const p2, 0x7f0903cf

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    const p2, 0x7f0903ab

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books_title:Landroid/widget/TextView;

    const p2, 0x7f0903aa

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    const p2, 0x7f0903b4

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games_title:Landroid/widget/TextView;

    const p2, 0x7f0903b3

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    const p2, 0x7f0903cc

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes_title:Landroid/widget/TextView;

    const p2, 0x7f0903cb

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    const p2, 0x7f0903a5

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about_title:Landroid/widget/TextView;

    const p2, 0x7f0903a4

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    const p2, 0x7f0903b6

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandparents_title:Landroid/widget/TextView;

    const p2, 0x7f09015c

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->grandparents_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0903c9

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_parents_title:Landroid/widget/TextView;

    const p2, 0x7f090268

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->parents_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0903cd

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_siblings_title:Landroid/widget/TextView;

    const p2, 0x7f0902d0

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->siblings_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0903ac

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_children_title:Landroid/widget/TextView;

    const p2, 0x7f0900bb

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->children_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0903b5

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandchildren_title:Landroid/widget/TextView;

    const p2, 0x7f09015b

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->grandchildren_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0903ad

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_connections_title:Landroid/widget/TextView;

    const p2, 0x7f0900d8

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0903ae

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_contacts_title:Landroid/widget/TextView;

    const p2, 0x7f0900d9

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    .line 111
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->displayUserInfo()V

    return-object p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 133
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$1;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
