.class public Lcom/perm/kate/ColorPickerActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ColorPickerActivity.java"


# instance fields
.field private defaultColor:I

.field private key_preference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ColorPickerActivity;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->colorSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ColorPickerActivity;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->tryParseCodeColor(Ljava/lang/String;)V

    return-void
.end method

.method private colorSelected(I)V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.color_selected"

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    iget-object p1, p0, Lcom/perm/kate/ColorPickerActivity;->key_preference:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "com.perm.kate.key_preference"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, -0x1

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private tryParseCodeColor(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0f0543

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 118
    invoke-direct {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->colorSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void

    .line 113
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0f0241

    .line 69
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f0f02b5

    .line 70
    invoke-interface {p1, v0, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0042

    .line 28
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0511

    .line 29
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 30
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.default_color"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/ColorPickerActivity;->defaultColor:I

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.key_preference"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ColorPickerActivity;->key_preference:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_led"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.perm.kate.is_theme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const v2, 0x7f090162

    .line 35
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 36
    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 37
    new-instance v1, Lcom/perm/kate/ColorPickerAdapter;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/ColorPickerAdapter;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    new-instance p1, Lcom/perm/kate/ColorPickerActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/ColorPickerActivity$1;-><init>(Lcom/perm/kate/ColorPickerActivity;)V

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/perm/kate/ColorPickerActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 91
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c001f

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09011d

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v3, "#XXXXXX"

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0xffffff

    .line 95
    iget v6, p0, Lcom/perm/kate/ColorPickerActivity;->defaultColor:I

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "#%06X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 97
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f02b5

    .line 98
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f0f0398

    new-instance v5, Lcom/perm/kate/ColorPickerActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/perm/kate/ColorPickerActivity$3;-><init>(Lcom/perm/kate/ColorPickerActivity;Landroid/widget/EditText;)V

    .line 99
    invoke-virtual {p1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f01c5

    .line 104
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    .line 78
    :cond_1
    new-instance p1, Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget v0, p0, Lcom/perm/kate/ColorPickerActivity;->defaultColor:I

    new-instance v2, Lcom/perm/kate/ColorPickerActivity$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/ColorPickerActivity$2;-><init>(Lcom/perm/kate/ColorPickerActivity;)V

    invoke-direct {p1, p0, v0, v2}, Lcom/perm/kate/color_picker/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V

    .line 88
    invoke-virtual {p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->show()V

    return v1
.end method
