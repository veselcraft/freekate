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

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 149
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ExtraProfileFragment$2;-><init>(Lcom/perm/kate/ExtraProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 361
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$5;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    .line 405
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$6;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->userClickListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$7;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->connectionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ExtraProfileFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/perm/kate/ExtraProfileFragment;->uid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->hideLoadingTextInUIThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/ExtraProfileFragment;)Lcom/perm/kate/api/User;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/ExtraProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->displayUserInfoOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->displayUserInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ExtraProfileFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ExtraProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ExtraProfileFragment;->onConnectionsSelect(Ljava/lang/String;I)V

    return-void
.end method

.method private displayUserInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    .line 202
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    if-nez v7, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 211
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_2
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 217
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_3
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 223
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_4
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 229
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_5
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 235
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    :cond_6
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 241
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_7
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 247
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_8
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 253
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_9
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 259
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->textClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_a
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    if-eqz v7, :cond_15

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, "grandparents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v5, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "grandchildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Relative;

    .line 271
    .local v4, "r":Lcom/perm/kate/api/Relative;
    const-string v8, "grandparent"

    iget-object v9, v4, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 272
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_c
    const-string v8, "parent"

    iget-object v9, v4, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 274
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_d
    const-string v8, "sibling"

    iget-object v9, v4, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 276
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_e
    const-string v8, "child"

    iget-object v9, v4, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 278
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_f
    const-string v8, "grandchild"

    iget-object v9, v4, Lcom/perm/kate/api/Relative;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 280
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    .end local v4    # "r":Lcom/perm/kate/api/Relative;
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_11

    .line 283
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandparents_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->grandparents_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->grandparents_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v2}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 287
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_12

    .line 288
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_parents_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->parents_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->parents_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v3}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 292
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_13

    .line 293
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_siblings_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->siblings_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->siblings_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v5}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 297
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 298
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_children_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->children_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 300
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->children_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v0}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 302
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_15

    .line 303
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandchildren_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->grandchildren_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->grandchildren_container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v1}, Lcom/perm/kate/ExtraProfileFragment;->fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 308
    .end local v0    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    .end local v1    # "grandchildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    .end local v2    # "grandparents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    .end local v3    # "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    .end local v5    # "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    :cond_15
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    .line 309
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 310
    :cond_16
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_connections_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 314
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    const-string v9, "Twitter"

    invoke-direct {p0, v7, v8, v9, v11}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 315
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_17

    .line 316
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .end local v6    # "view":Landroid/view/View;
    :cond_17
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 319
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->facebook_name:Ljava/lang/String;

    const-string v9, "Facebook"

    const/4 v10, 0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 320
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_18

    .line 321
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    .end local v6    # "view":Landroid/view/View;
    :cond_18
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 324
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    const-string v9, "Skype"

    const/4 v10, 0x2

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 325
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_19

    .line 326
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    .end local v6    # "view":Landroid/view/View;
    :cond_19
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 329
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    const-string v9, "Livejournal"

    const/4 v10, 0x3

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 330
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_1a

    .line 331
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .end local v6    # "view":Landroid/view/View;
    :cond_1a
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 334
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    const-string v9, "Instagram"

    const/4 v10, 0x4

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 335
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_1b

    .line 336
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .end local v6    # "view":Landroid/view/View;
    :cond_1b
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 339
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    const v9, 0x7f070516

    invoke-virtual {p0, v9}, Lcom/perm/kate/ExtraProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 340
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_1c

    .line 341
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .end local v6    # "view":Landroid/view/View;
    :cond_1c
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 345
    :cond_1d
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_contacts_title:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 348
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 349
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    const v9, 0x7f070473

    invoke-virtual {p0, v9}, Lcom/perm/kate/ExtraProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v12}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 350
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_1e

    .line 351
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .end local v6    # "view":Landroid/view/View;
    :cond_1e
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 354
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v7, v7, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v8, v8, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    const v9, 0x7f070470

    invoke-virtual {p0, v9}, Lcom/perm/kate/ExtraProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v9, v12}, Lcom/perm/kate/ExtraProfileFragment;->getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v6

    .line 355
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 356
    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private displayUserInfoOnUiThread()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ExtraProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/ExtraProfileFragment$4;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fillRelativesContainer(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Relative;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "relatives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Relative;>;"
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 372
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Relative;

    .line 373
    .local v0, "r":Lcom/perm/kate/api/Relative;
    invoke-direct {p0, v0}, Lcom/perm/kate/ExtraProfileFragment;->getUserView(Lcom/perm/kate/api/Relative;)Landroid/view/View;

    move-result-object v1

    .line 374
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 377
    .end local v0    # "r":Lcom/perm/kate/api/Relative;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getConnectionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "code"    # I

    .prologue
    const v9, 0x7f0e0346

    const v8, 0x7f0e0345

    .line 415
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03010a

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 416
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 417
    .local v1, "tv_label":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 419
    .local v2, "tv_value":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v4, p0, Lcom/perm/kate/ExtraProfileFragment;->connectionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v3, v8, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 423
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    const/4 v4, 0x5

    if-ne p4, v4, :cond_0

    .line 426
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 427
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 428
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 429
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 432
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_0
    return-object v3
.end method

.method private getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    .local v0, "ll":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    return-object v0
.end method

.method private getUserView(Lcom/perm/kate/api/Relative;)Landroid/view/View;
    .locals 10
    .param p1, "r"    # Lcom/perm/kate/api/Relative;

    .prologue
    const/4 v3, 0x1

    .line 380
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 381
    .local v9, "view":Landroid/view/View;
    const/4 v8, 0x0

    .line 382
    .local v8, "user":Lcom/perm/kate/api/User;
    iget-wide v0, p1, Lcom/perm/kate/api/Relative;->id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 383
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p1, Lcom/perm/kate/api/Relative;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 384
    :cond_0
    const v0, 0x7f0e0065

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 385
    .local v7, "name":Landroid/widget/TextView;
    const v0, 0x7f0e0064

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 386
    .local v2, "img_user_photo":Landroid/widget/ImageView;
    if-eqz v8, :cond_1

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v8, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/16 v4, 0x5a

    .line 389
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    move v6, v3

    .line 388
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 390
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->userClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-wide v0, v8, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    :goto_0
    return-object v9

    .line 393
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Relative;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private hideLoadingTextInUIThread()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ExtraProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/ExtraProfileFragment$3;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onConnectionsSelect(Ljava/lang/String;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v6, 0x0

    .line 461
    const/4 v2, 0x0

    .line 462
    .local v2, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 499
    :goto_0
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 501
    :cond_0
    return-void

    .line 464
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.twitter.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    goto :goto_0

    .line 467
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www.facebook.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    goto :goto_0

    .line 471
    :pswitch_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v1, "sky":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skype:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    .end local v1    # "sky":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 476
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "\u041e\u0448\u0438\u0431\u043a\u0430. \u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 Skype \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 480
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".livejournal.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    goto/16 :goto_0

    .line 485
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://instagram.com/_u/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    goto/16 :goto_0

    .line 488
    :pswitch_5
    iget-object v4, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    iget-object v4, v4, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 490
    .local v3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 491
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "url":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "url":Ljava/lang/String;
    goto/16 :goto_0

    .line 493
    :cond_1
    move-object v2, p1

    .line 494
    goto/16 :goto_0

    .line 496
    .end local v3    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/perm/kate/Helper;->onDial(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/ExtraProfileFragment;->uid:J

    .line 120
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/ExtraProfileFragment;->uid:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ExtraProfileFragment;->user:Lcom/perm/kate/api/User;

    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->refreshInThread()V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v1, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities_title:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0e0173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_activities:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0e0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests_title:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0e0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_interests:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0e0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music_title:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0e0177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_music:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0e0178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies_title:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_movies:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0e017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv_title:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0e017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_tv:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0e017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books_title:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0e017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_books:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0e017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games_title:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0e017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_games:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0e0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes_title:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0e0181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_quotes:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0e0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about_title:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f0e0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_about:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0e0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandparents_title:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0e0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->grandparents_container:Landroid/widget/LinearLayout;

    .line 99
    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_parents_title:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->parents_container:Landroid/widget/LinearLayout;

    .line 101
    const v1, 0x7f0e016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_siblings_title:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->siblings_container:Landroid/widget/LinearLayout;

    .line 103
    const v1, 0x7f0e016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_children_title:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0e016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->children_container:Landroid/widget/LinearLayout;

    .line 105
    const v1, 0x7f0e0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_grandchildren_title:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->grandchildren_container:Landroid/widget/LinearLayout;

    .line 107
    const v1, 0x7f0e0186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_connections_title:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0e0187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->connections_container:Landroid/widget/LinearLayout;

    .line 109
    const v1, 0x7f0e0184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->tv_profile_contacts_title:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0e0185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/ExtraProfileFragment;->contacts_container:Landroid/widget/LinearLayout;

    .line 111
    invoke-direct {p0}, Lcom/perm/kate/ExtraProfileFragment;->displayUserInfo()V

    .line 113
    return-object v0
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/perm/kate/ExtraProfileFragment;->refreshInThread()V

    .line 129
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ExtraProfileFragment;->showProgressBar(Z)V

    .line 133
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ExtraProfileFragment$1;-><init>(Lcom/perm/kate/ExtraProfileFragment;)V

    .line 146
    invoke-virtual {v0}, Lcom/perm/kate/ExtraProfileFragment$1;->start()V

    .line 147
    return-void
.end method
