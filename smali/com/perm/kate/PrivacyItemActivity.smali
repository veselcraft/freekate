.class public Lcom/perm/kate/PrivacyItemActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PrivacyItemActivity.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_done:Landroid/widget/Button;

.field private btn_pick_friends_lists:Landroid/widget/Button;

.field private btn_pick_friends_lists2:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private deleteUserClickListener:Landroid/view/View$OnClickListener;

.field private doneClickListener:Landroid/view/View$OnClickListener;

.field private fl_button_bg:Landroid/view/View;

.field private fl_button_bg2:Landroid/view/View;

.field private friendsClickListener:Landroid/view/View$OnClickListener;

.field private friendsClickListener2:Landroid/view/View$OnClickListener;

.field private friends_container:Landroid/widget/LinearLayout;

.field private friends_container2:Landroid/widget/LinearLayout;

.field private privacyItem:Lcom/perm/kate/api/PrivacyItem;

.field save:Z

.field private sp_privacy_value:Landroid/widget/Spinner;

.field private tv_denied_to:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/perm/kate/PrivacyItemActivity;->save:Z

    .line 243
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PrivacyItemActivity$3;-><init>(Lcom/perm/kate/PrivacyItemActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 291
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$6;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->doneClickListener:Landroid/view/View$OnClickListener;

    .line 298
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$7;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 393
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$8;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->deleteUserClickListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$9;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$10;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener2:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PrivacyItemActivity;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->valueChangeBySpinner(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PrivacyItemActivity;)Lcom/perm/kate/api/PrivacyItem;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/PrivacyItemActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/perm/kate/PrivacyItemActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->successInUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->enableUiInUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PrivacyItemActivity;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->disableUi(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;ZZ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/PrivacyItemActivity;->removeUserOrList(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PrivacyItemActivity;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->showFriendsAndLists(I)V

    return-void
.end method

.method private addUserOrList(Ljava/lang/String;ZZ)V
    .locals 3

    .line 476
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    const-string v2, "-"

    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    .line 480
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 482
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 484
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 486
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 488
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 491
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 495
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 496
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 498
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 502
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 504
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 507
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    return-void
.end method

.method private disableUi(Z)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists2:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_done:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_cancel:Landroid/widget/Button;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private enableUiInUiThread()V
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 283
    :cond_0
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$5;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fillFriendsContainer()V
    .locals 7

    .line 306
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isBinary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 314
    :cond_3
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v2

    .line 315
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 316
    invoke-direct {p0, v2, v3, v4}, Lcom/perm/kate/PrivacyItemActivity;->getListView(JZ)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v1, v2, v5

    if-lez v1, :cond_0

    .line 320
    invoke-direct {p0, v2, v3, v4}, Lcom/perm/kate/PrivacyItemActivity;->getUserView(JZ)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private fillFriendsContainer2()V
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v2

    .line 335
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 336
    invoke-direct {p0, v2, v3, v4}, Lcom/perm/kate/PrivacyItemActivity;->getListView(JZ)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v1, v2, v5

    if-lez v1, :cond_0

    .line 340
    invoke-direct {p0, v2, v3, v4}, Lcom/perm/kate/PrivacyItemActivity;->getUserView(JZ)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private fillSpinnerByValue()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    invoke-direct {p0, v2}, Lcom/perm/kate/PrivacyItemActivity;->getStringByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 95
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private getIndexByPrivacyValue()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-ne v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    const-string v1, "some"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private getListView(JZ)Landroid/view/View;
    .locals 5

    long-to-int v0, p1

    .line 348
    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->getFriendsListName(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c012e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0903e6

    .line 353
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090188

    .line 354
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090194

    .line 355
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 356
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801de

    .line 357
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->deleteUserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":denied_to"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    :cond_1
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v3
.end method

.method private getStringByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "all"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0f03fe

    if-eqz v0, :cond_0

    const v1, 0x7f0f019c

    goto/16 :goto_0

    :cond_0
    const-string v0, "friends"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0f03fd

    goto :goto_0

    :cond_1
    const-string v0, "friends_of_friends"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "hidden_friends_only"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x7f0f01af

    goto :goto_0

    :cond_3
    const-string v0, "friends_and_contacts"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v1, 0x7f0f0230

    goto :goto_0

    :cond_4
    const-string v0, "friends_of_friends_only"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "only_me"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v1, 0x7f0f0400

    goto :goto_0

    :cond_6
    const-string v0, "nobody"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v1, 0x7f0f03ff

    goto :goto_0

    :cond_7
    const-string v0, "true"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v1, 0x7f0f0147

    goto :goto_0

    :cond_8
    const-string v0, "false"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const v1, 0x7f0f0146

    goto :goto_0

    :cond_9
    const v1, 0x7f0f0402

    .line 123
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 388
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 389
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private getUserView(JZ)Landroid/view/View;
    .locals 11

    .line 367
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 369
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c012e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0903e6

    .line 372
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090188

    .line 373
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/ImageView;

    const v3, 0x7f090194

    .line 374
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 378
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    .line 377
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 379
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->deleteUserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":denied_to"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v3
.end method

.method private getValueByPosition(I)Ljava/util/ArrayList;
    .locals 3

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "some"

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p1, p1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getValueForSave()Ljava/lang/String;
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->showAllowedFriends(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ","

    if-nez v1, :cond_1

    move-object v3, v0

    goto :goto_2

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, ""

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 178
    invoke-static {v4}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 180
    :cond_2
    invoke-static {v4}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 187
    :cond_5
    :goto_2
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->showDeniedFriends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v1, "friends_requests"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 191
    :cond_6
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 193
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    return-object v3
.end method

.method private removeUserOrList(Ljava/lang/String;ZZ)V
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 413
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 414
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-list"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 418
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 422
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 423
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 424
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 426
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "list"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 428
    iget-object p2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object p2, p2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    return-void
.end method

.method private showFriendsAndLists(I)V
    .locals 2

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/FriendsListsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private successInUiThread()V
    .locals 1

    const v0, 0x7f0f0527

    .line 260
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$4;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUiPrivacyValue()V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->showAllowedFriends(Ljava/lang/String;)Z

    move-result v2

    .line 156
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v2, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->fillFriendsContainer()V

    .line 161
    :cond_3
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->showDeniedFriends(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v2, "friends_requests"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 162
    :goto_3
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->tv_denied_to:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg2:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_8

    .line 166
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->fillFriendsContainer2()V

    :cond_8
    return-void
.end method

.method private valueChangeBySpinner(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->getValueByPosition(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    return-void
.end method


# virtual methods
.method public checkForSome()Z
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 206
    :cond_0
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 458
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "com.perm.kate.list_id"

    const-string v1, "com.perm.kate.member_id"

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v5, :cond_2

    if-ne p2, v2, :cond_2

    .line 460
    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 461
    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    cmp-long v10, v7, v3

    if-lez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 463
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 464
    :goto_1
    invoke-direct {p0, v7, v10, v6}, Lcom/perm/kate/PrivacyItemActivity;->addUserOrList(Ljava/lang/String;ZZ)V

    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_5

    if-ne p2, v2, :cond_5

    .line 467
    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 468
    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    cmp-long v0, p1, v3

    if-lez v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eqz v6, :cond_4

    .line 470
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 471
    :goto_2
    invoke-direct {p0, p1, v6, v5}, Lcom/perm/kate/PrivacyItemActivity;->addUserOrList(Ljava/lang/String;ZZ)V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00fe

    .line 42
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0401

    .line 43
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "privacy_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/PrivacyItem;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "save"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/PrivacyItemActivity;->save:Z

    .line 47
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    if-nez p1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0903de

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v0, v0, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902f4

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->fillSpinnerByValue()V

    .line 55
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getIndexByPrivacyValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 56
    iget-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$1;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f090138

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg:Landroid/view/View;

    const p1, 0x7f090363

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->tv_denied_to:Landroid/view/View;

    const p1, 0x7f090139

    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg2:Landroid/view/View;

    const p1, 0x7f090151

    .line 69
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    const p1, 0x7f090152

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    const p1, 0x7f090087

    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090088

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists2:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090078

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_done:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->doneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 77
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_cancel:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    return-void
.end method

.method public save()V
    .locals 4

    .line 215
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getValueForSave()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->checkForSome()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    iget-boolean v1, p0, Lcom/perm/kate/PrivacyItemActivity;->save:Z

    if-nez v1, :cond_1

    .line 221
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "value"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 225
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 232
    invoke-direct {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->disableUi(Z)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 234
    new-instance v1, Lcom/perm/kate/PrivacyItemActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/PrivacyItemActivity$2;-><init>(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    const v0, 0x7f0f0534

    .line 217
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
