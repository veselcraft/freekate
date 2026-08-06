.class public Lcom/perm/kate/NotificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsAdapter.java"


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field groupClickListener:Landroid/view/View$OnClickListener;

.field private marketClick:Landroid/view/View$OnClickListener;

.field private notifications:Lcom/perm/kate/api/Notifications;

.field photoClickListener:Landroid/view/View$OnClickListener;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;

.field private videoClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 1
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/perm/kate/api/Notifications;

    invoke-direct {v0}, Lcom/perm/kate/api/Notifications;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    .line 1254
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$1;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1272
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$2;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 1279
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$3;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->videoClick:Landroid/view/View$OnClickListener;

    .line 1290
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$4;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->marketClick:Landroid/view/View$OnClickListener;

    .line 1300
    new-instance v0, Lcom/perm/kate/NotificationsAdapter$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsAdapter$5;-><init>(Lcom/perm/kate/NotificationsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 38
    return-void
.end method

.method private attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2, "comment_text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 855
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 857
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, p1}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 859
    :cond_1
    return-object p2
.end method

.method private cropLongText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 569
    const/16 v0, 0xc8

    .line 570
    .local v0, "max":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xc7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 572
    :cond_0
    return-object p1
.end method

.method private displayCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 753
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f070070

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 756
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Photo;

    .line 757
    .local v14, "photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 758
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 761
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 764
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v10, Lcom/perm/kate/api/Comment;

    .line 765
    .local v10, "comment":Lcom/perm/kate/api/Comment;
    const-string v15, ""

    .local v15, "text":Ljava/lang/String;
    const-string v3, ""

    .line 766
    .local v3, "photo1":Ljava/lang/String;
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 767
    .local v4, "userImageView":Landroid/widget/ImageView;
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_1

    .line 768
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v16

    .line 769
    .local v16, "user":Lcom/perm/kate/api/User;
    if-eqz v16, :cond_0

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 771
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 784
    .end local v16    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 786
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 790
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 794
    .local v11, "commentTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v2, v10, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 797
    .local v12, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2, v12}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    return-void

    .line 776
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v11    # "commentTextView":Landroid/widget/TextView;
    .end local v12    # "comment_text":Ljava/lang/String;
    :cond_1
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v13

    .line 777
    .local v13, "group":Lcom/perm/kate/api/Group;
    if-eqz v13, :cond_0

    .line 778
    iget-object v15, v13, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 779
    iget-object v3, v13, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    iget-wide v6, v13, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayCommentPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 802
    const v4, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f070071

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 805
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/perm/kate/api/WallMessage;

    .line 808
    .local v18, "post":Lcom/perm/kate/api/WallMessage;
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 810
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v12

    .line 811
    .local v12, "attached_photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 812
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 813
    .local v19, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Comment;

    .line 817
    .local v14, "comment":Lcom/perm/kate/api/Comment;
    const-string v13, ""

    .local v13, "author_name":Ljava/lang/String;
    const-string v5, ""

    .line 818
    .local v5, "author_photo":Ljava/lang/String;
    const v4, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 819
    .local v6, "userImageView":Landroid/widget/ImageView;
    iget-wide v8, v14, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-lez v4, :cond_1

    .line 820
    iget-wide v8, v14, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v20

    .line 821
    .local v20, "user":Lcom/perm/kate/api/User;
    if-eqz v20, :cond_0

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 823
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 836
    .end local v20    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    const v4, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 838
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 842
    .local v11, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    const v4, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 846
    .local v15, "commentTextView":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v4, v14, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v7, v14, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 849
    .local v16, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    return-void

    .line 828
    .end local v11    # "ago_text":Ljava/lang/String;
    .end local v15    # "commentTextView":Landroid/widget/TextView;
    .end local v16    # "comment_text":Ljava/lang/String;
    :cond_1
    iget-wide v8, v14, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v17

    .line 829
    .local v17, "group":Lcom/perm/kate/api/Group;
    if-eqz v17, :cond_0

    .line 830
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 831
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    const/4 v3, 0x1

    .line 1004
    const v0, 0x7f0e026b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1007
    iget-object v12, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v12, Lcom/perm/kate/api/Video;

    .line 1008
    .local v12, "video":Lcom/perm/kate/api/Video;
    invoke-direct {p0, p1, v12}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1014
    iget-object v8, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v8, Lcom/perm/kate/api/Comment;

    .line 1015
    .local v8, "comment":Lcom/perm/kate/api/Comment;
    iget-wide v0, v8, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v11

    .line 1016
    .local v11, "user":Lcom/perm/kate/api/User;
    const v0, 0x7f0e0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v11, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v11, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    const v0, 0x7f0e026f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1018
    .local v2, "userImageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v11, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/16 v4, 0x5a

    .line 1019
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    move v6, v3

    .line 1018
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1020
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    iget-wide v0, v11, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v11, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1025
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 1026
    .local v7, "ago_text":Ljava/lang/String;
    const v0, 0x7f0e026e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    const v0, 0x7f0e0271

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1030
    .local v9, "commentTextView":Landroid/widget/TextView;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1032
    iget-object v0, v8, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1033
    .local v10, "comment_text":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v10}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    return-void
.end method

.method private displayCopyPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 486
    const v4, 0x7f0e026b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f07007b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 489
    const v4, 0x7f0e026a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f02019e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget-object v2, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v2, Lcom/perm/kate/api/Photo;

    .line 493
    .local v2, "photo":Lcom/perm/kate/api/Photo;
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 494
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 497
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 499
    .local v1, "pair":Ljava/lang/Object;
    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .end local v1    # "pair":Ljava/lang/Object;
    iget-wide v6, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 503
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v5, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method

.method private displayCopyPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 664
    const v6, 0x7f0e026b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f07007c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 667
    const v6, 0x7f0e026a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f02019e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 670
    iget-object v3, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v3, Lcom/perm/kate/api/WallMessage;

    .line 673
    .local v3, "post":Lcom/perm/kate/api/WallMessage;
    invoke-static {v3}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 675
    iget-object v6, v3, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 676
    .local v1, "attached_photo":Lcom/perm/kate/api/Photo;
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 677
    iget-object v6, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "text":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 681
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 683
    .local v2, "pair":Ljava/lang/Object;
    check-cast v2, Lcom/perm/kate/api/IdsPair;

    .end local v2    # "pair":Ljava/lang/Object;
    iget-wide v8, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 684
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 687
    iget-object v6, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v7, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "ago_text":Ljava/lang/String;
    const v6, 0x7f0e026e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    return-void
.end method

.method private displayCopyVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 510
    const v4, 0x7f0e026b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f07007d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 513
    const v4, 0x7f0e026a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f02019e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    iget-object v3, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v3, Lcom/perm/kate/api/Video;

    .line 517
    .local v3, "video":Lcom/perm/kate/api/Video;
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 518
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 523
    .local v1, "pair":Ljava/lang/Object;
    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .end local v1    # "pair":Ljava/lang/Object;
    iget-wide v6, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 527
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v5, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method private displayFollow(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    const/4 v3, 0x0

    .line 693
    const v1, 0x7f0e026b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070434

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 696
    const v1, 0x7f0e026a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 700
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 703
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 706
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "ago_text":Ljava/lang/String;
    const v1, 0x7f0e026e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    return-void
.end method

.method private displayFriendAccepted(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    const/4 v3, 0x0

    .line 712
    const v1, 0x7f0e026b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 715
    const v1, 0x7f0e026a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 718
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 719
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 722
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 725
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v2, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "ago_text":Ljava/lang/String;
    const v1, 0x7f0e026e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    return-void
.end method

.method private displayLikeComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 178
    const v3, 0x7f0e026b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0702b5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const v3, 0x7f0e026a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020117

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 185
    .local v1, "comment":Lcom/perm/kate/api/Comment;
    iget-object v3, v1, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    .line 187
    .local v2, "photo":Lcom/perm/kate/api/Photo;
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 188
    iget-object v3, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 191
    iget-object v3, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 194
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v4, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "ago_text":Ljava/lang/String;
    const v3, 0x7f0e026e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method private displayLikeCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 200
    const v4, 0x7f0e026b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0702b6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 203
    const v4, 0x7f0e026a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020117

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 207
    .local v1, "comment":Lcom/perm/kate/api/Comment;
    iget-object v3, p2, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 209
    .local v3, "photo":Lcom/perm/kate/api/Photo;
    if-nez v1, :cond_0

    const-string v2, ""

    .line 210
    .local v2, "message":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 211
    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 214
    iget-object v4, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 217
    iget-object v4, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v5, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 209
    .end local v0    # "ago_text":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    iget-object v2, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method private displayLikeCommentTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 223
    const v2, 0x7f0e026b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0702b7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 226
    const v2, 0x7f0e026a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020117

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 230
    .local v1, "comment":Lcom/perm/kate/api/Comment;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 231
    iget-object v2, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 234
    iget-object v2, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 237
    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v3, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method private displayLikeCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 243
    const v3, 0x7f0e026b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0702b9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 246
    const v3, 0x7f0e026a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020117

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v2, p2, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 250
    .local v2, "video":Lcom/perm/kate/api/Video;
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 253
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 254
    .local v1, "comment":Lcom/perm/kate/api/Comment;
    iget-object v3, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 257
    iget-object v3, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 260
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v4, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "ago_text":Ljava/lang/String;
    const v3, 0x7f0e026e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method private displayLikePhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 465
    const v2, 0x7f0e026b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0702b3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 468
    const v2, 0x7f0e026a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020117

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 472
    .local v1, "photo":Lcom/perm/kate/api/Photo;
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 473
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 476
    iget-object v2, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 479
    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v3, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private displayLikePost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 533
    const v5, 0x7f0e026b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0702b4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 536
    const v5, 0x7f0e026a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020117

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    iget-object v3, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v3, Lcom/perm/kate/api/WallMessage;

    .line 542
    .local v3, "post":Lcom/perm/kate/api/WallMessage;
    invoke-static {v3}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 544
    iget-object v5, v3, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    .line 545
    .local v1, "attached_photo":Lcom/perm/kate/api/Photo;
    iget-object v5, v3, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/perm/kate/NotificationsAdapter;->getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;

    move-result-object v2

    .line 546
    .local v2, "attached_video":Lcom/perm/kate/api/Video;
    if-eqz v1, :cond_1

    .line 547
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 554
    :goto_0
    iget-object v4, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 555
    .local v4, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    iget-object v4, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 557
    :cond_0
    invoke-direct {p0, v4}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-direct {p0, p1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 561
    iget-object v5, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v5}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 564
    iget-object v5, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v6, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "ago_text":Ljava/lang/String;
    const v5, 0x7f0e026e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    return-void

    .line 548
    .end local v0    # "ago_text":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 549
    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto :goto_0

    .line 552
    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    goto :goto_0
.end method

.method private displayLikeVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 731
    const v2, 0x7f0e026b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0702b8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 734
    const v2, 0x7f0e026a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020117

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    iget-object v1, p2, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Video;

    .line 738
    .local v1, "video":Lcom/perm/kate/api/Video;
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 741
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 744
    iget-object v2, p2, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayUsers(Landroid/view/View;Ljava/lang/Object;)V

    .line 747
    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v3, p2, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    return-void
.end method

.method private displayMarketItem(Landroid/view/View;Lcom/perm/kate/api/MarketItem;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "video"    # Lcom/perm/kate/api/MarketItem;

    .prologue
    const/4 v6, 0x0

    .line 611
    const v0, 0x7f0e0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 612
    .local v2, "photoImageView":Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 613
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/MarketItem;->thumb_photo:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x82

    const v5, 0x7f020144

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 618
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->marketClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private displayMention(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 1193
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0702d3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1196
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v13, Lcom/perm/kate/api/WallMessage;

    .line 1197
    .local v13, "post":Lcom/perm/kate/api/WallMessage;
    iget-object v2, v13, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v10

    .line 1198
    .local v10, "attached_photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 1199
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1202
    iget-wide v2, v13, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 1203
    iget-wide v2, v13, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v15

    .line 1205
    .local v15, "user":Lcom/perm/kate/api/User;
    if-eqz v15, :cond_0

    .line 1206
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v15, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1208
    .local v4, "userImageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v15, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 1209
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 1208
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    iget-wide v2, v15, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1229
    .end local v4    # "userImageView":Landroid/widget/ImageView;
    .end local v15    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 1230
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1234
    .local v11, "commentTextView":Landroid/widget/TextView;
    iget-object v2, v13, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1235
    .local v14, "text":Ljava/lang/String;
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1237
    return-void

    .line 1215
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v11    # "commentTextView":Landroid/widget/TextView;
    .end local v14    # "text":Ljava/lang/String;
    :cond_1
    iget-wide v2, v13, Lcom/perm/kate/api/WallMessage;->from_id:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v12

    .line 1217
    .local v12, "group":Lcom/perm/kate/api/Group;
    if-eqz v12, :cond_0

    .line 1218
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1220
    .restart local v4    # "userImageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v12, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 1221
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 1220
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1223
    iget-wide v2, v12, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1224
    iget-object v2, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private displayMentionCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 412
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v5, "\u0423\u043f\u043e\u043c\u044f\u043d\u0443\u043b(\u0430) \u0432\u0430\u0441 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Photo;

    .line 416
    .local v14, "parent_photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v10, Lcom/perm/kate/api/Comment;

    .line 423
    .local v10, "comment":Lcom/perm/kate/api/Comment;
    if-eqz v10, :cond_1

    .line 424
    const-string v15, ""

    .local v15, "text":Ljava/lang/String;
    const-string v3, ""

    .line 425
    .local v3, "photo":Ljava/lang/String;
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 426
    .local v4, "userImageView":Landroid/widget/ImageView;
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_3

    .line 427
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v16

    .line 428
    .local v16, "user":Lcom/perm/kate/api/User;
    if-eqz v16, :cond_0

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 430
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 432
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 443
    .end local v16    # "user":Lcom/perm/kate/api/User;
    :goto_0
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 445
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 444
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 446
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 450
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "userImageView":Landroid/widget/ImageView;
    .end local v15    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 451
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    if-eqz v10, :cond_2

    .line 455
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 456
    .local v11, "commentTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v2, v10, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v12}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .end local v11    # "commentTextView":Landroid/widget/TextView;
    .end local v12    # "comment_text":Ljava/lang/String;
    :cond_2
    return-void

    .line 435
    .end local v9    # "ago_text":Ljava/lang/String;
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "userImageView":Landroid/widget/ImageView;
    .restart local v15    # "text":Ljava/lang/String;
    :cond_3
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v13

    .line 436
    .local v13, "group":Lcom/perm/kate/api/Group;
    if-eqz v13, :cond_4

    .line 437
    iget-object v15, v13, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 438
    iget-object v3, v13, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 440
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-wide v6, v13, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayMentionCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 1038
    const v4, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v7, "\u0423\u043f\u043e\u043c\u044f\u043d\u0443\u043b(\u0430) \u0432\u0430\u0441 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/perm/kate/api/Video;

    .line 1042
    .local v18, "video":Lcom/perm/kate/api/Video;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 1045
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v12, Lcom/perm/kate/api/Comment;

    .line 1049
    .local v12, "comment":Lcom/perm/kate/api/Comment;
    if-eqz v12, :cond_1

    .line 1050
    const-string v16, ""

    .local v16, "text":Ljava/lang/String;
    const-string v5, ""

    .line 1051
    .local v5, "photo":Ljava/lang/String;
    const v4, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1052
    .local v6, "userImageView":Landroid/widget/ImageView;
    iget-wide v8, v12, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v20, 0x0

    cmp-long v4, v8, v20

    if-lez v4, :cond_2

    .line 1053
    iget-wide v8, v12, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v17

    .line 1054
    .local v17, "user":Lcom/perm/kate/api/User;
    if-eqz v17, :cond_0

    .line 1055
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1056
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1058
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1069
    .end local v17    # "user":Lcom/perm/kate/api/User;
    :goto_0
    const v4, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 1071
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    .line 1070
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1072
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1076
    .end local v5    # "photo":Ljava/lang/String;
    .end local v6    # "userImageView":Landroid/widget/ImageView;
    .end local v16    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 1077
    .local v11, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    const v4, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1081
    .local v13, "commentTextView":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1083
    iget-object v4, v12, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v7, v12, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1084
    .local v14, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v14}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    return-void

    .line 1061
    .end local v11    # "ago_text":Ljava/lang/String;
    .end local v13    # "commentTextView":Landroid/widget/TextView;
    .end local v14    # "comment_text":Ljava/lang/String;
    .restart local v5    # "photo":Ljava/lang/String;
    .restart local v6    # "userImageView":Landroid/widget/ImageView;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_2
    iget-wide v8, v12, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v15

    .line 1062
    .local v15, "group":Lcom/perm/kate/api/Group;
    if-eqz v15, :cond_3

    .line 1063
    iget-object v0, v15, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1064
    iget-object v5, v15, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 1066
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    iget-wide v8, v15, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayMentionInComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 864
    const v4, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v7, "\u0423\u043f\u043e\u043c\u044f\u043d\u0443\u043b(\u0430) \u0432\u0430\u0441 \u0432 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/perm/kate/api/WallMessage;

    .line 870
    .local v18, "post":Lcom/perm/kate/api/WallMessage;
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 872
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v12

    .line 873
    .local v12, "attached_photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 874
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 875
    .local v19, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Comment;

    .line 879
    .local v14, "comment":Lcom/perm/kate/api/Comment;
    const-string v13, ""

    .local v13, "author_name":Ljava/lang/String;
    const-string v5, ""

    .line 880
    .local v5, "photo":Ljava/lang/String;
    const v4, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 881
    .local v6, "userImageView":Landroid/widget/ImageView;
    iget-wide v8, v14, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-lez v4, :cond_1

    .line 882
    iget-wide v8, v14, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v20

    .line 883
    .local v20, "user":Lcom/perm/kate/api/User;
    if-eqz v20, :cond_0

    .line 884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 885
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 898
    .end local v20    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    const v4, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 900
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    .line 899
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 901
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 905
    .local v11, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    const v4, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 909
    .local v15, "commentTextView":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 911
    iget-object v4, v14, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v7, v14, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 912
    .local v16, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v16 .. v16}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    return-void

    .line 890
    .end local v11    # "ago_text":Ljava/lang/String;
    .end local v15    # "commentTextView":Landroid/widget/TextView;
    .end local v16    # "comment_text":Ljava/lang/String;
    :cond_1
    iget-wide v8, v14, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v17

    .line 891
    .local v17, "group":Lcom/perm/kate/api/Group;
    if-eqz v17, :cond_0

    .line 892
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 893
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 895
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayOriginalText(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 576
    const v1, 0x7f0e026c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 577
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, p2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    const/4 v6, 0x0

    .line 585
    const v0, 0x7f0e0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 586
    .local v2, "photoImageView":Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 587
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x82

    const v5, 0x7f020144

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 592
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private displayReplyComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 313
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0703b3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 316
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v13, Lcom/perm/kate/api/Comment;

    .line 317
    .local v13, "parent_comment":Lcom/perm/kate/api/Comment;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 318
    iget-object v2, v13, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Comment;

    .line 322
    .local v14, "reply_comment":Lcom/perm/kate/api/Comment;
    const-string v15, ""

    .local v15, "text":Ljava/lang/String;
    const-string v3, ""

    .line 323
    .local v3, "photo":Ljava/lang/String;
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 324
    .local v4, "userImageView":Landroid/widget/ImageView;
    iget-wide v6, v14, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_1

    .line 325
    iget-wide v6, v14, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v16

    .line 326
    .local v16, "user":Lcom/perm/kate/api/User;
    if-eqz v16, :cond_0

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 328
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 341
    .end local v16    # "user":Lcom/perm/kate/api/User;
    :goto_0
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 343
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 342
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 344
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 352
    .local v10, "commentTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v2, v14, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v14, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 355
    .local v11, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v11}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void

    .line 333
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v10    # "commentTextView":Landroid/widget/TextView;
    .end local v11    # "comment_text":Ljava/lang/String;
    :cond_1
    iget-wide v6, v14, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v12

    .line 334
    .local v12, "group":Lcom/perm/kate/api/Group;
    if-eqz v12, :cond_2

    .line 335
    iget-object v15, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 336
    iget-object v3, v12, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-wide v6, v12, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayReplyCommentMarket(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 1142
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0703b3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1145
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayMarketItem(Landroid/view/View;Lcom/perm/kate/api/MarketItem;)V

    .line 1148
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Comment;

    .line 1149
    .local v14, "parent_comment":Lcom/perm/kate/api/Comment;
    iget-object v2, v14, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v10, Lcom/perm/kate/api/Comment;

    .line 1153
    .local v10, "comment":Lcom/perm/kate/api/Comment;
    if-eqz v10, :cond_1

    .line 1154
    const-string v15, ""

    .local v15, "text":Ljava/lang/String;
    const-string v3, ""

    .line 1155
    .local v3, "photo":Ljava/lang/String;
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1156
    .local v4, "userImageView":Landroid/widget/ImageView;
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_2

    .line 1157
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v16

    .line 1158
    .local v16, "user":Lcom/perm/kate/api/User;
    if-eqz v16, :cond_0

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1160
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1173
    .end local v16    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 1175
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 1174
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1176
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1180
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "userImageView":Landroid/widget/ImageView;
    .end local v15    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 1181
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1185
    .local v11, "commentTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1187
    iget-object v2, v10, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1188
    .local v12, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v12}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    return-void

    .line 1165
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v11    # "commentTextView":Landroid/widget/TextView;
    .end local v12    # "comment_text":Ljava/lang/String;
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "userImageView":Landroid/widget/ImageView;
    .restart local v15    # "text":Ljava/lang/String;
    :cond_2
    iget-wide v6, v10, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v13

    .line 1166
    .local v13, "group":Lcom/perm/kate/api/Group;
    if-eqz v13, :cond_0

    .line 1167
    iget-object v15, v13, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 1168
    iget-object v3, v13, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    iget-wide v6, v13, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayReplyCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 360
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0703b4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 363
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/Comment;

    .line 364
    .local v14, "parent_comment":Lcom/perm/kate/api/Comment;
    if-nez v14, :cond_3

    const-string v13, ""

    .line 365
    .local v13, "message":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 366
    invoke-static {v13}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v15, Lcom/perm/kate/api/Comment;

    .line 370
    .local v15, "reply_comment":Lcom/perm/kate/api/Comment;
    if-eqz v15, :cond_1

    .line 371
    const-string v16, ""

    .local v16, "text":Ljava/lang/String;
    const-string v3, ""

    .line 372
    .local v3, "photo":Ljava/lang/String;
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 373
    .local v4, "userImageView":Landroid/widget/ImageView;
    iget-wide v6, v15, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_4

    .line 374
    iget-wide v6, v15, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v17

    .line 375
    .local v17, "user":Lcom/perm/kate/api/User;
    if-eqz v17, :cond_0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 377
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 390
    .end local v17    # "user":Lcom/perm/kate/api/User;
    :goto_1
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 392
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 391
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 393
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 397
    .end local v3    # "photo":Ljava/lang/String;
    .end local v4    # "userImageView":Landroid/widget/ImageView;
    .end local v16    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    if-eqz v15, :cond_2

    .line 402
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 403
    .local v10, "commentTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v2, v15, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v15, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 406
    .local v11, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v11}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .end local v10    # "commentTextView":Landroid/widget/TextView;
    .end local v11    # "comment_text":Ljava/lang/String;
    :cond_2
    return-void

    .line 364
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v13    # "message":Ljava/lang/String;
    .end local v15    # "reply_comment":Lcom/perm/kate/api/Comment;
    :cond_3
    iget-object v13, v14, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 382
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v4    # "userImageView":Landroid/widget/ImageView;
    .restart local v13    # "message":Ljava/lang/String;
    .restart local v15    # "reply_comment":Lcom/perm/kate/api/Comment;
    .restart local v16    # "text":Ljava/lang/String;
    :cond_4
    iget-wide v6, v15, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v12

    .line 383
    .local v12, "group":Lcom/perm/kate/api/Group;
    if-eqz v12, :cond_5

    .line 384
    iget-object v0, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 385
    iget-object v3, v12, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-wide v6, v12, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private displayReplyCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 1089
    const v4, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f0703b5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1092
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    move-object/from16 v19, v0

    .line 1093
    .local v19, "video":Lcom/perm/kate/api/Video;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 1096
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/perm/kate/api/Comment;

    .line 1097
    .local v16, "parent_comment":Lcom/perm/kate/api/Comment;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v12, Lcom/perm/kate/api/Comment;

    .line 1101
    .local v12, "comment":Lcom/perm/kate/api/Comment;
    if-eqz v12, :cond_1

    .line 1102
    const-string v17, ""

    .local v17, "text":Ljava/lang/String;
    const-string v5, ""

    .line 1103
    .local v5, "photo":Ljava/lang/String;
    const v4, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1104
    .local v6, "userImageView":Landroid/widget/ImageView;
    iget-wide v8, v12, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v20, 0x0

    cmp-long v4, v8, v20

    if-lez v4, :cond_2

    .line 1105
    iget-wide v8, v12, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v18

    .line 1106
    .local v18, "user":Lcom/perm/kate/api/User;
    if-eqz v18, :cond_0

    .line 1107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1108
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 1109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1121
    .end local v18    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    const v4, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 1123
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    .line 1122
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1124
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1128
    .end local v5    # "photo":Ljava/lang/String;
    .end local v6    # "userImageView":Landroid/widget/ImageView;
    .end local v17    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 1129
    .local v11, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    const v4, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1133
    .local v13, "commentTextView":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    iget-object v4, v12, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v7, v12, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1136
    .local v14, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v14}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    return-void

    .line 1113
    .end local v11    # "ago_text":Ljava/lang/String;
    .end local v13    # "commentTextView":Landroid/widget/TextView;
    .end local v14    # "comment_text":Ljava/lang/String;
    .restart local v5    # "photo":Ljava/lang/String;
    .restart local v6    # "userImageView":Landroid/widget/ImageView;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_2
    iget-wide v8, v12, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v15

    .line 1114
    .local v15, "group":Lcom/perm/kate/api/Group;
    if-eqz v15, :cond_0

    .line 1115
    iget-object v0, v15, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1116
    iget-object v5, v15, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    iget-wide v8, v15, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayReplyTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 266
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0703b6

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 269
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v15, Lcom/perm/kate/api/GroupTopic;

    .line 270
    .local v15, "topic":Lcom/perm/kate/api/GroupTopic;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 271
    iget-object v2, v15, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v13, Lcom/perm/kate/api/Comment;

    .line 275
    .local v13, "reply_comment":Lcom/perm/kate/api/Comment;
    const-string v14, ""

    .local v14, "text":Ljava/lang/String;
    const-string v3, ""

    .line 276
    .local v3, "photo":Ljava/lang/String;
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 277
    .local v4, "userImageView":Landroid/widget/ImageView;
    iget-wide v6, v13, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-lez v2, :cond_1

    .line 278
    iget-wide v6, v13, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v16

    .line 279
    .local v16, "user":Lcom/perm/kate/api/User;
    if-eqz v16, :cond_0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 281
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 283
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 294
    .end local v16    # "user":Lcom/perm/kate/api/User;
    :goto_0
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 296
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 295
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 297
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 301
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 305
    .local v10, "commentTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v2, v13, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v13, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/perm/kate/NotificationsAdapter;->attachmentsToText(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 308
    .local v11, "comment_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v11}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void

    .line 286
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v10    # "commentTextView":Landroid/widget/TextView;
    .end local v11    # "comment_text":Ljava/lang/String;
    :cond_1
    iget-wide v6, v13, Lcom/perm/kate/api/Comment;->from_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v12

    .line 287
    .local v12, "group":Lcom/perm/kate/api/Group;
    if-eqz v12, :cond_2

    .line 288
    iget-object v14, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 289
    iget-object v3, v12, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 291
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-wide v6, v12, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private displayUsers(Landroid/view/View;Ljava/lang/Object;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "users1"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 641
    move-object v12, p2

    check-cast v12, Ljava/util/ArrayList;

    .line 642
    .local v12, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const v0, 0x7f0e026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 644
    .local v9, "user_container":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 645
    if-eqz v12, :cond_0

    .line 646
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 647
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 648
    .local v10, "user_id":Ljava/lang/Long;
    invoke-direct {p0, v10}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 649
    .local v8, "user":Lcom/perm/kate/api/User;
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 650
    .local v11, "user_view":Landroid/view/ViewGroup;
    const v0, 0x7f0e0270

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v8, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v8, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    const v0, 0x7f0e0347

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 652
    .local v2, "userImageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v8, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/16 v4, 0x5a

    .line 653
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    move v6, v3

    .line 652
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 654
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-wide v0, v8, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 656
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

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 646
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 659
    .end local v2    # "userImageView":Landroid/widget/ImageView;
    .end local v7    # "i":I
    .end local v8    # "user":Lcom/perm/kate/api/User;
    .end local v10    # "user_id":Ljava/lang/Long;
    .end local v11    # "user_view":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "video"    # Lcom/perm/kate/api/Video;

    .prologue
    const/4 v6, 0x0

    .line 598
    const v0, 0x7f0e0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 599
    .local v2, "photoImageView":Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 600
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x82

    const v5, 0x7f020144

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 605
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->videoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private displayWall(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 916
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v13, Lcom/perm/kate/api/WallMessage;

    .line 919
    .local v13, "post":Lcom/perm/kate/api/WallMessage;
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070026

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 922
    iget-object v2, v13, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v10

    .line 923
    .local v10, "attached_photo":Lcom/perm/kate/api/Photo;
    iget-object v2, v13, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;

    move-result-object v11

    .line 924
    .local v11, "attached_video":Lcom/perm/kate/api/Video;
    if-eqz v10, :cond_1

    .line 925
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 931
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 935
    iget-wide v2, v13, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;

    move-result-object v15

    .line 937
    .local v15, "user":Lcom/perm/kate/api/User;
    if-eqz v15, :cond_0

    .line 938
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v15, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 940
    .local v4, "userImageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v15, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 941
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 940
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-wide v2, v15, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 948
    .end local v4    # "userImageView":Landroid/widget/ImageView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 949
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 953
    .local v12, "commentTextView":Landroid/widget/TextView;
    iget-object v2, v13, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 954
    .local v14, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2, v14}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 956
    return-void

    .line 926
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v12    # "commentTextView":Landroid/widget/TextView;
    .end local v14    # "text":Ljava/lang/String;
    .end local v15    # "user":Lcom/perm/kate/api/User;
    :cond_1
    if-eqz v11, :cond_2

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto/16 :goto_0

    .line 930
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    goto/16 :goto_0
.end method

.method private displayWallPublish(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 960
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v14, Lcom/perm/kate/api/WallMessage;

    .line 963
    .local v14, "post":Lcom/perm/kate/api/WallMessage;
    const v2, 0x7f0e026b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 966
    iget-object v2, v14, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;

    move-result-object v10

    .line 967
    .local v10, "attached_photo":Lcom/perm/kate/api/Photo;
    iget-object v2, v14, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;

    move-result-object v11

    .line 968
    .local v11, "attached_video":Lcom/perm/kate/api/Video;
    if-eqz v10, :cond_1

    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    .line 975
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayOriginalText(Landroid/view/View;Ljava/lang/String;)V

    .line 979
    iget-wide v2, v14, Lcom/perm/kate/api/WallMessage;->from_id:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;

    move-result-object v13

    .line 981
    .local v13, "group":Lcom/perm/kate/api/Group;
    if-eqz v13, :cond_0

    .line 982
    const v2, 0x7f0e0270

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v13, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    const v2, 0x7f0e026f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 984
    .local v4, "userImageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v13, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 985
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 984
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->groupClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    iget-wide v2, v13, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 988
    iget-object v2, v13, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 992
    .end local v4    # "userImageView":Landroid/widget/ImageView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/perm/kate/api/Notification;->date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 993
    .local v9, "ago_text":Ljava/lang/String;
    const v2, 0x7f0e026e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    const v2, 0x7f0e0271

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 997
    .local v12, "commentTextView":Landroid/widget/TextView;
    iget-object v2, v14, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/NotificationsAdapter;->cropLongText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 998
    .local v15, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2, v15}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    return-void

    .line 970
    .end local v9    # "ago_text":Ljava/lang/String;
    .end local v12    # "commentTextView":Landroid/widget/TextView;
    .end local v13    # "group":Lcom/perm/kate/api/Group;
    .end local v15    # "text":Ljava/lang/String;
    :cond_1
    if-eqz v11, :cond_2

    .line 971
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/perm/kate/NotificationsAdapter;->displayVideo(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto/16 :goto_0

    .line 974
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotificationsAdapter;->displayPhoto(Landroid/view/View;Lcom/perm/kate/api/Photo;)V

    goto/16 :goto_0
.end method

.method private getAttachedPhoto(Ljava/util/ArrayList;)Lcom/perm/kate/api/Photo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;)",
            "Lcom/perm/kate/api/Photo;"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 626
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 628
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAttachedVideo(Ljava/util/ArrayList;)Lcom/perm/kate/api/Video;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;)",
            "Lcom/perm/kate/api/Video;"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-eqz p1, :cond_1

    .line 633
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 634
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 636
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getGroup(Ljava/lang/Long;)Lcom/perm/kate/api/Group;
    .locals 6
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v1, v1, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 1249
    .local v0, "u":Lcom/perm/kate/api/Group;
    iget-wide v2, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1251
    .end local v0    # "u":Lcom/perm/kate/api/Group;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLayoutByViewType(I)I
    .locals 1
    .param p1, "view_type"    # I

    .prologue
    const v0, 0x7f0300c1

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    return v0

    .line 170
    :pswitch_1
    const v0, 0x7f0300c2

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUser(Ljava/lang/Long;)Lcom/perm/kate/api/User;
    .locals 6
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v1, v1, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 1242
    .local v0, "u":Lcom/perm/kate/api/User;
    iget-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1244
    .end local v0    # "u":Lcom/perm/kate/api/User;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static photoClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1262
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 1263
    .local v1, "photo":Lcom/perm/kate/api/Photo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1267
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.perm.kate.position"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1268
    const-string v3, "com.perm.kate.photos"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1269
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1270
    return-void
.end method


# virtual methods
.method public displayNewData(Lcom/perm/kate/api/Notifications;)V
    .locals 0
    .param p1, "notifications"    # Lcom/perm/kate/api/Notifications;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v2, v2, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Notification;

    .line 63
    .local v0, "notification":Lcom/perm/kate/api/Notification;
    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "copy_photo"

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_video"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_post"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "copy_post"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "copy_video"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_comment"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_comment_photo"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_comment_video"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_comment_topic"

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "follow"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "friend_accepted"

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "comment_photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "comment_video"

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "comment_post"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_comment"

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_comment_photo"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_comment_video"

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_comment_market"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "wall"

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "wall_publish"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "mention"

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "mention_comments"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "mention_comment_photo"

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "mention_comment_video"

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_topic"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    move-object v2, p2

    .line 102
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/perm/kate/NotificationsAdapter;->getItemViewType(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/perm/kate/NotificationsAdapter;->getLayoutByViewType(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 105
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/NotificationsAdapter;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v3, v3, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Notification;

    .line 106
    .local v0, "notification":Lcom/perm/kate/api/Notification;
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikePhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    .line 162
    .end local v0    # "notification":Lcom/perm/kate/api/Notification;
    :cond_1
    :goto_0
    return-object v2

    .line 108
    .restart local v0    # "notification":Lcom/perm/kate/api/Notification;
    :cond_2
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "copy_photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayCopyPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "notification":Lcom/perm/kate/api/Notification;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 110
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "notification":Lcom/perm/kate/api/Notification;
    :cond_3
    :try_start_1
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "copy_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayCopyVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_post"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikePost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 114
    :cond_5
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "copy_post"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayCopyPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 116
    :cond_6
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "follow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 117
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayFollow(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 118
    :cond_7
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "friend_accepted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 119
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayFriendAccepted(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 120
    :cond_8
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "comment_photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 121
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 122
    :cond_9
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "comment_post"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 123
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayCommentPost(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 124
    :cond_a
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "wall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 125
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayWall(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 126
    :cond_b
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "wall_publish"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 127
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayWallPublish(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 128
    :cond_c
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "comment_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 129
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 130
    :cond_d
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "reply_comment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 131
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayReplyComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 132
    :cond_e
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "reply_comment_photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 133
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayReplyCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 134
    :cond_f
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "mention_comment_photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 135
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayMentionCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 136
    :cond_10
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "mention_comment_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 137
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayMentionCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 138
    :cond_11
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "reply_comment_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 139
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayReplyCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 140
    :cond_12
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "reply_comment_market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 141
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayReplyCommentMarket(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 142
    :cond_13
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "reply_topic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 143
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayReplyTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 144
    :cond_14
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 145
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikeComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 146
    :cond_15
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment_photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 147
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikeCommentPhoto(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 148
    :cond_16
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 149
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikeCommentVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 150
    :cond_17
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_comment_topic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 151
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikeCommentTopic(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 152
    :cond_18
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "like_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 153
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayLikeVideo(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 154
    :cond_19
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "mention"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 155
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayMention(Landroid/view/View;Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 156
    :cond_1a
    iget-object v3, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v4, "mention_comments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-direct {p0, v2, v0}, Lcom/perm/kate/NotificationsAdapter;->displayMentionInComment(Landroid/view/View;Lcom/perm/kate/api/Notification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x2

    return v0
.end method
