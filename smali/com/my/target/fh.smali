.class public final Lcom/my/target/fh;
.super Lcom/my/target/fj;
.source "DeviceParamsDataProvider.java"


# instance fields
.field private density:F

.field private gI:Z

.field private gJ:Ljava/lang/String;

.field private gK:Ljava/lang/String;

.field private gL:Ljava/lang/String;

.field private gM:Ljava/lang/String;

.field private gN:Ljava/lang/String;

.field private gO:Ljava/lang/String;

.field private gP:Ljava/lang/String;

.field private gQ:Ljava/lang/String;

.field private gR:Ljava/lang/String;

.field private gS:Ljava/lang/String;

.field private gT:Ljava/lang/String;

.field private gU:I

.field private gV:Ljava/lang/String;

.field private gW:Ljava/lang/String;

.field private gX:Ljava/lang/String;

.field private height:I

.field private timezone:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/my/target/fj;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/my/target/fh;->gI:Z

    const-string v1, ""

    .line 52
    iput-object v1, p0, Lcom/my/target/fh;->gJ:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/my/target/fh;->gK:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/my/target/fh;->gL:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/my/target/fh;->gM:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/my/target/fh;->gN:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/my/target/fh;->gO:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/my/target/fh;->gP:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/my/target/fh;->gQ:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/my/target/fh;->gR:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/my/target/fh;->gS:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/my/target/fh;->gT:Ljava/lang/String;

    .line 63
    iput v0, p0, Lcom/my/target/fh;->width:I

    .line 64
    iput v0, p0, Lcom/my/target/fh;->height:I

    .line 65
    iput v0, p0, Lcom/my/target/fh;->gU:I

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/my/target/fh;->density:F

    .line 67
    iput-object v1, p0, Lcom/my/target/fh;->gV:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/my/target/fh;->gW:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/my/target/fh;->gX:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/my/target/fh;->timezone:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/my/target/fh;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/my/target/fh;->dN()Z

    move-result p0

    return p0
.end method

.method private dN()Z
    .locals 14

    .line 315
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "test-keys"

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v0, :cond_2

    const/16 v6, 0xa

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "/system/app/Superuser.apk"

    aput-object v8, v7, v1

    const-string v8, "/sbin/su"

    aput-object v8, v7, v2

    const-string v8, "/system/bin/su"

    aput-object v8, v7, v5

    const-string v8, "/system/xbin/su"

    aput-object v8, v7, v4

    const-string v8, "/data/local/xbin/su"

    aput-object v8, v7, v3

    const/4 v8, 0x5

    const-string v9, "/data/local/bin/su"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "/system/sd/xbin/su"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "/system/bin/failsafe/su"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "/data/local/su"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "/su/bin/su"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    .line 334
    aget-object v9, v7, v8

    .line 336
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v6, 0x0

    if-nez v0, :cond_7

    .line 346
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/String;

    const-string v9, "/system/xbin/which su"

    aput-object v9, v8, v1

    const-string v9, "/system/bin/which su"

    aput-object v9, v8, v2

    const-string v9, "which su"

    aput-object v9, v8, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_7

    .line 352
    aget-object v10, v8, v9

    .line 357
    :try_start_0
    invoke-virtual {v7, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 362
    :try_start_1
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 364
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    :goto_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 369
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 372
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 373
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v12, :cond_4

    .line 386
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 399
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    const/4 v0, 0x1

    goto :goto_9

    :catchall_1
    const/4 v0, 0x1

    goto :goto_7

    :catchall_2
    move-object v11, v6

    :catchall_3
    if-eqz v11, :cond_5

    .line 386
    :cond_4
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    nop

    goto :goto_7

    :cond_5
    :goto_5
    if-eqz v10, :cond_6

    .line 399
    :goto_6
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_8

    :catchall_5
    move-object v10, v6

    :goto_7
    if-eqz v10, :cond_6

    goto :goto_6

    :catchall_6
    :cond_6
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    :goto_9
    if-nez v0, :cond_c

    .line 411
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const-string v9, "/proc/%d/mounts"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 416
    :try_start_7
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    new-array v6, v3, [Ljava/lang/String;

    const-string v7, "/sbin/.magisk/"

    aput-object v7, v6, v1

    const-string v7, "/sbin/.core/mirror"

    aput-object v7, v6, v2

    const-string v7, "/sbin/.core/img"

    aput-object v7, v6, v5

    const-string v5, "/sbin/.core/db-0/magisk.db"

    aput-object v5, v6, v4

    .line 424
    :cond_8
    :goto_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-nez v4, :cond_9

    .line 449
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_e

    :cond_9
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v3, :cond_8

    .line 430
    :try_start_a
    aget-object v7, v6, v5

    .line 432
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v7, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v6, v8

    goto :goto_c

    :catch_0
    move-object v6, v8

    goto :goto_d

    :catchall_8
    move-exception v0

    :goto_c
    if-eqz v6, :cond_b

    .line 449
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 455
    :catch_1
    :cond_b
    throw v0

    :catch_2
    :goto_d
    if-eqz v6, :cond_c

    .line 449
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    :cond_c
    :goto_e
    return v0
.end method

.method private w(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    .line 288
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 295
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 297
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 306
    :goto_0
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/my/target/fh;->width:I

    .line 307
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/my/target/fh;->height:I

    return-void
.end method


# virtual methods
.method public declared-synchronized collectData(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/my/target/fh;->gI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 182
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "collect application info..."

    .line 185
    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/my/target/fh$1;

    invoke-direct {v0, p0}, Lcom/my/target/fh$1;-><init>(Lcom/my/target/fh;)V

    invoke-static {v0}, Lcom/my/target/ai;->b(Ljava/lang/Runnable;)V

    .line 194
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/my/target/fh;->gJ:Ljava/lang/String;

    .line 195
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/my/target/fh;->gP:Ljava/lang/String;

    .line 196
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/my/target/fh;->gQ:Ljava/lang/String;

    .line 198
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/my/target/fh;->gL:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/fh;->gM:Ljava/lang/String;

    .line 200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/fh;->gR:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 203
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/fh;->gM:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 204
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/my/target/fh;->gN:Ljava/lang/String;

    .line 205
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 207
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/fh;->gO:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/fh;->gO:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :catch_0
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android_id"

    .line 220
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/fh;->gK:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    .line 223
    iput-object v1, p0, Lcom/my/target/fh;->gK:Ljava/lang/String;

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/fh;->gS:Ljava/lang/String;

    const-string v1, "phone"

    .line 227
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    .line 230
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/fh;->gW:Ljava/lang/String;

    .line 231
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 233
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/fh;->gX:Ljava/lang/String;

    .line 235
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/my/target/fh;->gV:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/fh;->gT:Ljava/lang/String;

    goto :goto_1

    .line 243
    :cond_4
    iput-object v1, p0, Lcom/my/target/fh;->gV:Ljava/lang/String;

    .line 247
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/my/target/fh;->w(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 250
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/my/target/fh;->gU:I

    .line 251
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/my/target/fh;->density:F

    .line 253
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v0}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/fh;->timezone:Ljava/lang/String;

    const-string p1, "android_id"

    .line 256
    iget-object v0, p0, Lcom/my/target/fh;->gK:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "device"

    .line 257
    iget-object v0, p0, Lcom/my/target/fh;->gJ:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "os"

    const-string v0, "Android"

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "manufacture"

    .line 259
    iget-object v0, p0, Lcom/my/target/fh;->gP:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "osver"

    .line 260
    iget-object v0, p0, Lcom/my/target/fh;->gL:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "app"

    .line 261
    iget-object v0, p0, Lcom/my/target/fh;->gM:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "appver"

    .line 262
    iget-object v0, p0, Lcom/my/target/fh;->gN:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "appbuild"

    .line 263
    iget-object v0, p0, Lcom/my/target/fh;->gO:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "lang"

    .line 264
    iget-object v0, p0, Lcom/my/target/fh;->gR:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "app_lang"

    .line 265
    iget-object v0, p0, Lcom/my/target/fh;->gS:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "sim_loc"

    .line 266
    iget-object v0, p0, Lcom/my/target/fh;->gT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "euname"

    .line 267
    iget-object v0, p0, Lcom/my/target/fh;->gQ:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "w"

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/fh;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "h"

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/fh;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "dpi"

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/fh;->gU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "density"

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/fh;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "operator_id"

    .line 272
    iget-object v0, p0, Lcom/my/target/fh;->gV:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "operator_name"

    .line 273
    iget-object v0, p0, Lcom/my/target/fh;->gW:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "sim_operator_id"

    .line 274
    iget-object v0, p0, Lcom/my/target/fh;->gX:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "timezone"

    .line 275
    iget-object v0, p0, Lcom/my/target/fh;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/my/target/fj;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    invoke-virtual {p0}, Lcom/my/target/fj;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/my/target/fh;->gI:Z

    const-string p1, "collected"

    .line 283
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
