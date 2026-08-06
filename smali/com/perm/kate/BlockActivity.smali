.class public Lcom/perm/kate/BlockActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BlockActivity.java"


# instance fields
.field private block:Z

.field private block_btn:Landroid/widget/Button;

.field private block_on_key_listener:Landroid/view/View$OnKeyListener;

.field private block_password1:Landroid/widget/EditText;

.field private block_password2:Landroid/widget/EditText;

.field private block_region:Landroid/widget/LinearLayout;

.field private change_block_password:Z

.field private first_intent:Landroid/content/Intent;

.field private on_key_listener:Landroid/view/View$OnKeyListener;

.field private unblockPasswordChangedListener:Landroid/text/TextWatcher;

.field private unblock_btn:Landroid/widget/Button;

.field private unblock_password:Landroid/widget/EditText;

.field private unblock_region:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/perm/kate/BlockActivity;->block:Z

    .line 40
    iput-boolean v0, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    .line 144
    new-instance v0, Lcom/perm/kate/BlockActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlockActivity$5;-><init>(Lcom/perm/kate/BlockActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->on_key_listener:Landroid/view/View$OnKeyListener;

    .line 162
    new-instance v0, Lcom/perm/kate/BlockActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlockActivity$6;-><init>(Lcom/perm/kate/BlockActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->block_on_key_listener:Landroid/view/View$OnKeyListener;

    .line 189
    new-instance v0, Lcom/perm/kate/BlockActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlockActivity$7;-><init>(Lcom/perm/kate/BlockActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->unblockPasswordChangedListener:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BlockActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BlockActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/BlockActivity;->checkUnblockPassword(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/BlockActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BlockActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->checkBlockPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/BlockActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlockActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/BlockActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlockActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    return-object v0
.end method

.method public static checkAlwaysBlock(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 279
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v2, 0x7f07052a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 280
    .local v0, "always_block":Z
    if-eqz v0, :cond_0

    .line 281
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    .line 283
    :cond_0
    return-void
.end method

.method private checkBlockPassword()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v2, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "p1":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/BlockActivity;->block_password2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "p2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-nez v2, :cond_0

    .line 230
    const v2, 0x7f0704b2

    invoke-virtual {p0, v2}, Lcom/perm/kate/BlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    const v2, 0x7f0704c4

    invoke-virtual {p0, v2}, Lcom/perm/kate/BlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {p0, v0}, Lcom/perm/kate/BlockActivity;->setBlockPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    iget-boolean v2, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-eqz v2, :cond_2

    .line 239
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    .line 240
    const v2, 0x7f070499

    invoke-virtual {p0, v2}, Lcom/perm/kate/BlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 241
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 242
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->finish()V

    goto :goto_0
.end method

.method private checkForTextPassword()V
    .locals 3

    .prologue
    .line 181
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "ps":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v1, "-?\\d+(\\.\\d+)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private checkUnblockPassword(Z)V
    .locals 5
    .param p1, "show_toast"    # Z

    .prologue
    .line 202
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "txt":Ljava/lang/String;
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->finish()V

    .line 205
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    .line 206
    iget-object v3, p0, Lcom/perm/kate/BlockActivity;->first_intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->first_intent:Landroid/content/Intent;

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/BlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 209
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "txt":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 206
    .restart local v2    # "txt":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/perm/kate/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v2    # "txt":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 210
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v2    # "txt":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 211
    const v3, 0x7f0704b2

    invoke-virtual {p0, v3}, Lcom/perm/kate/BlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 212
    :cond_3
    if-eqz p1, :cond_0

    .line 213
    const v3, 0x7f0704df

    invoke-virtual {p0, v3}, Lcom/perm/kate/BlockActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->clearWrongPassword()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private clearWrongPassword()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public static getBlockFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_blocked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBlockPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_block_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasBlockPassword(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "block_password":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setBlockFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blocked"    # Z

    .prologue
    .line 254
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 255
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_blocked"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method

.method public static setBlockPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "block_password"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_block_password"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0xc8

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 47
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 50
    sget v5, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->setTheme(I)V

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v5, 0x7f030037

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->setContentView(I)V

    .line 53
    sget-boolean v5, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v5, :cond_1

    .line 54
    const v5, 0x7f0e01f4

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "ll_header":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    :cond_0
    sget v5, Lcom/perm/kate/BaseActivity;->Theme:I

    const v8, 0x7f0a00c2

    if-ne v5, v8, :cond_1

    .line 58
    const v5, 0x7f0e0200

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, "iv_header_bottom_line":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 60
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBottomLineDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .end local v1    # "iv_header_bottom_line":Landroid/widget/ImageView;
    .end local v2    # "ll_header":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->setButtonsBg()V

    .line 64
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->setStatusBarBg(Landroid/app/Activity;)V

    .line 65
    invoke-static {p0}, Lcom/perm/kate/Helper;->checkTransparentTheme(Landroid/app/Activity;)V

    .line 66
    const v5, 0x7f0e01f5

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "ll_home_button":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "block"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/perm/kate/BlockActivity;->block:Z

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "change_block_password"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    .line 71
    const v5, 0x7f0e00b8

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_region:Landroid/widget/LinearLayout;

    .line 72
    const v5, 0x7f0e00b9

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    .line 73
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/perm/kate/BlockActivity;->on_key_listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    const v5, 0x7f0e00ba

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_btn:Landroid/widget/Button;

    .line 75
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_btn:Landroid/widget/Button;

    new-instance v8, Lcom/perm/kate/BlockActivity$1;

    invoke-direct {v8, p0}, Lcom/perm/kate/BlockActivity$1;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v5, 0x7f0e00bb

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->block_region:Landroid/widget/LinearLayout;

    .line 82
    const v5, 0x7f0e00bc

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    .line 83
    const v5, 0x7f0e00bd

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->block_password2:Landroid/widget/EditText;

    .line 84
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->block_password2:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/perm/kate/BlockActivity;->block_on_key_listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    const v5, 0x7f0e00be

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->block_btn:Landroid/widget/Button;

    .line 86
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->block_btn:Landroid/widget/Button;

    new-instance v8, Lcom/perm/kate/BlockActivity$2;

    invoke-direct {v8, p0}, Lcom/perm/kate/BlockActivity$2;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v8, p0, Lcom/perm/kate/BlockActivity;->block_btn:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v5, :cond_7

    const v5, 0x7f070160

    :goto_0
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setText(I)V

    .line 93
    iget-object v8, p0, Lcom/perm/kate/BlockActivity;->unblock_region:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v5, :cond_8

    :cond_3
    move v5, v7

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v8, p0, Lcom/perm/kate/BlockActivity;->block_region:Landroid/widget/LinearLayout;

    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v5, :cond_9

    :cond_4
    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    const v5, 0x7f0e00bf

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v8, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v8, :cond_a

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->checkForTextPassword()V

    .line 98
    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-eqz v5, :cond_b

    .line 99
    const v4, 0x7f070152

    .line 104
    .local v4, "str_id":I
    :goto_4
    const v5, 0x7f0e01f6

    invoke-virtual {p0, v5}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "header_text":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p0, v4}, Lcom/perm/kate/BlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_5
    invoke-virtual {p0, v4}, Lcom/perm/kate/BlockActivity;->setTitle(I)V

    .line 109
    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v5, :cond_d

    .line 110
    :cond_6
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 111
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    new-instance v6, Lcom/perm/kate/BlockActivity$3;

    invoke-direct {v6, p0}, Lcom/perm/kate/BlockActivity$3;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {v5, v6, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    :goto_5
    return-void

    .line 92
    .end local v0    # "header_text":Landroid/widget/TextView;
    .end local v4    # "str_id":I
    :cond_7
    const v5, 0x7f07014f

    goto :goto_0

    :cond_8
    move v5, v6

    .line 93
    goto :goto_1

    :cond_9
    move v5, v7

    .line 94
    goto :goto_2

    :cond_a
    move v7, v6

    .line 95
    goto :goto_3

    .line 100
    :cond_b
    iget-boolean v5, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v5, :cond_c

    .line 101
    const v4, 0x7f070161

    .restart local v4    # "str_id":I
    goto :goto_4

    .line 103
    .end local v4    # "str_id":I
    :cond_c
    const v4, 0x7f07045d

    .restart local v4    # "str_id":I
    goto :goto_4

    .line 119
    .restart local v0    # "header_text":Landroid/widget/TextView;
    :cond_d
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 120
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    new-instance v6, Lcom/perm/kate/BlockActivity$4;

    invoke-direct {v6, p0}, Lcom/perm/kate/BlockActivity$4;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {v5, v6, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "first_intent"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/perm/kate/BlockActivity;->first_intent:Landroid/content/Intent;

    .line 128
    iget-object v5, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/perm/kate/BlockActivity;->unblockPasswordChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_5
.end method

.method protected setButtonsBg()V
    .locals 3

    .prologue
    .line 134
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const v2, 0x7f0e0068

    invoke-virtual {p0, v2}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "fl_button_bg":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 138
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_2
    const v2, 0x7f0e00a3

    invoke-virtual {p0, v2}, Lcom/perm/kate/BlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "fl_button_bg2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
