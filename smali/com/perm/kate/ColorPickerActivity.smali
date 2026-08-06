.class public Lcom/perm/kate/ColorPickerActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ColorPickerActivity.java"


# instance fields
.field private defaultColor:I

.field private key_preference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ColorPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ColorPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->colorSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ColorPickerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ColorPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->tryParseCodeColor(Ljava/lang/String;)V

    return-void
.end method

.method private colorSelected(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.color_selected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/perm/kate/ColorPickerActivity;->key_preference:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "com.perm.kate.key_preference"

    iget-object v2, p0, Lcom/perm/kate/ColorPickerActivity;->key_preference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/ColorPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/perm/kate/ColorPickerActivity;->finish()V

    .line 55
    return-void
.end method

.method private tryParseCodeColor(Ljava/lang/String;)V
    .locals 5
    .param p1, "color_code"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0704bd

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0, v4}, Lcom/perm/kate/ColorPickerActivity;->displayToast(I)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "color":I
    invoke-direct {p0, v0}, Lcom/perm/kate/ColorPickerActivity;->colorSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    invoke-virtual {p0, v4}, Lcom/perm/kate/ColorPickerActivity;->displayToast(I)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    const v0, 0x7f0701e6

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 70
    const/4 v0, 0x2

    const v1, 0x7f07025b

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 71
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v3, 0x7f03003e

    invoke-virtual {p0, v3}, Lcom/perm/kate/ColorPickerActivity;->setContentView(I)V

    .line 29
    const v3, 0x7f070482

    invoke-virtual {p0, v3}, Lcom/perm/kate/ColorPickerActivity;->setHeaderTitle(I)V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/ColorPickerActivity;->setupMenuButton()V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.default_color"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/perm/kate/ColorPickerActivity;->defaultColor:I

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.key_preference"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ColorPickerActivity;->key_preference:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.is_led"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    .local v1, "is_led":Z
    invoke-virtual {p0}, Lcom/perm/kate/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.is_theme"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 35
    .local v2, "is_theme":Z
    const v3, 0x7f0e00d9

    invoke-virtual {p0, v3}, Lcom/perm/kate/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 36
    .local v0, "gridView":Landroid/widget/GridView;
    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 37
    new-instance v3, Lcom/perm/kate/ColorPickerAdapter;

    invoke-direct {v3, p0, v1, v2}, Lcom/perm/kate/ColorPickerAdapter;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    new-instance v3, Lcom/perm/kate/ColorPickerActivity$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/ColorPickerActivity$1;-><init>(Lcom/perm/kate/ColorPickerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 108
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 78
    :pswitch_0
    new-instance v5, Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget v6, p0, Lcom/perm/kate/ColorPickerActivity;->defaultColor:I

    new-instance v7, Lcom/perm/kate/ColorPickerActivity$2;

    invoke-direct {v7, p0}, Lcom/perm/kate/ColorPickerActivity$2;-><init>(Lcom/perm/kate/ColorPickerActivity;)V

    invoke-direct {v5, p0, v6, v7}, Lcom/perm/kate/color_picker/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V

    .line 88
    invoke-virtual {v5}, Lcom/perm/kate/color_picker/ColorPickerDialog;->show()V

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 92
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v5, 0x7f03001d

    invoke-virtual {v3, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, "captcha_view":Landroid/view/View;
    const v5, 0x7f0e006b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 94
    .local v2, "et_message":Landroid/widget/EditText;
    const-string v5, "#XXXXXX"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 95
    const-string v5, "#%06X"

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const v8, 0xffffff

    iget v9, p0, Lcom/perm/kate/ColorPickerActivity;->defaultColor:I

    and-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 97
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f07025b

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070334

    new-instance v7, Lcom/perm/kate/ColorPickerActivity$3;

    invoke-direct {v7, p0, v2}, Lcom/perm/kate/ColorPickerActivity$3;-><init>(Lcom/perm/kate/ColorPickerActivity;Landroid/widget/EditText;)V

    .line 99
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07015d

    .line 104
    invoke-virtual {v5, v6, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
