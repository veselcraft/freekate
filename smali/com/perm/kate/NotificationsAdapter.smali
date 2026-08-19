.class public Lcom/perm/kate/NotificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsAdapter.java"


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field groupClickListener:Landroid/view/View$OnClickListener;

.field private marketClick:Landroid/view/View$OnClickListener;

.field private notifications:Lcom/perm/kate/api/Notifications;

.field openned_items:Ljava/util/HashSet;

.field photoClickListener:Landroid/view/View$OnClickListener;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;

.field private videoClick:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$DqkDwxfDmROiUufqkihccHtZmbQ(Lcom/perm/kate/NotificationsAdapter;Lcom/perm/kate/api/Notification;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NotificationsAdapter;->lambda$displayUsers$0(Lcom/perm/kate/api/Notification;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Lcom/perm/kate/api/Notifications;

    invoke-direct {v0}, Lcom/perm/kate/api/Notifications;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    .line 642
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->openned_items:Ljava/util/HashSet;

    .line 1288
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$1;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1306
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$2;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 1313
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$3;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->videoClick:Landroid/view/View$OnClickListener;

    .line 1324
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$4;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->marketClick:Landroid/view/View$OnClickListener;

    .line 1334
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$5;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    .line 39
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-void
.end method

.method private attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 883
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 884
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 886
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private cropLongText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xc7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private displayCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 782
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 785
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 786
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    const/4 v0, 0x0

    .line 787
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 790
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 793
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    const v1, 0x7f090186

    .line 795
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 796
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v4, ""

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 797
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 800
    iget-object v4, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 801
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-wide v5, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object v2, v4

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_1
    neg-long v2, v2

    .line 805
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 807
    iget-object v4, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 808
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 809
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-wide v5, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_2
    move-object v3, v4

    move-object v9, v3

    :goto_2
    const v2, 0x7f0903a2

    .line 813
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 815
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 819
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 822
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 823
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 826
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayCommentPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 831
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 834
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 837
    invoke-static {v0}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 839
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 840
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 841
    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 845
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    const v2, 0x7f090186

    .line 847
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 848
    iget-wide v3, v1, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v5, ""

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_1

    .line 849
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 852
    iget-object v5, v3, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 853
    iget-object v6, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    iget-wide v6, v3, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object v3, v5

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    neg-long v3, v3

    .line 857
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 859
    iget-object v5, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 860
    iget-object v4, v3, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 861
    iget-object v6, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    iget-wide v6, v3, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    const v3, 0x7f0903a2

    .line 865
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    const/4 v6, 0x1

    const/16 v7, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    move-object v5, v2

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 867
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 871
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 874
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 875
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 877
    iget-object p2, v1, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 878
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f090255

    .line 1035
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1038
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 1039
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    const/4 v0, 0x0

    .line 1042
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 1046
    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0903a2

    .line 1048
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090186

    .line 1049
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1050
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/4 v8, 0x1

    const/16 v9, 0x5a

    .line 1051
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v10

    const/4 v11, 0x1

    move-object v7, v2

    .line 1050
    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1052
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    iget-wide v5, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1058
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 1059
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 1062
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 1063
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1065
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1066
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayCopyPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 4

    const v0, 0x7f090255

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    const/4 v0, 0x0

    .line 496
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 501
    check-cast v2, Lcom/perm/kate/api/IdsPair;

    iget-wide v2, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 505
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 506
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayCopyPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 4

    const v0, 0x7f090255

    .line 693
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 696
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 702
    invoke-static {v0}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 704
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 705
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 706
    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 712
    check-cast v2, Lcom/perm/kate/api/IdsPair;

    iget-wide v2, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 716
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 717
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayCopyVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 4

    const v0, 0x7f090255

    .line 512
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08026a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 519
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    const/4 v0, 0x0

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 525
    check-cast v2, Lcom/perm/kate/api/IdsPair;

    iget-wide v2, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 529
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayFollow(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 722
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f04c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 725
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 728
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 729
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 732
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 735
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 736
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayFriendAccepted(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 741
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 744
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 748
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 751
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 754
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 755
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikeComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0310

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 187
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 189
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 190
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 193
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 196
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikeCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0311

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 209
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 212
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 213
    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 216
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 219
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikeCommentTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0312

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 233
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 236
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 239
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikeCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0314

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 255
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 256
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 259
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 262
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikePhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f030e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 470
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 478
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 481
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikePost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 535
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f030f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 544
    invoke-static {v0}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 546
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 547
    iget-object v2, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 549
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 551
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 554
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 556
    :goto_0
    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 557
    iget-object v1, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    iget-object v0, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 559
    :cond_2
    invoke-direct {p0, v0}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 563
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 566
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 567
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayLikeVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 3

    const v0, 0x7f090255

    .line 760
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0313

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0901b5

    .line 763
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 766
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 767
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    const/4 v0, 0x0

    .line 770
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 773
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V

    .line 776
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 777
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayMarketItem(Landroid/view/View;Lcom/perm/kate/api/MarketItem;)V
    .locals 7

    const v0, 0x7f09026d

    .line 613
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 615
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 617
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 618
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/MarketItem;->thumb_photo:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x82

    const v5, 0x7f080209

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 620
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 621
    iget-object p2, p0, Lcom/perm/kate/NotificationsAdapter;->marketClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private displayMention(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f090255

    .line 1227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0331

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1230
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 1231
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 1232
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    const/4 v1, 0x0

    .line 1233
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1236
    iget-wide v1, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    const v3, 0x7f090186

    const v4, 0x7f0903a2

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    .line 1237
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1240
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1242
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/4 v9, 0x1

    const/16 v10, 0x5a

    .line 1243
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v11

    const/4 v12, 0x1

    move-object v8, v2

    .line 1242
    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1244
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1245
    iget-wide v3, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    neg-long v1, v1

    .line 1249
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1252
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1254
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    .line 1255
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    move-object v5, v2

    .line 1254
    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1256
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    iget-wide v3, v1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1258
    iget-object v1, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1263
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 1264
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 1267
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1268
    iget-object p2, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1269
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1270
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private displayMentionCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u0423\u043f\u043e\u043c\u044f\u043d\u0443\u043b(\u0430) \u0432\u0430\u0441 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 424
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    if-eqz v0, :cond_3

    const v1, 0x7f090186

    .line 427
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 428
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v4, 0x0

    const-string v6, ""

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    .line 429
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 432
    iget-object v3, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 434
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-wide v4, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    neg-long v2, v2

    .line 437
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 439
    iget-object v6, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 440
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v6

    .line 442
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-wide v4, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v6

    const v2, 0x7f0903a2

    .line 445
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 447
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    .line 446
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 448
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 453
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    const p2, 0x7f0900d0

    .line 457
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 458
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 461
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private displayMentionCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 1071
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u0423\u043f\u043e\u043c\u044f\u043d\u0443\u043b(\u0430) \u0432\u0430\u0441 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 1075
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    const/4 v0, 0x0

    .line 1078
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    if-eqz v0, :cond_3

    const v1, 0x7f090186

    .line 1084
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1085
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v4, 0x0

    const-string v6, ""

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    .line 1086
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1089
    iget-object v3, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v6

    .line 1091
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    iget-wide v4, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    neg-long v2, v2

    .line 1094
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1096
    iget-object v6, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 1097
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v6

    .line 1099
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    iget-wide v4, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v6

    const v2, 0x7f0903a2

    .line 1102
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 1104
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    .line 1103
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1105
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1109
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 1110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 1113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 1114
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1116
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1117
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayMentionInComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 893
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u0423\u043f\u043e\u043c\u044f\u043d\u0443\u043b(\u0430) \u0432\u0430\u0441 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 899
    invoke-static {v0}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 901
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 902
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 903
    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 907
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    const v2, 0x7f090186

    .line 909
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 910
    iget-wide v3, v1, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v5, ""

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_1

    .line 911
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 914
    iget-object v5, v3, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 915
    iget-object v6, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    iget-wide v6, v3, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object v3, v5

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    move-object v4, v3

    goto :goto_1

    :cond_1
    neg-long v3, v3

    .line 919
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 921
    iget-object v5, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 922
    iget-object v4, v3, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 923
    iget-object v6, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    iget-wide v6, v3, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    const v3, 0x7f0903a2

    .line 927
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    const/4 v6, 0x1

    const/16 v7, 0x5a

    .line 929
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    move-object v5, v2

    .line 928
    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 930
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09039e

    .line 934
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 937
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 938
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    iget-object p2, v1, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 941
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayOriginalText(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0903a1

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 579
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 583
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V
    .locals 7

    const v0, 0x7f09026d

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 589
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 591
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x82

    const v5, 0x7f080209

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 594
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 595
    iget-object p2, p0, Lcom/perm/kate/NotificationsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private displayReplyComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0433

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 320
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 323
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    const v1, 0x7f090186

    .line 325
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 326
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v4, ""

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 327
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    iget-object v3, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 332
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-wide v5, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    neg-long v2, v2

    .line 335
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 337
    iget-object v4, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 338
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 340
    :goto_1
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-wide v5, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v4

    const v2, 0x7f0903a2

    .line 343
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 345
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    .line 344
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 346
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 350
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 353
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 354
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 357
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayReplyCommentMarket(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 1175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0433

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1178
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayMarketItem(Landroid/view/View;Lcom/perm/kate/api/MarketItem;)V

    .line 1181
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 1182
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    if-eqz v0, :cond_3

    const v1, 0x7f090186

    .line 1188
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1189
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v4, 0x0

    const-string v6, ""

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    .line 1190
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1193
    iget-object v6, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1194
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    iget-wide v4, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object v2, v6

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_1
    neg-long v2, v2

    .line 1198
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1200
    iget-object v6, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 1201
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 1202
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    iget-wide v4, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v9, v6

    goto :goto_2

    :cond_2
    move-object v3, v6

    move-object v9, v3

    :goto_2
    const v2, 0x7f0903a2

    .line 1206
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 1208
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    .line 1207
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1209
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1213
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 1214
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 1217
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 1218
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1220
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1221
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayReplyCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0434

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 367
    :goto_0
    iget-object v2, p2, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 368
    invoke-static {v0}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 371
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    if-eqz v0, :cond_4

    const v2, 0x7f090186

    .line 374
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 375
    iget-wide v3, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 376
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    iget-object v4, v3, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 381
    :goto_1
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-wide v5, v3, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    neg-long v3, v3

    .line 384
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 386
    iget-object v1, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 387
    iget-object v4, v3, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v1

    .line 389
    :goto_2
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-wide v5, v3, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_3
    const v3, 0x7f0903a2

    .line 392
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    const/4 v6, 0x1

    const/16 v7, 0x5a

    .line 394
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    move-object v5, v2

    .line 393
    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 395
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 400
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_5

    const p2, 0x7f0900d0

    .line 404
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 405
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 408
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private displayReplyCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 1122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0435

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1125
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 1126
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 1129
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 1130
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    if-eqz v0, :cond_3

    const v1, 0x7f090186

    .line 1136
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1137
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v4, 0x0

    const-string v6, ""

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    .line 1138
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    iget-object v6, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1142
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-wide v4, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object v2, v6

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_1
    neg-long v2, v2

    .line 1146
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1148
    iget-object v6, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 1149
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 1150
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1151
    iget-wide v4, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v9, v6

    goto :goto_2

    :cond_2
    move-object v3, v6

    move-object v9, v3

    :goto_2
    const v2, 0x7f0903a2

    .line 1154
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 1156
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    .line 1155
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1157
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 1162
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 1165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 1166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1168
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1169
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayReplyTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    const v0, 0x7f090255

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0436

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/GroupTopic;

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 273
    iget-object v0, v0, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 276
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    const v1, 0x7f090186

    .line 278
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 279
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-string v4, ""

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    iget-object v3, v2, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 285
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-wide v5, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    neg-long v2, v2

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v4, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 291
    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 293
    :goto_1
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-wide v5, v2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v4

    const v2, 0x7f0903a2

    .line 296
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 298
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v1

    .line 297
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 299
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x0

    .line 307
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object p2, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 310
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayUsers(Landroid/view/View;Ljava/lang/Object;Lcom/perm/kate/api/Notification;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 647
    check-cast p2, Ljava/util/ArrayList;

    const v0, 0x7f090404

    .line 648
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 650
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 652
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 653
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 654
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c012b

    invoke-virtual {v3, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f090403

    .line 655
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0903a2

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 657
    iget-object v7, p0, Lcom/perm/kate/NotificationsAdapter;->openned_items:Ljava/util/HashSet;

    invoke-virtual {v7, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 658
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    new-instance p2, Lcom/perm/kate/NotificationsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/perm/kate/NotificationsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/NotificationsAdapter;Lcom/perm/kate/api/Notification;)V

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 668
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 670
    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v6

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    iget-object v6, v6, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 673
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 674
    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 676
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v6

    .line 677
    iget-object v7, v6, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 678
    iget-object v6, v6, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 679
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 680
    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move-object v2, v7

    .line 682
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    const/4 v8, 0x1

    const/16 v9, 0x5a

    .line 684
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v10

    const/4 v11, 0x1

    move-object v7, v4

    .line 683
    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 685
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V
    .locals 7

    const v0, 0x7f09026d

    .line 600
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    const/16 p2, 0x8

    .line 602
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 604
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x82

    const v5, 0x7f080209

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 607
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 608
    iget-object p2, p0, Lcom/perm/kate/NotificationsAdapter;->videoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private displayWall(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 946
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    const v1, 0x7f090255

    .line 949
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f003e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 952
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 953
    iget-object v2, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 955
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 957
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto :goto_0

    .line 960
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 961
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 965
    iget-wide v1, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f0903a2

    .line 968
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090186

    .line 969
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 970
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    iget-object v6, v1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/4 v8, 0x1

    const/16 v9, 0x5a

    .line 971
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v10

    const/4 v11, 0x1

    move-object v7, v2

    .line 970
    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 972
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    iget-wide v5, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 978
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 979
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 982
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 983
    iget-object p2, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 984
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 985
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private displayWallPublish(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10

    .line 990
    iget-object v0, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    const v1, 0x7f090255

    .line 993
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f004e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 996
    iget-object v1, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 997
    iget-object v2, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 999
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 1001
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto :goto_0

    .line 1004
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 1005
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1009
    iget-wide v1, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f0903a2

    .line 1012
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090186

    .line 1013
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1014
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    .line 1015
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v8

    const/4 v9, 0x1

    move-object v5, v2

    .line 1014
    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1016
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    iget-wide v3, v1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1018
    iget-object v1, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1022
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object p2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f09039e

    .line 1023
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900d0

    .line 1026
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1027
    iget-object p2, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1028
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1029
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;
    .locals 3

    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 628
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    iget-object p1, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;
    .locals 3

    if-eqz p1, :cond_1

    .line 635
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 636
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iget-object p1, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;
    .locals 7

    .line 1282
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    .line 1283
    iget-wide v2, v1, Lcom/perm/kate/api/Group;->gid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getLayoutByViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const p1, 0x7f0c00d6

    return p1

    :cond_0
    const p1, 0x7f0c00d7

    return p1
.end method

.method private getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;
    .locals 7

    .line 1275
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 1276
    iget-wide v2, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$displayUsers$0(Lcom/perm/kate/api/Notification;Landroid/view/View;)V
    .locals 0

    .line 661
    iget-object p2, p0, Lcom/perm/kate/NotificationsAdapter;->openned_items:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static photoClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 3

    .line 1296
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/Photo;

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    new-instance p0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.position"

    const/4 v2, 0x0

    .line 1301
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.perm.kate.photos"

    .line 1302
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1303
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public displayNewData(Lcom/perm/kate/api/Notifications;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    .line 44
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Notification;

    .line 65
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "copy_photo"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_video"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_post"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "copy_post"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "copy_video"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_comment"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_comment_photo"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_comment_video"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_comment_topic"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "follow"

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "friend_accepted"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "comment_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "comment_video"

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "comment_post"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "reply_comment"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "reply_comment_photo"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "reply_comment_video"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "reply_comment_market"

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "wall"

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "wall_publish"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "mention"

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "mention_comments"

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "mention_comment_photo"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "mention_comment_video"

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "reply_topic"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/perm/kate/NotificationsAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/NotificationsAdapter;->getLayoutByViewType(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object p3, p3, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Notification;

    .line 108
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_photo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 109
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikePhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 110
    :cond_1
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "copy_photo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 111
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayCopyPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 112
    :cond_2
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "copy_video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayCopyVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 114
    :cond_3
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_post"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 115
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikePost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 116
    :cond_4
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "copy_post"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 117
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayCopyPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 118
    :cond_5
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "follow"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 119
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayFollow(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 120
    :cond_6
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "friend_accepted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 121
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayFriendAccepted(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "comment_photo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 123
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 124
    :cond_8
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "comment_post"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayCommentPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 126
    :cond_9
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "wall"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 127
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayWall(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 128
    :cond_a
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "wall_publish"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 129
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayWallPublish(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 130
    :cond_b
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "comment_video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 131
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 132
    :cond_c
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "reply_comment"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 133
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayReplyComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 134
    :cond_d
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "reply_comment_photo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 135
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayReplyCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 136
    :cond_e
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "mention_comment_photo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 137
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayMentionCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 138
    :cond_f
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "mention_comment_video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 139
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayMentionCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 140
    :cond_10
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "reply_comment_video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 141
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayReplyCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 142
    :cond_11
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "reply_comment_market"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 143
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayReplyCommentMarket(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 144
    :cond_12
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "reply_topic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 145
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayReplyTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 146
    :cond_13
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_comment"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 147
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikeComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 148
    :cond_14
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_comment_photo"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 149
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikeCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 150
    :cond_15
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_comment_video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 151
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikeCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 152
    :cond_16
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_comment_topic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 153
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikeCommentTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 154
    :cond_17
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "like_video"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 155
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayLikeVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 156
    :cond_18
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "mention"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 157
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayMention(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 158
    :cond_19
    iget-object p3, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v0, "mention_comments"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 159
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/NotificationsAdapter;->displayMentionInComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
