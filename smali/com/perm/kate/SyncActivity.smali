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

    .line 39
    new-instance v0, Lcom/perm/kate/SyncActivity$SyncSettings;

    invoke-direct {v0}, Lcom/perm/kate/SyncActivity$SyncSettings;-><init>()V

    sput-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/perm/kate/SyncActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$1;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->listener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/perm/kate/SyncActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$2;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->cancelListener:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/perm/kate/SyncActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$3;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->selectListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcom/perm/kate/SyncActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$4;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 178
    new-instance v0, Lcom/perm/kate/SyncActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$5;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 207
    new-instance v0, Lcom/perm/kate/SyncActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SyncActivity$6;-><init>(Lcom/perm/kate/SyncActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SyncActivity;->photoSizeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SyncActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->saveSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SyncActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->displayRemoveConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SyncActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->enableScreen()V

    return-void
.end method

.method private displayRemoveConfirmation()V
    .locals 3

    .line 125
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04d2

    .line 126
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f0398

    .line 127
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private enableScreen()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->select_button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->photo_button:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public static readSettings(Landroid/content/Context;)Lcom/perm/kate/SyncActivity$SyncSettings;
    .locals 7

    .line 165
    new-instance v0, Lcom/perm/kate/SyncActivity$SyncSettings;

    invoke-direct {v0}, Lcom/perm/kate/SyncActivity$SyncSettings;-><init>()V

    .line 166
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "sync_type"

    const/4 v2, 0x0

    .line 167
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    const-string v1, "lists"

    const-string v3, ""

    .line 168
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    .line 169
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    .line 171
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 172
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 173
    iget-object v6, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "sync_with_phones_only"

    const/4 v2, 0x1

    .line 174
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    return-object v0
.end method

.method private saveSettings()V
    .locals 6

    .line 150
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget v1, v1, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    const-string v2, "sync_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    sget-object v1, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget-object v1, v1, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v1, "lists"

    .line 159
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v1, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "sync_with_phones_only"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public isInstalledOnSdCard()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 102
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0123

    .line 44
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04cd

    .line 45
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 47
    invoke-static {p0}, Lcom/perm/kate/SyncActivity;->readSettings(Landroid/content/Context;)Lcom/perm/kate/SyncActivity$SyncSettings;

    move-result-object p1

    sput-object p1, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    const p1, 0x7f0902c2

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SyncActivity;->select_button:Landroid/widget/Button;

    const p1, 0x7f090078

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SyncActivity;->start_button:Landroid/widget/Button;

    const v0, 0x7f0f0398

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 52
    iget-object p1, p0, Lcom/perm/kate/SyncActivity;->start_button:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900b9

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->checkListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f09006a

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09026f

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/SyncActivity;->photo_button:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/perm/kate/SyncActivity;->photoSizeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090426

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/perm/kate/SyncActivity;->with_phones_only:Landroid/widget/CheckBox;

    .line 61
    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget-boolean v0, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->with_phones_only:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/perm/kate/SyncActivity;->isInstalledOnSdCard()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0902bd

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    .line 67
    invoke-static {p1, p0}, Lcom/perm/kate/sync/SyncLogic;->accountExists(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/SyncActivity;->enableScreen()V

    .line 71
    iget-object p1, p0, Lcom/perm/kate/SyncActivity;->select_button:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/SyncActivity;->selectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "android.permission.WRITE_CONTACTS"

    .line 73
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.READ_CONTACTS"

    if-nez v2, :cond_2

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    aput-object v3, v2, v1

    .line 74
    invoke-static {p0, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 190
    :cond_0
    array-length p1, p3

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
