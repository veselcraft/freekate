.class public Lcom/perm/kate/BlockActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BlockActivity.java"


# instance fields
.field private block:Z

.field private block_on_key_listener:Landroid/view/View$OnKeyListener;

.field private block_password1:Landroid/widget/EditText;

.field private block_password2:Landroid/widget/EditText;

.field private change_block_password:Z

.field private fingerprintDialog:Landroid/app/Dialog;

.field private first_intent:Landroid/content/Intent;

.field private on_key_listener:Landroid/view/View$OnKeyListener;

.field private unblockPasswordChangedListener:Landroid/text/TextWatcher;

.field private unblock_password:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/perm/kate/BlockActivity;->block:Z

    .line 38
    iput-boolean v0, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    .line 203
    new-instance v0, Lcom/perm/kate/BlockActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlockActivity$7;-><init>(Lcom/perm/kate/BlockActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->on_key_listener:Landroid/view/View$OnKeyListener;

    .line 221
    new-instance v0, Lcom/perm/kate/BlockActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlockActivity$8;-><init>(Lcom/perm/kate/BlockActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->block_on_key_listener:Landroid/view/View$OnKeyListener;

    .line 248
    new-instance v0, Lcom/perm/kate/BlockActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlockActivity$9;-><init>(Lcom/perm/kate/BlockActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->unblockPasswordChangedListener:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BlockActivity;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/BlockActivity;->checkUnblockPassword(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/BlockActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->checkBlockPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/BlockActivity;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/BlockActivity;)Landroid/widget/EditText;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/BlockActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->successUnblock()V

    return-void
.end method

.method public static checkAlwaysBlock(Landroid/content/Context;)V
    .locals 3

    .line 346
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f015c

    .line 347
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 349
    invoke-static {p0, v0}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private checkBlockPassword()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/perm/kate/BlockActivity;->block_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-nez v2, :cond_0

    const v0, 0x7f0f0539

    .line 299
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 302
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0f0549

    .line 303
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 306
    :cond_1
    invoke-static {p0, v0}, Lcom/perm/kate/BlockActivity;->setBlockPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 308
    invoke-static {p0, v0}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    const v0, 0x7f0f0523

    .line 309
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 312
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private checkForFingerprint()V
    .locals 1

    .line 133
    invoke-static {p0}, Lcom/perm/utils/FingerprintManager;->isHardwareDetected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->showFingerprintDialog()V

    :cond_0
    return-void
.end method

.method private checkForTextPassword()V
    .locals 2

    .line 240
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-?\\d+(\\.\\d+)?"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkUnblockPassword(Z)V
    .locals 2

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->successUnblock()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f0f0539

    .line 265
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x7f0f0562

    .line 267
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->clearWrongPassword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private clearWrongPassword()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getBlockFlag(Landroid/content/Context;)Z
    .locals 2

    .line 317
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_blocked"

    const/4 v1, 0x0

    .line 318
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBlockPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 334
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_block_password"

    const-string v1, ""

    .line 335
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasBlockPassword(Landroid/content/Context;)Z
    .locals 0

    .line 329
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->getBlockPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setBlockFlag(Landroid/content/Context;Z)V
    .locals 1

    .line 322
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 323
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_blocked"

    .line 324
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setBlockPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 339
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 340
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_block_password"

    .line 341
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showFingerprintDialog()V
    .locals 5

    .line 139
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-static {p0}, Lcom/perm/utils/FingerprintManager;->hasEnrolledFingerprints(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 141
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c007d

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090133

    .line 142
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    new-instance v4, Lcom/perm/kate/BlockActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/perm/kate/BlockActivity$5;-><init>(Lcom/perm/kate/BlockActivity;Landroid/widget/TextView;)V

    .line 154
    new-instance v3, Lcom/perm/utils/FingerprintManager;

    invoke-direct {v3, p0, v4}, Lcom/perm/utils/FingerprintManager;-><init>(Landroid/app/Activity;Lcom/perm/utils/FingerprintManager$Callback;)V

    .line 155
    invoke-virtual {v3}, Lcom/perm/utils/FingerprintManager;->startAuth()V

    const v4, 0x7f0f02e8

    .line 156
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f0f00ac

    .line 157
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f01c5

    .line 160
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/perm/kate/BlockActivity$6;

    invoke-direct {v1, p0, v3}, Lcom/perm/kate/BlockActivity$6;-><init>(Lcom/perm/kate/BlockActivity;Lcom/perm/utils/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0f02e9

    .line 171
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f0427

    .line 173
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f0398

    .line 174
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private successUnblock()V
    .locals 2

    .line 278
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 279
    invoke-static {p0, v0}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    .line 280
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->first_intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static unblockByFingerprint(Landroid/content/Context;)Z
    .locals 2

    .line 354
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_unblock_by_fingerprint"

    const/4 v1, 0x0

    .line 355
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 45
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 48
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 51
    sget-boolean p1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0901d6

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    :cond_0
    sget p1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v0, 0x7f1000cb

    if-ne p1, v0, :cond_1

    const p1, 0x7f090195

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 58
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBottomLineDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/BlockActivity;->setButtonsBg()V

    .line 62
    invoke-static {p0}, Lcom/perm/kate/BaseActivity;->setStatusBarBg(Landroid/app/Activity;)V

    .line 63
    invoke-static {p0}, Lcom/perm/kate/Helper;->checkTransparentTheme(Landroid/app/Activity;)V

    const p1, 0x7f0901d7

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "block"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/BlockActivity;->block:Z

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "change_block_password"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    const p1, 0x7f0903f8

    .line 69
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v1, 0x7f0903f7

    .line 70
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    .line 71
    iget-object v3, p0, Lcom/perm/kate/BlockActivity;->on_key_listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v1, 0x7f0903f6

    .line 72
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    new-instance v3, Lcom/perm/kate/BlockActivity$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/BlockActivity$1;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090056

    .line 79
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f090054

    .line 80
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    const v3, 0x7f090055

    .line 81
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/perm/kate/BlockActivity;->block_password2:Landroid/widget/EditText;

    .line 82
    iget-object v4, p0, Lcom/perm/kate/BlockActivity;->block_on_key_listener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v3, 0x7f090053

    .line 83
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 84
    new-instance v4, Lcom/perm/kate/BlockActivity$2;

    invoke-direct {v4, p0}, Lcom/perm/kate/BlockActivity$2;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-boolean v4, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0f01c8

    goto :goto_0

    :cond_3
    const v4, 0x7f0f01b8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 91
    iget-boolean v3, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-boolean p1, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/16 p1, 0x8

    goto :goto_4

    :cond_7
    :goto_3
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f090358

    .line 93
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v1, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->checkForTextPassword()V

    .line 96
    iget-boolean p1, p0, Lcom/perm/kate/BlockActivity;->block:Z

    if-eqz p1, :cond_9

    const p1, 0x7f0f01bb

    goto :goto_6

    .line 98
    :cond_9
    iget-boolean p1, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz p1, :cond_a

    const p1, 0x7f0f01c9

    goto :goto_6

    :cond_a
    const p1, 0x7f0f04ed

    :goto_6
    const v0, 0x7f090167

    .line 102
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_b
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 107
    iget-boolean p1, p0, Lcom/perm/kate/BlockActivity;->block:Z

    const-wide/16 v0, 0xc8

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/perm/kate/BlockActivity;->change_block_password:Z

    if-eqz p1, :cond_c

    goto :goto_7

    .line 117
    :cond_c
    iget-object p1, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 118
    iget-object p1, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    new-instance v2, Lcom/perm/kate/BlockActivity$4;

    invoke-direct {v2, p0}, Lcom/perm/kate/BlockActivity$4;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "first_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/perm/kate/BlockActivity;->first_intent:Landroid/content/Intent;

    .line 126
    iget-object p1, p0, Lcom/perm/kate/BlockActivity;->unblock_password:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->unblockPasswordChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->unblockByFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 128
    invoke-direct {p0}, Lcom/perm/kate/BlockActivity;->checkForFingerprint()V

    goto :goto_8

    .line 108
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 109
    iget-object p1, p0, Lcom/perm/kate/BlockActivity;->block_password1:Landroid/widget/EditText;

    new-instance v2, Lcom/perm/kate/BlockActivity$3;

    invoke-direct {v2, p0}, Lcom/perm/kate/BlockActivity$3;-><init>(Lcom/perm/kate/BlockActivity;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_8
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/perm/kate/BlockActivity;->fingerprintDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected setButtonsBg()V
    .locals 2

    .line 193
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090138

    .line 195
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x7f090139

    .line 198
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
