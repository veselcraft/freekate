.class public Lcom/perm/kate/UpdateActivity;
.super Lcom/perm/kate/BaseActivity;
.source "UpdateActivity.java"


# instance fields
.field private downloadListener:Landroid/view/View$OnClickListener;

.field private listener:Landroid/view/View$OnClickListener;

.field market_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/perm/kate/UpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/UpdateActivity$1;-><init>(Lcom/perm/kate/UpdateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateActivity;->listener:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/perm/kate/UpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/UpdateActivity$2;-><init>(Lcom/perm/kate/UpdateActivity;)V

    iput-object v0, p0, Lcom/perm/kate/UpdateActivity;->downloadListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/UpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/UpdateActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/UpdateActivity;->startMarket()V

    return-void
.end method

.method private startMarket()V
    .locals 5

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/UpdateActivity;->market_url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/UpdateActivity;->market_url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/UpdateActivity;->market_url:Ljava/lang/String;

    .line 74
    :cond_1
    const-string v2, "Kate.UpdateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/UpdateActivity;->market_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/perm/kate/UpdateActivity;->market_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Lcom/perm/kate/UpdateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700a5

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    .line 27
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v6, 0x7f030109

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->setContentView(I)V

    .line 30
    const v6, 0x7f0e010a

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, "b":Landroid/widget/Button;
    iget-object v6, p0, Lcom/perm/kate/UpdateActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v6, 0x7f0e00a3

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "download_button":Landroid/view/View;
    const v6, 0x7f0e0344

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/UpdateActivity;->downloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pro"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->isPackageNew()Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    const v6, 0x7f0e0068

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.version_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "version_name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.version_message"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "version_message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.market_url"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/UpdateActivity;->market_url:Ljava/lang/String;

    .line 47
    const v6, 0x7f0e0343

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "textVersion":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070527

    invoke-virtual {p0, v7}, Lcom/perm/kate/UpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    const v6, 0x7f0e0109

    invoke-virtual {p0, v6}, Lcom/perm/kate/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "textMessage":Landroid/widget/TextView;
    if-eqz v4, :cond_3

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 55
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/UpdateActivity;->setButtonsBg()V

    .line 60
    return-void

    .line 51
    .end local v2    # "textMessage":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 57
    .restart local v2    # "textMessage":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
