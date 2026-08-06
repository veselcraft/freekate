.class public Lcom/perm/kate/SyncActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/SyncActivity$SyncSettings;
    }
.end annotation


# static fields
.field public static syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field checkbox:Landroid/widget/CheckBox;

.field private listener:Landroid/view/View$OnClickListener;

.field private photoSizeListener:Landroid/view/View$OnClickListener;

.field photo_button:Landroid/widget/Button;

.field private positiveClick:Landroid/content/DialogInterface$OnClickListener;

.field private selectListener:Landroid/view/View$OnClickListener;

.field select_button:Landroid/widget/Button;

.field selected:I

.field start_button:Landroid/widget/Button;

.field user_id:Ljava/lang/String;

.field with_phones_only:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/perm/kate/SyncActivity$SyncSettings;

    invoke-direct {v0}, Lcom/perm/kate/SyncActivity$SyncSettings;-><init>()V

    sput-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/perm/kate/SyncActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$1;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->listener:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/perm/kate/SyncActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$2;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->cancelListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/perm/kate/SyncActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$3;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->selectListener:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lcom/perm/kate/SyncActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$4;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    new-instance v0, Lcom/perm/kate/SyncActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$5;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 203
    new-instance v0, Lcom/perm/kate/SyncActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$6;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->photoSizeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SyncActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->saveSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SyncActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->displayRemoveConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SyncActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->enableScreen()V

    return-void
.end method

.method private displayRemoveConfirmation()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07043f

    .line 137
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070334

    iget-object v2, p0, Lcom/perm/kate/SyncActivity;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07015d

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 141
    return-void
.end method

.method private enableScreen()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 155
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->select_button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->photo_button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 158
    return-void
.end method

.method public static readSettings(Landroid/content/Context;)Lcom/perm/kate/SyncActivity$SyncSettings;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 176
    new-instance v3, Lcom/perm/kate/SyncActivity$SyncSettings;

    invoke-direct {v3}, Lcom/perm/kate/SyncActivity$SyncSettings;-><init>()V

    .line 177
    .local v3, "ss":Lcom/perm/kate/SyncActivity$SyncSettings;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "sync_type"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v3, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    .line 179
    const-string v6, "lists"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "res":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "res1":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    .line 182
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, v2, v5

    .line 183
    .local v4, "x":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    iget-object v7, v3, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 185
    .end local v4    # "x":Ljava/lang/String;
    :cond_1
    const-string v5, "sync_with_phones_only"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    .line 186
    return-object v3
.end method

.method private saveSettings()V
    .locals 7

    .prologue
    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 162
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sync_type"

    sget-object v5, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget v5, v5, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v3, ""

    .line 165
    .local v3, "res":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget-object v4, v4, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 166
    .local v1, "id":Ljava/lang/Integer;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    goto :goto_0

    .line 170
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_1
    const-string v4, "lists"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v4, "sync_with_phones_only"

    iget-object v5, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method


# virtual methods
.method public isInstalledOnSdCard()Z
    .locals 10

    .prologue
    const/high16 v9, 0x40000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 93
    move-object v1, p0

    .line 95
    .local v1, "context":Landroid/content/Context;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x7

    if-le v7, v8, :cond_2

    .line 96
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 98
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 99
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_1

    .line 118
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v5

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v5, v6

    .line 100
    goto :goto_0

    .line 101
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 108
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "filesDir":Ljava/lang/String;
    const-string v7, "/data/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const-string v7, "/mnt/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "/sdcard/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-nez v7, :cond_0

    .end local v2    # "filesDir":Ljava/lang/String;
    :goto_1
    move v5, v6

    .line 118
    goto :goto_0

    .line 114
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030104

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f07043a

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/SyncActivity;->setButtonsBg()V

    .line 45
    invoke-static {p0}, Lcom/perm/kate/SyncActivity;->readSettings(Landroid/content/Context;)Lcom/perm/kate/SyncActivity$SyncSettings;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    .line 47
    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->select_button:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->start_button:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->start_button:Landroid/widget/Button;

    const v1, 0x7f070334

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 50
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->start_button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0e033a

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->photo_button:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->photo_button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->photoSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0e033b

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    .line 59
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    sget-object v1, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget-boolean v1, v1, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/perm/kate/SyncActivity;->isInstalledOnSdCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const v0, 0x7f0e0339

    invoke-virtual {p0, v0}, Lcom/perm/kate/SyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perm/kate/sync/SyncLogic;->accountExists(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->enableScreen()V

    .line 69
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->select_button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->selectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method
