.class public final Lcom/my/target/core/providers/b;
.super Lcom/my/target/core/providers/a;
.source "DeviceParamsDataProvider.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lcom/my/target/core/providers/a;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/my/target/core/providers/b;->a:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->b:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->f:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->g:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->j:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->k:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->l:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/my/target/core/providers/b;->m:I

    .line 64
    iput v1, p0, Lcom/my/target/core/providers/b;->n:I

    .line 65
    iput v1, p0, Lcom/my/target/core/providers/b;->o:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/providers/b;->p:F

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->r:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->s:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->t:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/providers/b;->u:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    .line 178
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 311
    .line 315
    :try_start_0
    invoke-static {}, Lcom/my/target/core/utils/k;->a()Lcom/my/target/core/utils/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/utils/k;->a(Landroid/content/Context;)Lcom/my/target/core/utils/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :try_start_1
    invoke-virtual {v0}, Lcom/my/target/core/utils/k;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 323
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 327
    :goto_1
    const-string v2, ""

    .line 328
    invoke-static {p1}, Lcom/my/target/core/providers/b;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    invoke-static {p1}, Lcom/my/target/core/providers/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 330
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/k;->a(Ljava/lang/String;)V

    .line 336
    :cond_1
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 319
    :goto_2
    const-string v3, "PreferencesManager error"

    invoke-static {v3}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 325
    :cond_2
    const-string v1, "sdk < 9"

    goto :goto_1

    .line 317
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 344
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 351
    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 356
    const/4 v1, -0x1

    .line 359
    :try_start_0
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 366
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to check android.permission.GET_ACCOUNTS permission! Unexpected throwable in Context.checkCallingOrSelfPermission() method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 366
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/my/target/core/providers/b;->m:I

    return v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 185
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/my/target/core/providers/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    const-string v1, "collect application info..."

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 188
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->b:Ljava/lang/String;

    .line 189
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    .line 190
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    .line 192
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 198
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/my/target/core/providers/b;->f:Ljava/lang/String;

    .line 199
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->g:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_1

    .line 207
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 210
    const-string v1, ""

    iput-object v1, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->k:Ljava/lang/String;

    .line 214
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 215
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/providers/b;->r:Ljava/lang/String;

    .line 216
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 217
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/providers/b;->s:Ljava/lang/String;

    .line 219
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 222
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    .line 223
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->l:Ljava/lang/String;

    .line 229
    :goto_2
    invoke-virtual {p0, p1}, Lcom/my/target/core/providers/b;->b(Landroid/content/Context;)V

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 232
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/my/target/core/providers/b;->o:I

    .line 233
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/my/target/core/providers/b;->p:F

    .line 235
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->t:Ljava/lang/String;

    .line 238
    invoke-direct {p0, p1}, Lcom/my/target/core/providers/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/core/providers/b;->u:Ljava/lang/String;

    .line 240
    const-string v1, "android_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    const-string v1, "device"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    const-string v1, "manufacture"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    const-string v1, "osver"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    const-string v1, "app"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    const-string v1, "appver"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    const-string v1, "appbuild"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    const-string v1, "lang"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    const-string v1, "app_lang"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    const-string v1, "sim_loc"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    const-string v1, "euname"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 252
    const-string v1, "w"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    const-string v1, "h"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    const-string v1, "dpi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    const-string v1, "density"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/my/target/core/providers/b;->p:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 256
    const-string v1, "operator_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 257
    const-string v1, "operator_name"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    const-string v1, "sim_operator_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    const-string v1, "mrgs_device_id"

    iget-object v2, p0, Lcom/my/target/core/providers/b;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/my/target/core/providers/b;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "android_id"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "euname"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "os"

    const-string v3, "Android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "osver"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/my/target/core/providers/b;->v:Ljava/util/Map;

    const-string v2, "manufacture"

    iget-object v3, p0, Lcom/my/target/core/providers/b;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lcom/my/target/core/providers/b;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 226
    :cond_3
    :try_start_4
    iput-object v1, p0, Lcom/my/target/core/providers/b;->q:Ljava/lang/String;

    goto/16 :goto_2

    .line 273
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/my/target/core/providers/b;->a:Z

    .line 274
    const-string v1, "collected"

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/my/target/core/providers/b;->n:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/my/target/core/providers/b;->a:Z

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 282
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 286
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 288
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    :goto_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/my/target/core/providers/b;->m:I

    .line 301
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/my/target/core/providers/b;->n:I

    goto :goto_0

    .line 290
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_2

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 297
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method
