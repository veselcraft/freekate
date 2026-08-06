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

.field private twoOptions:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/PrivacyItemActivity;->twoOptions:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/PrivacyItemActivity;->save:Z

    .line 279
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PrivacyItemActivity$3;-><init>(Lcom/perm/kate/PrivacyItemActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 332
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$6;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->doneClickListener:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$7;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 430
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$8;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->deleteUserClickListener:Landroid/view/View$OnClickListener;

    .line 471
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$9;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener:Landroid/view/View$OnClickListener;

    .line 478
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$10;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener2:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PrivacyItemActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->valueChangeBySpinner(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PrivacyItemActivity;)Lcom/perm/kate/api/PrivacyItem;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/PrivacyItemActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->successInUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PrivacyItemActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->enableUiInUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PrivacyItemActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->disableUi(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/PrivacyItemActivity;->removeUserOrList(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PrivacyItemActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PrivacyItemActivity;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->showFriendsAndLists(I)V

    return-void
.end method

.method private addUserOrList(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "is_user"    # Z
    .param p3, "denied_to"    # Z

    .prologue
    .line 513
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "str_id":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 516
    if-eqz p2, :cond_2

    .line 517
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 519
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    .line 546
    return-void

    .line 523
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 525
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 526
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    :cond_4
    if-eqz p2, :cond_6

    .line 532
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 533
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 534
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 537
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 539
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    :cond_7
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private disableUi(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 315
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists:Landroid/widget/Button;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists2:Landroid/widget/Button;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_done:Landroid/widget/Button;

    if-nez p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_cancel:Landroid/widget/Button;

    if-nez p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    return-void

    :cond_0
    move v0, v2

    .line 314
    goto :goto_0

    :cond_1
    move v0, v2

    .line 315
    goto :goto_1

    :cond_2
    move v0, v2

    .line 316
    goto :goto_2

    :cond_3
    move v0, v2

    .line 317
    goto :goto_3

    :cond_4
    move v1, v2

    .line 318
    goto :goto_4
.end method

.method private enableUiInUiThread()V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$5;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fillFriendsContainer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 347
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 348
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 349
    .local v2, "str_id":Ljava/lang/String;
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 351
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 353
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v0

    .line 354
    .local v0, "id":J
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    invoke-direct {p0, v0, v1, v8}, Lcom/perm/kate/PrivacyItemActivity;->getListView(JZ)Landroid/view/View;

    move-result-object v3

    .line 356
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 357
    iget-object v5, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 358
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 359
    invoke-direct {p0, v0, v1, v8}, Lcom/perm/kate/PrivacyItemActivity;->getUserView(JZ)Landroid/view/View;

    move-result-object v3

    .line 360
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 361
    iget-object v5, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 364
    .end local v0    # "id":J
    .end local v2    # "str_id":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private fillFriendsContainer2()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 367
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 368
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, "str_id":Ljava/lang/String;
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 371
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->getId0(Ljava/lang/String;)J

    move-result-wide v0

    .line 374
    .local v0, "id":J
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 375
    invoke-direct {p0, v0, v1, v8}, Lcom/perm/kate/PrivacyItemActivity;->getListView(JZ)Landroid/view/View;

    move-result-object v3

    .line 376
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 377
    iget-object v5, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 378
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 379
    invoke-direct {p0, v0, v1, v8}, Lcom/perm/kate/PrivacyItemActivity;->getUserView(JZ)Landroid/view/View;

    move-result-object v3

    .line 380
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 381
    iget-object v5, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 384
    .end local v0    # "id":J
    .end local v2    # "str_id":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private fillSpinnerByValue()V
    .locals 6

    .prologue
    .line 88
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/perm/kate/PrivacyItemActivity;->twoOptions:Z

    .line 89
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 90
    .local v2, "spinnerArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "type":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/perm/kate/PrivacyItemActivity;->getStringByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v1    # "i":I
    .end local v2    # "spinnerArray":[Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 94
    .restart local v1    # "i":I
    .restart local v2    # "spinnerArray":[Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 95
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 96
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    return-void
.end method

.method private getIndexByPrivacyValue()I
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v4, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v4, v4, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .local v0, "type":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/perm/kate/PrivacyItemActivity;->twoOptions:Z

    if-eqz v4, :cond_2

    .line 122
    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    const-string v4, "all"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    const-string v1, "friends"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    const-string v1, "friends_of_friends"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    const/4 v1, 0x2

    goto :goto_0

    .line 133
    :cond_4
    const-string v1, "only_me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 134
    goto :goto_0

    .line 135
    :cond_5
    const-string v1, "nobody"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 136
    goto :goto_0

    .line 138
    :cond_6
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private getListView(JZ)Landroid/view/View;
    .locals 11
    .param p1, "list_id"    # J
    .param p3, "denied_to"    # Z

    .prologue
    const/4 v6, 0x0

    .line 387
    long-to-int v7, p1

    invoke-static {v7}, Lcom/perm/utils/FriendsListsHelper;->getFriendsListName(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "list_name":Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03010e

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 389
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v5, v6

    .line 401
    .end local v5    # "view":Landroid/view/View;
    :goto_0
    return-object v5

    .line 391
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    const v6, 0x7f0e0065

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 392
    .local v3, "name":Landroid/widget/TextView;
    const v6, 0x7f0e0064

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 393
    .local v0, "img_user_photo":Landroid/widget/ImageView;
    const v6, 0x7f0e00c7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 394
    .local v1, "iv_delete_member":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const v6, 0x7f020129

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v6, p0, Lcom/perm/kate/PrivacyItemActivity;->deleteUserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "list_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "tag":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":denied_to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 400
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getStringByType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const v0, 0x7f07038c

    .line 116
    .local v0, "res":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    .end local v0    # "res":I
    :cond_0
    const-string v1, "friends"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const v0, 0x7f07038d

    .restart local v0    # "res":I
    goto :goto_0

    .line 105
    .end local v0    # "res":I
    :cond_1
    const-string v1, "friends_of_friends"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const v0, 0x7f07038e

    .restart local v0    # "res":I
    goto :goto_0

    .line 107
    .end local v0    # "res":I
    :cond_2
    const-string v1, "friends_of_friends_only"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    const v0, 0x7f07038e

    .restart local v0    # "res":I
    goto :goto_0

    .line 110
    .end local v0    # "res":I
    :cond_3
    const-string v1, "only_me"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    const v0, 0x7f070390

    .restart local v0    # "res":I
    goto :goto_0

    .line 112
    .end local v0    # "res":I
    :cond_4
    const-string v1, "nobody"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    const v0, 0x7f07038f

    .restart local v0    # "res":I
    goto :goto_0

    .line 115
    .end local v0    # "res":I
    :cond_5
    const v0, 0x7f070392

    .restart local v0    # "res":I
    goto :goto_0
.end method

.method private getUserLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 425
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v0, "ll":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 427
    return-object v0
.end method

.method private getUserView(JZ)Landroid/view/View;
    .locals 13
    .param p1, "user_id"    # J
    .param p3, "denied_to"    # Z

    .prologue
    .line 405
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v11

    .line 406
    .local v11, "user":Lcom/perm/kate/api/User;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 407
    .local v12, "view":Landroid/view/View;
    if-eqz v11, :cond_0

    if-nez v12, :cond_1

    .line 408
    :cond_0
    const/4 v12, 0x0

    .line 421
    .end local v12    # "view":Landroid/view/View;
    :goto_0
    return-object v12

    .line 409
    .restart local v12    # "view":Landroid/view/View;
    :cond_1
    const v0, 0x7f0e0065

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 410
    .local v9, "name":Landroid/widget/TextView;
    const v0, 0x7f0e0064

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 411
    .local v2, "img_user_photo":Landroid/widget/ImageView;
    const v0, 0x7f0e00c7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 412
    .local v8, "iv_delete_member":Landroid/widget/ImageView;
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

    move-result-object v7

    .line 413
    .local v7, "display_name":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v11, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    .line 415
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    .line 414
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 416
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->deleteUserClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 418
    .local v10, "tag":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":denied_to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 420
    :cond_2
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getValueByPosition(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "new_value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/perm/kate/PrivacyItemActivity;->twoOptions:Z

    if-eqz v2, :cond_1

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 151
    const-string v2, "friends_of_friends"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "str_id":Ljava/lang/String;
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v1    # "str_id":Ljava/lang/String;
    :pswitch_0
    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 157
    :pswitch_1
    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v2, "friends"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :pswitch_3
    const-string v2, "friends_of_friends"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->section:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->isContacts(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    const-string v2, "nobody"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_2
    const-string v2, "only_me"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_3
    return-object v0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 155
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getValueForSave()Ljava/lang/String;
    .locals 6

    .prologue
    .line 206
    const-string v2, ""

    .line 207
    .local v2, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 208
    .local v1, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v3, v3, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v3, v3, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "type":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 210
    .restart local v1    # "type":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->showAllowedFriends(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 211
    move-object v2, v1

    .line 223
    :cond_1
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->showDeniedFriends(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/perm/kate/PrivacyItemActivity;->twoOptions:Z

    if-nez v3, :cond_7

    .line 224
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v3, v3, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, "str_id":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 227
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    goto :goto_0

    .line 213
    .end local v0    # "str_id":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v3, v3, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    .restart local v0    # "str_id":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 216
    invoke-static {v0}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    goto :goto_1

    .line 234
    .end local v0    # "str_id":Ljava/lang/String;
    :cond_7
    return-object v2
.end method

.method private removeUserOrList(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "is_user"    # Z
    .param p3, "denied_to"    # Z

    .prologue
    .line 447
    if-eqz p3, :cond_2

    .line 448
    if-eqz p2, :cond_1

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "str_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 468
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    .line 469
    return-void

    .line 453
    .end local v0    # "str_id":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0    # "str_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    .end local v0    # "str_id":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    .line 459
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .restart local v0    # "str_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v0    # "str_id":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .restart local v0    # "str_id":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showFriendsAndLists(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 486
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/FriendsListsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/perm/kate/PrivacyItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 488
    return-void
.end method

.method private successInUiThread()V
    .locals 1

    .prologue
    .line 301
    const v0, 0x7f07049d

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyItemActivity;->displayToast(I)V

    .line 302
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v0, Lcom/perm/kate/PrivacyItemActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PrivacyItemActivity$4;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PrivacyItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateUiPrivacyValue()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v3, v3, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v3, v3, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 191
    .restart local v2    # "type":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->showAllowedFriends(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "show_allowed_friends":Z
    iget-object v6, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg:Landroid/view/View;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v6, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->fillFriendsContainer()V

    .line 197
    :cond_1
    invoke-static {v2}, Lcom/perm/utils/PrivacyHelper;->showDeniedFriends(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/perm/kate/PrivacyItemActivity;->twoOptions:Z

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 198
    .local v1, "show_denied_friends":Z
    :goto_2
    iget-object v6, p0, Lcom/perm/kate/PrivacyItemActivity;->tv_denied_to:Landroid/view/View;

    if-eqz v1, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v6, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg2:Landroid/view/View;

    if-eqz v1, :cond_7

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    if-eqz v1, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->fillFriendsContainer2()V

    .line 203
    :cond_2
    return-void

    .end local v1    # "show_denied_friends":Z
    :cond_3
    move v3, v5

    .line 192
    goto :goto_0

    :cond_4
    move v3, v5

    .line 193
    goto :goto_1

    :cond_5
    move v1, v4

    .line 197
    goto :goto_2

    .restart local v1    # "show_denied_friends":Z
    :cond_6
    move v3, v5

    .line 198
    goto :goto_3

    :cond_7
    move v3, v5

    .line 199
    goto :goto_4

    :cond_8
    move v4, v5

    .line 200
    goto :goto_5
.end method

.method private valueChangeBySpinner(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    invoke-direct {p0, p1}, Lcom/perm/kate/PrivacyItemActivity;->getValueByPosition(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    .line 85
    return-void
.end method


# virtual methods
.method public checkForSome()Z
    .locals 4

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "hasAllowed":Z
    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v2, v2, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, "str_id":Ljava/lang/String;
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    const/4 v2, 0x1

    .line 247
    .end local v1    # "str_id":Ljava/lang/String;
    :goto_0
    return v2

    .line 242
    .restart local v1    # "str_id":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/perm/utils/PrivacyHelper;->isExcept(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    const/4 v0, 0x1

    .end local v1    # "str_id":Ljava/lang/String;
    :cond_2
    move v2, v0

    .line 247
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 495
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 496
    if-ne p1, v3, :cond_0

    if-ne p2, v10, :cond_0

    .line 497
    const-string v7, "com.perm.kate.member_id"

    invoke-virtual {p3, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 498
    .local v4, "user_id":J
    const-string v7, "com.perm.kate.list_id"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 499
    .local v2, "list_id":I
    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    move v1, v3

    .line 500
    .local v1, "is_user":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "id":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0, v1, v6}, Lcom/perm/kate/PrivacyItemActivity;->addUserOrList(Ljava/lang/String;ZZ)V

    .line 503
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "is_user":Z
    .end local v2    # "list_id":I
    .end local v4    # "user_id":J
    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    if-ne p2, v10, :cond_1

    .line 504
    const-string v7, "com.perm.kate.member_id"

    invoke-virtual {p3, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 505
    .restart local v4    # "user_id":J
    const-string v7, "com.perm.kate.list_id"

    invoke-virtual {p3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 506
    .restart local v2    # "list_id":I
    cmp-long v7, v4, v8

    if-lez v7, :cond_4

    move v1, v3

    .line 507
    .restart local v1    # "is_user":Z
    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 508
    .restart local v0    # "id":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v0, v1, v3}, Lcom/perm/kate/PrivacyItemActivity;->addUserOrList(Ljava/lang/String;ZZ)V

    .line 510
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "is_user":Z
    .end local v2    # "list_id":I
    .end local v4    # "user_id":J
    :cond_1
    return-void

    .restart local v2    # "list_id":I
    .restart local v4    # "user_id":J
    :cond_2
    move v1, v6

    .line 499
    goto :goto_0

    .line 500
    .restart local v1    # "is_user":Z
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v1    # "is_user":Z
    :cond_4
    move v1, v6

    .line 506
    goto :goto_2

    .line 507
    .restart local v1    # "is_user":Z
    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f0300e3

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->setContentView(I)V

    .line 43
    const v1, 0x7f070391

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->setButtonsBg()V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "privacy_item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/PrivacyItem;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "save"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/PrivacyItemActivity;->save:Z

    .line 47
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 51
    :cond_0
    const v1, 0x7f0e00b6

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "tv_title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->privacyItem:Lcom/perm/kate/api/PrivacyItem;

    iget-object v1, v1, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v1, 0x7f0e02c0

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->fillSpinnerByValue()V

    .line 55
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getIndexByPrivacyValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 56
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->sp_privacy_value:Landroid/widget/Spinner;

    new-instance v2, Lcom/perm/kate/PrivacyItemActivity$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/PrivacyItemActivity$1;-><init>(Lcom/perm/kate/PrivacyItemActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    const v1, 0x7f0e0068

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg:Landroid/view/View;

    .line 67
    const v1, 0x7f0e02c3

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->tv_denied_to:Landroid/view/View;

    .line 68
    const v1, 0x7f0e00a3

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->fl_button_bg2:Landroid/view/View;

    .line 69
    const v1, 0x7f0e02c1

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container:Landroid/widget/LinearLayout;

    .line 70
    const v1, 0x7f0e02c4

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->friends_container2:Landroid/widget/LinearLayout;

    .line 71
    const v1, 0x7f0e02c2

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0e02c5

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists2:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_pick_friends_lists2:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->friendsClickListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0e019d

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_done:Landroid/widget/Button;

    .line 76
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_done:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->doneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0e019b

    invoke-virtual {p0, v1}, Lcom/perm/kate/PrivacyItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_cancel:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/perm/kate/PrivacyItemActivity;->btn_cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/PrivacyItemActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->updateUiPrivacyValue()V

    goto/16 :goto_0
.end method

.method public save()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 251
    invoke-direct {p0}, Lcom/perm/kate/PrivacyItemActivity;->getValueForSave()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "str_value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->checkForSome()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :cond_0
    const v2, 0x7f0704ad

    invoke-virtual {p0, v2}, Lcom/perm/kate/PrivacyItemActivity;->displayToast(I)V

    .line 277
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-boolean v2, p0, Lcom/perm/kate/PrivacyItemActivity;->save:Z

    if-nez v2, :cond_2

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "value"

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 261
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/perm/kate/PrivacyItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 262
    invoke-virtual {p0}, Lcom/perm/kate/PrivacyItemActivity;->finish()V

    goto :goto_0

    .line 268
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v3}, Lcom/perm/kate/PrivacyItemActivity;->disableUi(Z)V

    .line 269
    invoke-virtual {p0, v3}, Lcom/perm/kate/PrivacyItemActivity;->showProgressBar(Z)V

    .line 270
    new-instance v2, Lcom/perm/kate/PrivacyItemActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/perm/kate/PrivacyItemActivity$2;-><init>(Lcom/perm/kate/PrivacyItemActivity;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2}, Lcom/perm/kate/PrivacyItemActivity$2;->start()V

    goto :goto_0
.end method
