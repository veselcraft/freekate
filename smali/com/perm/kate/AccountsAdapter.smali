.class public Lcom/perm/kate/AccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsAdapter.java"


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/perm/kate/AccountsAdapter;->activity:Landroid/app/Activity;

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 38
    move-object v11, p2

    .line 39
    .local v11, "view":Landroid/view/View;
    if-nez v11, :cond_0

    .line 40
    iget-object v0, p0, Lcom/perm/kate/AccountsAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 42
    :cond_0
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/account/Account;

    .line 43
    .local v7, "account":Lcom/perm/kate/account/Account;
    # ACCOUNT NAME
    const v0, 0x7f0e0065

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 44
    .local v8, "name":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/perm/kate/account/Account;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # INSTANCE DOMAIN
    const v0, 0x7f0e03aa

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4
    
    check-cast v4, Landroid/widget/TextView;
    .local v4, "instance_domain":Landroid/widget/TextView;

    iget-object v0, v7, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    # AVATAR
    const v0, 0x7f0e0064

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .local v2, "img_user_photo":Landroid/widget/ImageView;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v7, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    .line 48
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 49
    const v0, 0x7f0e0066

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 50
    .local v10, "tv_online":Landroid/widget/TextView;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const v0, 0x7f07001b

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .end local v2    # "img_user_photo":Landroid/widget/ImageView;
    .end local v4    # "account":Lcom/perm/kate/account/Account;
    .end local v7    # "account":Lcom/perm/kate/account/Account;
    .end local v8    # "name":Landroid/widget/TextView;
    .end local v10    # "tv_online":Landroid/widget/TextView;
    :goto_0
    return-object v11

    .line 55
    .restart local v2    # "img_user_photo":Landroid/widget/ImageView;
    .restart local v7    # "account":Lcom/perm/kate/account/Account;
    .restart local v8    # "name":Landroid/widget/TextView;
    .restart local v10    # "tv_online":Landroid/widget/TextView;
    :cond_1
    const-string v0, ""

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v2    # "img_user_photo":Landroid/widget/ImageView;
    .end local v7    # "account":Lcom/perm/kate/account/Account;
    .end local v8    # "name":Landroid/widget/TextView;
    .end local v10    # "tv_online":Landroid/widget/TextView;
    :catch_0
    move-exception v9

    .line 59
    .local v9, "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
