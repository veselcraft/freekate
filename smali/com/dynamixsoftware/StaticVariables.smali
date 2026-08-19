.class abstract Lcom/dynamixsoftware/StaticVariables;
.super Ljava/lang/Object;
.source "StaticVariables.java"


# static fields
.field static APP_PACKAGE:Ljava/lang/String; = "unknown"

.field static APP_VERSION:Ljava/lang/String; = "unknown"

.field static FILES_PATH:Ljava/io/File; = null

.field static FILE_ENCODING:Ljava/lang/String; = "UTF-8"

.field static PROJECT_ID:J = 0x0L

.field static URL:Ljava/lang/String; = "http://ueh.dynamixsoftware.com/errors/report.ashx"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static init(Landroid/content/Context;J)V
    .locals 3

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 22
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/dynamixsoftware/StaticVariables;->APP_VERSION:Ljava/lang/String;

    .line 23
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/dynamixsoftware/StaticVariables;->APP_PACKAGE:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 27
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "crash_reports"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    .line 28
    sput-wide p1, Lcom/dynamixsoftware/StaticVariables;->PROJECT_ID:J

    return-void
.end method
