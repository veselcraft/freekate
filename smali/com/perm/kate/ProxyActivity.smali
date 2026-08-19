.class public Lcom/perm/kate/ProxyActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ProxyActivity.java"


# instance fields
.field btn_check:Landroid/widget/Button;

.field checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field checkbox:Landroid/widget/CheckBox;

.field statusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 111
    new-instance v0, Lcom/perm/kate/ProxyActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProxyActivity$5;-><init>(Lcom/perm/kate/ProxyActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ProxyActivity;->checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ProxyActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/ProxyActivity;->checkProxy()V

    return-void
.end method

.method private checkProxy()V
    .locals 3

    .line 149
    new-instance v0, Lcom/perm/kate/ProxyActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProxyActivity$7;-><init>(Lcom/perm/kate/ProxyActivity;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity;->statusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity;->statusView:Landroid/widget/TextView;

    const v2, 0x7f0f03f4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v0, p0, Lcom/perm/kate/ProxyActivity;->btn_check:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0106

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0408

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    const p1, 0x7f0900b8

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/ProxyActivity;->checkbox:Landroid/widget/CheckBox;

    .line 38
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 39
    iget-object p1, p0, Lcom/perm/kate/ProxyActivity;->checkbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/perm/kate/ProxyActivity;->checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f090078

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "OK"

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v0, Lcom/perm/kate/ProxyActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProxyActivity$1;-><init>(Lcom/perm/kate/ProxyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090408

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09030c

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/ProxyActivity;->statusView:Landroid/widget/TextView;

    const p1, 0x7f09006d

    .line 65
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/ProxyActivity;->btn_check:Landroid/widget/Button;

    .line 66
    new-instance v0, Lcom/perm/kate/ProxyActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProxyActivity$2;-><init>(Lcom/perm/kate/ProxyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09010b

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f090107

    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 74
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getServer()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getPort()I

    move-result v1

    if-lez v1, :cond_1

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    new-instance v1, Lcom/perm/kate/ProxyActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProxyActivity$3;-><init>(Lcom/perm/kate/ProxyActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    new-instance p1, Lcom/perm/kate/ProxyActivity$4;

    invoke-direct {p1, p0}, Lcom/perm/kate/ProxyActivity$4;-><init>(Lcom/perm/kate/ProxyActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SendLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
