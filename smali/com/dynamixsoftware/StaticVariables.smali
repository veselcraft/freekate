.class Lcom/dynamixsoftware/StaticVariables;
.super Ljava/lang/Object;
.source "StaticVariables.java"


# static fields
.field static APP_PACKAGE:Ljava/lang/String;

.field static APP_VERSION:Ljava/lang/String;

.field static FILES_PATH:Ljava/io/File;

.field static FILE_ENCODING:Ljava/lang/String;

.field static PROJECT_ID:J

.field static URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "http://ueh.dynamixsoftware.com/errors/report.ashx"

    sput-object v0, Lcom/dynamixsoftware/StaticVariables;->URL:Ljava/lang/String;

    .line 14
    const-string v0, "unknown"

    sput-object v0, Lcom/dynamixsoftware/StaticVariables;->APP_PACKAGE:Ljava/lang/String;

    .line 15
    const-string v0, "unknown"

    sput-object v0, Lcom/dynamixsoftware/StaticVariables;->APP_VERSION:Ljava/lang/String;

    .line 16
    const-string v0, "UTF-8"

    sput-object v0, Lcom/dynamixsoftware/StaticVariables;->FILE_ENCODING:Ljava/lang/String;

    .line 10
    return-void
.end method

.method static init(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "project_id"    # J

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 21
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 22
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/dynamixsoftware/StaticVariables;->APP_VERSION:Ljava/lang/String;

    .line 23
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v3, Lcom/dynamixsoftware/StaticVariables;->APP_PACKAGE:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "crash_reports"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/dynamixsoftware/StaticVariables;->FILES_PATH:Ljava/io/File;

    .line 28
    sput-wide p1, Lcom/dynamixsoftware/StaticVariables;->PROJECT_ID:J

    .line 29
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
