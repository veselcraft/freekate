.class public Lcom/perm/kate/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/Helper$FlushedInputStream;
    }
.end annotation


# static fields
.field static nf:Ljava/text/NumberFormat;

.field public static preference_name:Ljava/lang/String;

.field public static scale:F

.field public static final sdf:Ljava/text/DateFormat;

.field public static final sdf_date:Ljava/text/DateFormat;

.field public static final sdf_date_no_year:Ljava/text/DateFormat;

.field public static final sdf_date_time:Ljava/text/DateFormat;

.field public static final sdf_date_time_no_year:Ljava/text/DateFormat;

.field public static final sdf_time:Ljava/text/DateFormat;

.field private static year_start_long:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/perm/kate/Helper;->year_start_long:J

    .line 663
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/Helper;->sdf:Ljava/text/DateFormat;

    .line 671
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perm/kate/Helper;->sdf_date_time:Ljava/text/DateFormat;

    .line 672
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perm/kate/Helper;->sdf_date_time_no_year:Ljava/text/DateFormat;

    .line 673
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perm/kate/Helper;->sdf_date:Ljava/text/DateFormat;

    .line 674
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perm/kate/Helper;->sdf_date_no_year:Ljava/text/DateFormat;

    .line 675
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perm/kate/Helper;->sdf_time:Ljava/text/DateFormat;

    .line 718
    const-string v0, "last_cache_check_1"

    sput-object v0, Lcom/perm/kate/Helper;->preference_name:Ljava/lang/String;

    .line 737
    const/4 v0, 0x0

    sput v0, Lcom/perm/kate/Helper;->scale:F

    .line 957
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/Helper;->nf:Ljava/text/NumberFormat;

    .line 958
    sget-object v0, Lcom/perm/kate/Helper;->nf:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 959
    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V

    .line 88
    return-void
.end method

.method public static CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/perm/utils/UploadProgressListener;)V
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/perm/utils/UploadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x0

    .line 92
    const/16 v0, 0x400

    .line 93
    .local v0, "buffer_size":I
    new-array v1, v7, [B

    .line 94
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 97
    .local v3, "total":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 98
    .local v2, "count":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 105
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 101
    add-int/2addr v3, v2

    .line 102
    if-eqz p2, :cond_0

    .line 103
    int-to-long v4, v3

    invoke-interface {p2, v4, v5}, Lcom/perm/utils/UploadProgressListener;->publishProgress(J)V

    goto :goto_0
.end method

.method public static ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 3
    .param p0, "owner_id"    # Ljava/lang/String;
    .param p1, "album_id"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 844
    const-string v1, "com.perm.kate.uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v1, "com.perm.kate.aid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 846
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 847
    return-void
.end method

.method public static ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V
    .locals 6
    .param p0, "type"    # I
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "post_owner_id"    # J
    .param p4, "activity"    # Landroid/content/Context;

    .prologue
    .line 786
    const/4 v5, 0x1

    move v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;Z)V

    .line 787
    return-void
.end method

.method public static ShowComments(ILjava/lang/Long;JLandroid/content/Context;Z)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "post_owner_id"    # J
    .param p4, "activity"    # Landroid/content/Context;
    .param p5, "can_post"    # Z

    .prologue
    .line 790
    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;Z)V

    .line 791
    return-void
.end method

.method public static ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "post_owner_id"    # J
    .param p4, "last_page"    # Z
    .param p5, "activity"    # Landroid/content/Context;

    .prologue
    .line 794
    const/4 v6, 0x1

    move v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;Z)V

    .line 795
    return-void
.end method

.method public static ShowComments(ILjava/lang/Long;JZLandroid/content/Context;Z)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "post_owner_id"    # J
    .param p4, "last_page"    # Z
    .param p5, "activity"    # Landroid/content/Context;
    .param p6, "can_post"    # Z

    .prologue
    .line 798
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 799
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/CommentsActivity;

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 800
    const-string v1, "com.perm.kate.current_photo_pid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 801
    const-string v1, "com.perm.kate.current_owner_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 802
    const-string v1, "com.perm.kate.comment_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    const-string v1, "last_page"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 804
    const-string v1, "can_post"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 805
    invoke-virtual {p5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 806
    return-void
.end method

.method public static ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "post_id"    # Ljava/lang/String;
    .param p1, "post_owner_id"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 809
    if-nez p0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 811
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 812
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 813
    const-string v1, "com.perm.kate.pid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v1, "com.perm.kate.comment_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static ShowProfile(JLandroid/app/Activity;)V
    .locals 2
    .param p0, "user_id"    # J
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 768
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 769
    return-void
.end method

.method public static ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 772
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 773
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 774
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 776
    return-void
.end method

.method static synthetic access$000(ZLandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->showProgressBar(ZLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/util/ArrayList;
    .param p5, "x4"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static/range {p0 .. p5}, Lcom/perm/kate/Helper;->showActivity(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lcom/perm/kate/Helper;->checkPhotoLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lcom/perm/kate/Helper;->processPhotoLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static checkCacheSizeSometimes(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 723
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v10, Lcom/perm/kate/Helper;->preference_name:Ljava/lang/String;

    const-wide/16 v12, 0x0

    invoke-interface {v1, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 724
    .local v4, "last_check":J
    const-wide/32 v6, 0x5265c00

    .line 725
    .local v6, "max_period":J
    const-wide/32 v2, 0x5265c00

    .line 726
    .local v2, "future_period":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 727
    .local v8, "now":J
    sub-long v10, v8, v4

    cmp-long v10, v10, v6

    if-gtz v10, :cond_0

    sub-long v10, v4, v8

    cmp-long v10, v10, v2

    if-lez v10, :cond_1

    .line 730
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perm/kate/ImageLoader;->checkCacheSize()V

    .line 731
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 732
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v10, Lcom/perm/kate/Helper;->preference_name:Ljava/lang/String;

    invoke-interface {v0, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 733
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 735
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public static checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z
    .locals 6
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "attachment_count"    # I
    .param p2, "is_comment"    # Z
    .param p3, "included"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1304
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    .line 1305
    .local v0, "max_count":I
    :goto_0
    if-eqz p3, :cond_0

    if-ge p1, v0, :cond_1

    :cond_0
    if-nez p3, :cond_3

    if-le p1, v0, :cond_3

    .line 1306
    :cond_1
    const v4, 0x7f0704c1

    invoke-virtual {p0, v4}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, "toast_text":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 1310
    .end local v1    # "toast_text":Ljava/lang/String;
    :goto_1
    return v2

    .line 1304
    .end local v0    # "max_count":I
    :cond_2
    const/16 v0, 0xa

    goto :goto_0

    .restart local v0    # "max_count":I
    :cond_3
    move v2, v3

    .line 1310
    goto :goto_1
.end method

.method private static checkPhotoLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1469
    if-eqz p0, :cond_0

    .line 1470
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1472
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1486
    .end local p1    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 1474
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1476
    :cond_2
    invoke-static {p0}, Lcom/perm/kate/Helper;->isPhotoLink(Ljava/lang/String;)Z

    move-result v0

    .line 1477
    .local v0, "isPhotoLink":Z
    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/perm/utils/InstagramHelper;->isInstagramLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1478
    invoke-static {p0, p1, p2}, Lcom/perm/kate/Helper;->processInstagramLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1481
    :cond_3
    if-nez v0, :cond_5

    .line 1482
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .end local p1    # "activity":Landroid/app/Activity;
    :cond_4
    const v1, 0x7f070347

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1485
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/perm/kate/Helper;->processPhotoLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public static checkTransparentTheme(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v3, 0x100000

    .line 1337
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v2, 0x7f0a00cc

    if-eq v1, v2, :cond_0

    .line 1348
    :goto_0
    return-void

    .line 1339
    :cond_0
    invoke-static {p0}, Lcom/perm/kate/Helper;->getAppBackground(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1340
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1347
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static cleanup(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/CleanupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 716
    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 160
    if-eqz p0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyDocLink(JJLandroid/content/Context;)V
    .locals 4
    .param p0, "owner_id"    # J
    .param p2, "doc_id"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 654
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v0    # "link":Ljava/lang/String;
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 659
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyGroupLink(JLandroid/content/Context;)V
    .locals 4
    .param p0, "group_id"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 601
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "club"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v0    # "link":Ljava/lang/String;
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 606
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyGroupTopicLink(JJLandroid/content/Context;)V
    .locals 4
    .param p0, "topic_id"    # J
    .param p2, "group_id"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "topic-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "link":Ljava/lang/String;
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 617
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyPhotoAlbumLink(JJLandroid/content/Context;)V
    .locals 4
    .param p0, "album_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 624
    long-to-int v2, p0

    sparse-switch v2, :sswitch_data_0

    .line 641
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "link":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p4}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    .line 650
    .end local v0    # "link":Ljava/lang/String;
    :goto_1
    return-void

    .line 626
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .restart local v0    # "link":Ljava/lang/String;
    goto :goto_0

    .line 629
    .end local v0    # "link":Ljava/lang/String;
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .restart local v0    # "link":Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0    # "link":Ljava/lang/String;
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .restart local v0    # "link":Ljava/lang/String;
    goto :goto_0

    .line 635
    .end local v0    # "link":Ljava/lang/String;
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "photos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .restart local v0    # "link":Ljava/lang/String;
    goto :goto_0

    .line 638
    .end local v0    # "link":Ljava/lang/String;
    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 639
    .restart local v0    # "link":Ljava/lang/String;
    goto/16 :goto_0

    .line 646
    .end local v0    # "link":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 647
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 648
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 624
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_3
        -0xf -> :sswitch_2
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_0
        -0x1 -> :sswitch_4
    .end sparse-switch
.end method

.method public static copyPhotoLink(Lcom/perm/kate/api/Photo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "photo"    # Lcom/perm/kate/api/Photo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid_tag"    # Ljava/lang/String;

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 555
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "link":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_1
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    .end local v0    # "link":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 561
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 562
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyPostLink(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "owner_id"    # Ljava/lang/String;
    .param p1, "post_id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 579
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v0    # "link":Ljava/lang/String;
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 584
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 590
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0    # "link":Ljava/lang/String;
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 595
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyText(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    :try_start_0
    const-string v3, "clipboard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 540
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0704a5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x37

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x36

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    .end local v1    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v2

    .line 545
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 546
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyVideoLink(JJLandroid/content/Context;)V
    .locals 4
    .param p0, "owner_id"    # J
    .param p2, "video_id"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v0    # "link":Ljava/lang/String;
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 573
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "wall_owner_id"    # Ljava/lang/String;
    .param p2, "post_id"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1002
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-static {p0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f07007e

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f070176

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1007
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v0, Lcom/perm/kate/Helper$7;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/Helper$7;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 1024
    .local v7, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 1025
    .local v6, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1026
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1027
    return-void
.end method

.method public static createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 978
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f07007e

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 981
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/perm/kate/Helper$6;

    invoke-direct {v6, v1, p0, p1}, Lcom/perm/kate/Helper$6;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 990
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 991
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 992
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v3    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v2

    .line 994
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 995
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static createMainIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 970
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 971
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    return-object v0
.end method

.method protected static displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v5, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v2, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .local v6, "url":Ljava/lang/String;
    sget-object v9, Lcom/perm/kate/NewsCursorAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 302
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "url":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v4, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 313
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 314
    :cond_2
    new-instance v8, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v8, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0702bd

    .line 315
    invoke-virtual {v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    .line 316
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v10, Lcom/perm/kate/Helper$1;

    invoke-direct {v10, v2, p1}, Lcom/perm/kate/Helper$1;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 322
    .local v7, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 323
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v11}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 324
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 325
    return-void
.end method

.method public static empty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 919
    if-nez p0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v0

    .line 921
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static extractLocationFromAttachments(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 860
    if-eqz p0, :cond_1

    .line 861
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    .local v0, "attachment":Ljava/lang/String;
    const-string v2, "location:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 864
    invoke-static {v0}, Lcom/perm/kate/Helper;->parseLocationString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 867
    .end local v0    # "attachment":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method public static extractPattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 292
    :cond_0
    return-object v1

    .line 289
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extract_vk_links"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    sget-object v2, Lcom/perm/utils/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-static {p0, v2}, Lcom/perm/kate/Helper;->extractPattern(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/util/ArrayList;

    move-result-object v0

    .line 277
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 278
    sget-object v2, Lcom/perm/kate/NewsCursorAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 279
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method

.method public static footerAddButtonEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1038
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1039
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "key_secret2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getAge(III)I
    .locals 8
    .param p0, "_year"    # I
    .param p1, "_month"    # I
    .param p2, "_day"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 1203
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1206
    .local v1, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 1207
    .local v4, "y":I
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1208
    .local v3, "m":I
    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 1209
    .local v2, "d":I
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 1210
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 1211
    .local v0, "a":I
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1212
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 1213
    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1214
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1216
    :cond_1
    if-gez v0, :cond_2

    .line 1217
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Age < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1218
    :cond_2
    return v0
.end method

.method public static getAgo(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "long_date"    # J

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAgo(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 7
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "long_date"    # J
    .param p3, "is_long_date"    # Z

    .prologue
    const-wide/16 v4, 0x3e8

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 179
    .local v0, "date":Ljava/util/Date;
    mul-long v2, p1, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/perm/kate/Helper;->sdf_time:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 181
    :cond_0
    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->thisYear(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    if-eqz p3, :cond_1

    sget-object v1, Lcom/perm/kate/Helper;->sdf_date_time_no_year:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/perm/kate/Helper;->sdf_date_no_year:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 183
    :cond_2
    if-eqz p3, :cond_3

    sget-object v1, Lcom/perm/kate/Helper;->sdf_date_time:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/perm/kate/Helper;->sdf_date:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getAppBackground(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 1351
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1352
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "key_use_background"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1353
    .local v4, "use_chat_background":Z
    if-eqz v4, :cond_0

    .line 1354
    const-string v6, "key_background"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1355
    .local v1, "chat_background":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1356
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1357
    .local v2, "chat_bg":Landroid/net/Uri;
    invoke-static {v2}, Lcom/perm/kate/AppBackground;->get(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1358
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1359
    new-instance v5, Lcom/perm/utils/ScaleBitmapDrawable;

    invoke-direct {v5, v0}, Lcom/perm/utils/ScaleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1362
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "chat_background":Ljava/lang/String;
    .end local v2    # "chat_bg":Landroid/net/Uri;
    :cond_0
    return-object v5
.end method

.method public static getAvaStubId()I
    .locals 1

    .prologue
    .line 1366
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020145

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v0

    goto :goto_0
.end method

.method public static getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 755
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 757
    :cond_0
    return-object p0
.end method

.method public static getDIP(D)I
    .locals 2
    .param p0, "p"    # D

    .prologue
    .line 741
    sget v0, Lcom/perm/kate/Helper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 742
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/perm/kate/Helper;->scale:F

    .line 744
    :cond_0
    sget v0, Lcom/perm/kate/Helper;->scale:F

    float-to-double v0, v0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 6
    .param p0, "long_date"    # J

    .prologue
    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 170
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lcom/perm/kate/Helper;->sdf_date_time:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDocumentDisplaySize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const-wide/16 v2, 0x400

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 962
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    :goto_0
    return-object v0

    .line 964
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 966
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/Helper;->nf:Ljava/text/NumberFormat;

    long-to-double v2, p0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDurationTextBySeconds(J)Ljava/lang/String;
    .locals 6
    .param p0, "duration"    # J

    .prologue
    .line 214
    long-to-int v4, p0

    div-int/lit8 v0, v4, 0x3c

    .line 215
    .local v0, "minits":I
    mul-int/lit8 v4, v0, 0x3c

    int-to-long v4, v4

    sub-long v4, p0, v4

    long-to-int v1, v4

    .line 216
    .local v1, "sec":I
    const/16 v4, 0x9

    if-le v1, v4, :cond_0

    const-string v2, ":"

    .line 217
    .local v2, "separator":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "text_duration":Ljava/lang/String;
    return-object v3

    .line 216
    .end local v2    # "separator":Ljava/lang/String;
    .end local v3    # "text_duration":Ljava/lang/String;
    :cond_0
    const-string v2, ":0"

    goto :goto_0
.end method

.method public static getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "long_date"    # J
    .param p3, "is_male"    # Z
    .param p4, "mobile"    # Z

    .prologue
    const-wide/16 v6, 0x3e8

    .line 187
    new-instance v0, Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 188
    .local v0, "date":Ljava/util/Date;
    const-string v1, ""

    .line 189
    .local v1, "date_str":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07028e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/perm/kate/Helper;->sdf_time:Ljava/text/DateFormat;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4

    const v3, 0x7f0701c3

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "text":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0700b5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_0
    return-object v2

    .line 191
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    const-wide/32 v4, 0x15180

    add-long/2addr v4, p1

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07051e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/perm/kate/Helper;->sdf_time:Ljava/text/DateFormat;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->thisYear(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    sget-object v3, Lcom/perm/kate/Helper;->sdf_date_time_no_year:Ljava/text/DateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 196
    :cond_3
    sget-object v3, Lcom/perm/kate/Helper;->sdf_date_time:Ljava/text/DateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 197
    :cond_4
    const v3, 0x7f0701c2

    goto :goto_1
.end method

.method public static getLoginActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 952
    const-class v0, Lcom/perm/kate/LoginActivity2;

    return-object v0
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p0, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v1, "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 852
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    iget-wide v4, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    iget-wide v4, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 854
    iget-wide v4, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    .end local v0    # "comment":Lcom/perm/kate/api/Comment;
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 857
    return-void
.end method

.method private static getPhotoById(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "photo"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    new-instance v0, Lcom/perm/kate/Helper$4;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/perm/kate/Helper$4;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 501
    .local v0, "callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/perm/kate/Helper;->showProgressBar(ZLandroid/content/Context;)V

    .line 502
    new-instance v1, Lcom/perm/kate/Helper$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/perm/kate/Helper$5;-><init>(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V

    .line 507
    invoke-virtual {v1}, Lcom/perm/kate/Helper$5;->start()V

    .line 508
    return-void
.end method

.method private static getPim()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 242
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_0

    .line 248
    .local v0, "th":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 244
    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_0
    const-wide v2, 0x15f3b05feL

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getScale()F
    .locals 2

    .prologue
    .line 748
    sget v0, Lcom/perm/kate/Helper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 749
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/perm/kate/Helper;->scale:F

    .line 751
    :cond_0
    sget v0, Lcom/perm/kate/Helper;->scale:F

    return v0
.end method

.method static getScreenSize(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0xf

    .line 708
    :goto_0
    return v1

    .line 704
    :catch_0
    move-exception v0

    .line 706
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 707
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 708
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getSigHash()Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 122
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 123
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 124
    .local v2, "sigs":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 130
    .end local v2    # "sigs":[Landroid/content/pm/Signature;
    :goto_0
    return-object v3

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 130
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSquareStubId()I
    .locals 1

    .prologue
    .line 1372
    const v0, 0x7f02022e

    return v0
.end method

.method public static getStringAge(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "birthdate"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1222
    const-string v4, ""

    .line 1224
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    const-string v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "b":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 1226
    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1227
    .local v1, "day":I
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1228
    .local v3, "month":I
    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1229
    .local v6, "year":I
    invoke-static {v6, v3, v1}, Lcom/perm/kate/Helper;->getAge(III)I

    move-result v7

    .line 1231
    .local v7, "years":I
    const/16 v8, 0xb

    if-eq v7, v8, :cond_0

    const/16 v8, 0xc

    if-eq v7, v8, :cond_0

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    const/16 v8, 0xe

    if-ne v7, v8, :cond_2

    .line 1232
    :cond_0
    const v2, 0x7f0702aa

    .line 1248
    .local v2, "label_res_int":I
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1254
    .end local v0    # "b":[Ljava/lang/String;
    .end local v1    # "day":I
    .end local v2    # "label_res_int":I
    .end local v3    # "month":I
    .end local v6    # "year":I
    .end local v7    # "years":I
    :cond_1
    :goto_1
    return-object v4

    .line 1234
    .restart local v0    # "b":[Ljava/lang/String;
    .restart local v1    # "day":I
    .restart local v3    # "month":I
    .restart local v6    # "year":I
    .restart local v7    # "years":I
    :cond_2
    rem-int/lit8 v8, v7, 0xa
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v8, :pswitch_data_0

    .line 1244
    const v2, 0x7f0702aa

    .restart local v2    # "label_res_int":I
    goto :goto_0

    .line 1236
    .end local v2    # "label_res_int":I
    :pswitch_0
    const v2, 0x7f0702ac

    .line 1237
    .restart local v2    # "label_res_int":I
    goto :goto_0

    .line 1241
    .end local v2    # "label_res_int":I
    :pswitch_1
    const v2, 0x7f0702ab

    .line 1242
    .restart local v2    # "label_res_int":I
    goto :goto_0

    .line 1250
    .end local v0    # "b":[Ljava/lang/String;
    .end local v1    # "day":I
    .end local v2    # "label_res_int":I
    .end local v3    # "month":I
    .end local v6    # "year":I
    .end local v7    # "years":I
    :catch_0
    move-exception v5

    .line 1251
    .local v5, "th":Ljava/lang/Throwable;
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1252
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getStringDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "datetime"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1258
    const-string v3, ""

    .line 1260
    .local v3, "time":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1261
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p0, p1}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1262
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "d MMMM yyyy"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v4, "time_formatter":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f070135

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1269
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "time_formatter":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 1265
    :catch_0
    move-exception v2

    .line 1266
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1267
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserIdFromLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
    .locals 6
    .param p0, "user_link"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/perm/kate/session/Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1394
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v0

    .line 1395
    .local v0, "link":Lcom/perm/kate/links/VkLink;
    if-nez v0, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    iget-object v3, v0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v4, Lcom/perm/kate/links/VkLinkType;->PROFILE:Lcom/perm/kate/links/VkLinkType;

    if-ne v3, v4, :cond_2

    .line 1399
    if-eqz p1, :cond_0

    .line 1401
    iget-object v3, v0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/perm/kate/session/Callback;->ready(Ljava/lang/Object;)V

    goto :goto_0

    .line 1402
    :cond_2
    iget-object v3, v0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v4, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    if-ne v3, v4, :cond_0

    .line 1403
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUserByDomain(Ljava/lang/String;)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 1404
    .local v2, "u":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 1405
    iget-wide v4, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/perm/kate/session/Callback;->ready(Ljava/lang/Object;)V

    goto :goto_0

    .line 1407
    :cond_3
    new-instance v1, Lcom/perm/kate/Helper$10;

    move-object v3, p2

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v1, v3, p2, p1}, Lcom/perm/kate/Helper$10;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/perm/kate/session/Callback;)V

    .line 1423
    .local v1, "profiles_callback":Lcom/perm/kate/session/Callback;
    const/4 v3, 0x1

    invoke-static {v3, p2}, Lcom/perm/kate/Helper;->showProgressBar(ZLandroid/content/Context;)V

    .line 1424
    new-instance v3, Lcom/perm/kate/Helper$11;

    invoke-direct {v3, v0, v1, p2}, Lcom/perm/kate/Helper$11;-><init>(Lcom/perm/kate/links/VkLink;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V

    .line 1431
    invoke-virtual {v3}, Lcom/perm/kate/Helper$11;->start()V

    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 689
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-object v1

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 693
    const-string v1, ""

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, "v":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return v0

    .line 681
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized installation_id()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1556
    const-class v3, Lcom/perm/kate/Helper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v4, "PREF_UNIQUE_ID"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1557
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v2, "PREF_UNIQUE_ID"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, "uniqueID":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1559
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1560
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "PREF_UNIQUE_ID"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    :cond_0
    monitor-exit v3

    return-object v1

    .line 1556
    .end local v1    # "uniqueID":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isGoogleMapsSupported()Z
    .locals 2

    .prologue
    .line 932
    :try_start_0
    const-string v1, "com.google.android.maps.MapActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    const/4 v1, 0x1

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 934
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 935
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isHoneycomb()Z
    .locals 2

    .prologue
    .line 697
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLink(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1381
    invoke-static {p0, v2}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1382
    .local v1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1384
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 1387
    .end local v0    # "link":Ljava/lang/String;
    .end local v1    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return v2
.end method

.method public static isNoiseException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 268
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/perm/utils/WrongResponseCodeException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 927
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhotoLink(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1456
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1457
    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1458
    :cond_0
    const/4 v0, 0x1

    .line 1459
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 909
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 910
    .local v0, "context":Landroid/content/Context;
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 911
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    move v2, v3

    .line 915
    :goto_0
    return v2

    .line 913
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v4, :cond_1

    move v2, v3

    .line 914
    goto :goto_0

    :cond_1
    move v2, v4

    .line 915
    goto :goto_0
.end method

.method public static limitFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 942
    const/16 v0, 0x7d

    .line 943
    .local v0, "max_length":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 944
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 946
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    .line 947
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 948
    return-object p0
.end method

.method public static loadImageFromWeb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "imageUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 111
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 112
    new-instance v3, Lcom/perm/kate/Helper$FlushedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/perm/kate/Helper$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 116
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "imageUrl":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    return-object v0
.end method

.method static makeUriList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    .local p0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 1298
    .local v1, "uri1":Landroid/os/Parcelable;
    check-cast v1, Landroid/net/Uri;

    .end local v1    # "uri1":Landroid/os/Parcelable;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1299
    :cond_0
    return-object v0
.end method

.method public static onDial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone_number"    # Ljava/lang/String;

    .prologue
    .line 1095
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1096
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v1

    .line 1098
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1099
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static onEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1105
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1117
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07031b

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1113
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 1114
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1115
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static openComment(Lcom/perm/kate/links/VkLink;Landroid/content/Context;)V
    .locals 4
    .param p0, "link"    # Lcom/perm/kate/links/VkLink;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    iget-object v2, p0, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    sget-object v3, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    if-ne v2, v3, :cond_0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic-"

    invoke-static {v3}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->topic_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?post="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#post"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "url":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/WebActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.perm.kate.title"

    const v3, 0x7f07044b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v2, "com.perm.kate.url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 428
    return-void

    .line 423
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wall"

    invoke-static {v3}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?reply="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#reply"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public static openMap(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6
    .param p0, "lat"    # Ljava/lang/String;
    .param p1, "lon"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 881
    :try_start_0
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 883
    .local v1, "intent":Landroid/content/Intent;
    const-class v3, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 884
    const-string v3, "com.perm.kate.only_show"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 885
    const-string v3, "com.perm.kate.latitude"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const-string v3, "com.perm.kate.longitude"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 897
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 889
    :cond_0
    const-string v3, "geo:0,0?q=%s,%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 891
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 893
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 895
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static openMarketItem(JJLandroid/content/Context;)V
    .locals 2
    .param p0, "item_id"    # J
    .param p2, "owner_id"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MarketItemActivity;

    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 449
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 450
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 451
    invoke-virtual {p4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method public static openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preview"    # Ljava/lang/String;

    .prologue
    .line 1273
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/perm/kate/Helper;->openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    return-void
.end method

.method public static openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "preview"    # Ljava/lang/String;

    .prologue
    .line 1277
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1278
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 1280
    .local v1, "p":Lcom/perm/kate/api/Photo;
    iput-object p3, v1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 1281
    iput-object p0, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 1282
    iput-object p2, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 1283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1284
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    const-string v3, "com.perm.kate.photos"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1286
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1287
    return-void
.end method

.method private static openPhotoAlbums(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner_id"    # J

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 433
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 435
    return-void
.end method

.method public static openUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 343
    :cond_0
    return-void
.end method

.method public static openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    :try_start_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 331
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 347
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/links/VkLinkParser;->parse(Ljava/lang/String;)Lcom/perm/kate/links/VkLink;

    move-result-object v9

    .line 348
    .local v9, "link":Lcom/perm/kate/links/VkLink;
    if-nez v9, :cond_0

    move v2, v12

    .line 412
    .end local v9    # "link":Lcom/perm/kate/links/VkLink;
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return v2

    .line 350
    .restart local v9    # "link":Lcom/perm/kate/links/VkLink;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    sget-object v2, Lcom/perm/kate/Helper$15;->$SwitchMap$com$perm$kate$links$VkLinkType:[I

    iget-object v3, v9, Lcom/perm/kate/links/VkLink;->type:Lcom/perm/kate/links/VkLinkType;

    invoke-virtual {v3}, Lcom/perm/kate/links/VkLinkType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v2, v12

    .line 407
    goto :goto_0

    .line 352
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Lcom/perm/kate/Helper;->showWebActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move v2, v13

    .line 353
    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->photo:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/perm/kate/Helper;->getPhotoById(Ljava/lang/String;Landroid/content/Context;)V

    move v2, v13

    .line 356
    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    iget-object v3, v9, Lcom/perm/kate/links/VkLink;->album_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5, p1}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    move v2, v13

    .line 359
    goto :goto_0

    .line 361
    :pswitch_3
    const/4 v2, 0x0

    iget-object v3, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/Helper;->showActivity(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    move v2, v13

    .line 362
    goto :goto_0

    .line 364
    :pswitch_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/Helper;->showActivity(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    move v2, v13

    .line 365
    goto :goto_0

    .line 367
    :pswitch_5
    const/4 v2, 0x4

    iget-object v3, v9, Lcom/perm/kate/links/VkLink;->topic_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v9, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    move v2, v13

    .line 368
    goto :goto_0

    .line 370
    :pswitch_6
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v9, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;Landroid/content/Context;)V

    move v2, v13

    .line 371
    goto :goto_0

    .line 373
    :pswitch_7
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, v9, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserByDomain(Ljava/lang/String;)Lcom/perm/kate/api/User;

    move-result-object v11

    .line 374
    .local v11, "u":Lcom/perm/kate/api/User;
    if-eqz v11, :cond_1

    .line 375
    const/4 v2, 0x0

    iget-wide v4, v11, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v11, Lcom/perm/kate/api/User;->uid:J

    const/4 v6, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/Helper;->showActivity(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V

    :goto_1
    move v2, v13

    .line 378
    goto/16 :goto_0

    .line 377
    :cond_1
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/perm/kate/Helper;->resolveScreenName(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    .end local v9    # "link":Lcom/perm/kate/links/VkLink;
    .end local v11    # "u":Lcom/perm/kate/api/User;
    .end local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v10

    .line 410
    .local v10, "th":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 411
    invoke-static {v10, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    move v2, v12

    .line 412
    goto/16 :goto_0

    .line 380
    .end local v10    # "th":Ljava/lang/Throwable;
    .restart local v9    # "link":Lcom/perm/kate/links/VkLink;
    .restart local p1    # "context":Landroid/content/Context;
    :pswitch_8
    :try_start_1
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->link:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    move v2, v13

    .line 381
    goto/16 :goto_0

    .line 383
    :pswitch_9
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    move v2, v13

    .line 384
    goto/16 :goto_0

    .line 386
    :pswitch_a
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/perm/kate/Helper;->openPhotoAlbums(Landroid/content/Context;J)V

    move v2, v13

    .line 387
    goto/16 :goto_0

    .line 389
    :pswitch_b
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/perm/kate/ProfileFragment;->ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V

    move v2, v13

    .line 390
    goto/16 :goto_0

    .line 392
    .restart local p1    # "context":Landroid/content/Context;
    :pswitch_c
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/perm/kate/DialogsActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v13

    .line 393
    goto/16 :goto_0

    .line 397
    :pswitch_d
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, v9, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p1

    check-cast v0, Lcom/perm/kate/BaseActivity;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    move v2, v13

    .line 398
    goto/16 :goto_0

    .line 400
    :pswitch_e
    iget-object v2, v9, Lcom/perm/kate/links/VkLink;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, v9, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Lcom/perm/kate/Helper;->openMarketItem(JJLandroid/content/Context;)V

    move v2, v13

    .line 401
    goto/16 :goto_0

    .line 404
    :pswitch_f
    invoke-static {v9, p1}, Lcom/perm/kate/Helper;->openComment(Lcom/perm/kate/links/VkLink;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v13

    .line 405
    goto/16 :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static parseLocationString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "attachment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 872
    const-string v1, "location:"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 873
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "ll":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 876
    .end local v0    # "ll":[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "ll":[Ljava/lang/String;
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .end local v0    # "ll":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    goto :goto_0
.end method

.method private static processInstagramLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1489
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1490
    .local v0, "context":Landroid/app/Activity;
    :goto_0
    new-instance v1, Lcom/perm/kate/Helper$13;

    invoke-direct {v1, p1, p2, v0}, Lcom/perm/kate/Helper$13;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    .line 1502
    .local v1, "instagramCallback":Lcom/perm/utils/InstagramHelper$Callback;
    new-instance v2, Lcom/perm/utils/InstagramHelper;

    invoke-direct {v2, v1}, Lcom/perm/utils/InstagramHelper;-><init>(Lcom/perm/utils/InstagramHelper$Callback;)V

    invoke-virtual {v2, p0}, Lcom/perm/utils/InstagramHelper;->getPhotoUrl(Ljava/lang/String;)V

    .line 1503
    return-void

    .end local v0    # "context":Landroid/app/Activity;
    .end local v1    # "instagramCallback":Lcom/perm/utils/InstagramHelper$Callback;
    :cond_0
    move-object v0, p1

    .line 1489
    goto :goto_0
.end method

.method private static processPhotoLink(Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p0, "photo_url"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1506
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1507
    .local v0, "context":Landroid/app/Activity;
    :goto_0
    new-instance v1, Lcom/perm/kate/Helper$14;

    invoke-direct {v1, v0, p1, p2}, Lcom/perm/kate/Helper$14;-><init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1527
    .local v1, "photoSaverCallback":Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;
    instance-of v2, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1528
    check-cast v2, Lcom/perm/kate/BaseActivity;

    const v3, 0x7f070096

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    move-object v2, v0

    .line 1529
    check-cast v2, Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1532
    :cond_0
    invoke-static {v0, p0, v1}, Lcom/perm/kate/PhotoSaver;->saveTempPhoto(Landroid/content/Context;Ljava/lang/String;Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;)V

    .line 1533
    return-void

    .end local v0    # "context":Landroid/app/Activity;
    .end local v1    # "photoSaverCallback":Lcom/perm/kate/PhotoSaver$PhotoSaverCallback;
    :cond_1
    move-object v0, p1

    .line 1506
    goto :goto_0
.end method

.method public static reportError(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p0, "th"    # Ljava/lang/Throwable;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 1377
    return-void
.end method

.method public static reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "th"    # Ljava/lang/Throwable;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 229
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/perm/kate/Helper;->shouldDrop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/perm/kate/Helper;->getPim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    :cond_1
    invoke-static {p0, p1}, Lcom/dynamixsoftware/ErrorAgent;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "th1":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .param p0, "event"    # Ljava/lang/String;
    .param p2, "percent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1570
    .local v2, "time":J
    const-wide/16 v4, 0x64

    rem-long v0, v2, v4

    .line 1571
    .local v0, "random":J
    int-to-long v4, p2

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 1578
    :goto_0
    return-void

    .line 1574
    :cond_0
    if-eqz p1, :cond_1

    .line 1575
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1577
    :cond_1
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static repostToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p0, "post_owner_id"    # Ljava/lang/String;
    .param p1, "post_id"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1149
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1150
    .local v2, "repost_post_id":J
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1151
    .local v4, "repost_post_owner_id":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1152
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1153
    const-string v1, "com.perm.kate.select_group"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    const-string v1, "repost_post_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1155
    const-string v1, "repost_post_owner_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1156
    const/16 v1, 0xb

    invoke-static {p2, p3, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 1157
    return-void
.end method

.method private static resolveScreenName(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "domain_name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 457
    check-cast v0, Landroid/app/Activity;

    .line 458
    :cond_0
    new-instance v1, Lcom/perm/kate/Helper$2;

    invoke-direct {v1, v0, p1}, Lcom/perm/kate/Helper$2;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 474
    .local v1, "callback":Lcom/perm/kate/session/Callback;
    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/perm/kate/Helper;->showProgressBar(ZLandroid/content/Context;)V

    .line 475
    new-instance v2, Lcom/perm/kate/Helper$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/perm/kate/Helper$3;-><init>(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V

    .line 480
    invoke-virtual {v2}, Lcom/perm/kate/Helper$3;->start()V

    .line 481
    return-void
.end method

.method public static sendToFriend(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "post_owner_id"    # Ljava/lang/String;
    .param p1, "post_id"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "wall_attachment":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1141
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1142
    const-string v2, "com.perm.kate.only_members"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    const-string v2, "com.perm.kate.new_message"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1144
    const-string v2, "com.perm.kate.wall_attachment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1146
    return-void
.end method

.method public static setFooterAddButtonEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 1043
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_secret2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    return-void
.end method

.method public static setTextIsSelectableWithReflection(Landroid/widget/TextView;Z)V
    .locals 6
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "b"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1314
    new-array v3, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    .line 1316
    .local v3, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-class v4, Landroid/widget/TextView;

    const-string v5, "setTextIsSelectable"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1317
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 1318
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1319
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1331
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1320
    :catch_0
    move-exception v1

    .line 1321
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 1322
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 1324
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1326
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1327
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1328
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static share(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "share_text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1067
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1071
    return-void
.end method

.method public static sharePhoto(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "owner_id"    # Ljava/lang/String;
    .param p1, "photo_id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/perm/kate/Helper;->share(Ljava/lang/String;Landroid/content/Context;)V

    .line 1081
    return-void
.end method

.method public static sharePost(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "owner_id"    # Ljava/lang/String;
    .param p1, "post_id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "link":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/perm/kate/Helper;->share(Ljava/lang/String;Landroid/content/Context;)V

    .line 1076
    return-void
.end method

.method private static shouldDrop()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 254
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_1

    .line 263
    .local v4, "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 257
    .end local v4    # "version":Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v6}, Lcom/perm/kate/Helper;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4    # "version":Ljava/lang/String;
    const-string v6, "beta"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "test"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 261
    .local v2, "time":J
    const-wide/16 v6, 0x64

    rem-long v0, v2, v6

    .line 263
    .local v0, "random":J
    const-wide/16 v6, 0xa

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static showActivity(ILjava/lang/String;JLjava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "str_id"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    .local p4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 512
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p0, :pswitch_data_0

    .line 529
    :goto_0
    return-void

    .line 514
    :pswitch_0
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 515
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    :goto_1
    invoke-virtual {p5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 518
    :pswitch_1
    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 519
    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 522
    :pswitch_2
    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 523
    const-string v1, "com.perm.kate.photos"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showAllPhotos(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "owner_id"    # Ljava/lang/String;

    .prologue
    .line 1030
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1031
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1032
    const-string v1, "com.perm.kate.aid"

    const-wide/16 v2, -0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1033
    const-string v1, "com.perm.kate.uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1035
    return-void
.end method

.method public static showCreatePhotoComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "photo_id"    # Ljava/lang/String;
    .param p1, "photo_owner_id"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 820
    if-nez p0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 822
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 823
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 824
    const-string v1, "com.perm.kate.pid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v1, "com.perm.kate.comment_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showCreateVideoComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "video_id"    # Ljava/lang/String;
    .param p1, "video_owner_id"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 831
    if-nez p0, :cond_0

    .line 839
    :goto_0
    return-void

    .line 833
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 834
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 835
    const-string v1, "com.perm.kate.pid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string v1, "com.perm.kate.comment_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showGroup(JLandroid/app/Activity;)V
    .locals 2
    .param p0, "gid"    # J
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 781
    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 782
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 783
    return-void
.end method

.method public static showGroupBlockActivity(JJLandroid/app/Activity;)V
    .locals 4
    .param p0, "group_id"    # J
    .param p2, "user_id"    # J
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1084
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 1085
    const-wide/16 v2, -0x1

    mul-long/2addr p0, v2

    .line 1086
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1087
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1088
    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1089
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1090
    invoke-virtual {p4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1091
    return-void
.end method

.method public static showMessages(Ljava/lang/Long;Landroid/content/Context;)V
    .locals 2
    .param p0, "user_id"    # Ljava/lang/Long;
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 762
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 763
    const-string v1, "com.perm.kate.message_uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 764
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 765
    return-void
.end method

.method public static showPhotoLinkDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v7, 0x0

    .line 1439
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1440
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f03001d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1441
    .local v1, "captcha_view":Landroid/view/View;
    const v4, 0x7f0e006b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1442
    .local v2, "et_message":Landroid/widget/EditText;
    const-string v4, "http://"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1443
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    :goto_1
    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1444
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0702bc

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070334

    new-instance v6, Lcom/perm/kate/Helper$12;

    invoke-direct {v6, v2, p0, p1}, Lcom/perm/kate/Helper$12;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    .line 1445
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07015d

    .line 1450
    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1452
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1453
    return-void

    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "captcha_view":Landroid/view/View;
    .end local v2    # "et_message":Landroid/widget/EditText;
    .end local v3    # "factory":Landroid/view/LayoutInflater;
    :cond_0
    move-object v4, p0

    .line 1439
    goto :goto_0

    .restart local v1    # "captcha_view":Landroid/view/View;
    .restart local v2    # "et_message":Landroid/widget/EditText;
    .restart local v3    # "factory":Landroid/view/LayoutInflater;
    :cond_1
    move-object v4, p0

    .line 1443
    goto :goto_1
.end method

.method private static showProgressBar(ZLandroid/content/Context;)V
    .locals 1
    .param p0, "show"    # Z
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 532
    instance-of v0, p1, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    .line 533
    check-cast p1, Lcom/perm/kate/BaseActivity;

    .end local p1    # "activity":Landroid/content/Context;
    invoke-virtual {p1, p0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 534
    :cond_0
    return-void
.end method

.method public static showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "owner_id"    # J
    .param p3, "new_status"    # Ljava/lang/String;
    .param p4, "from_group"    # Z

    .prologue
    .line 1120
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070451

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f07051d

    new-instance v1, Lcom/perm/kate/Helper$8;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/Helper$8;-><init>(JLjava/lang/String;ZLandroid/app/Activity;)V

    .line 1122
    invoke-virtual {v8, v9, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 1132
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1133
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 1134
    .local v7, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1135
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1136
    return-void
.end method

.method public static showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroid/support/v4/app/Fragment;)V
    .locals 11
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p1, "post_id"    # Ljava/lang/String;
    .param p2, "post_owner_id"    # Ljava/lang/String;
    .param p3, "can_publish_like"    # Z
    .param p4, "can_publish_to_group"    # Z
    .param p5, "repostCallback"    # Lcom/perm/utils/RepostHelper$RepostCallback;
    .param p6, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    if-eqz p3, :cond_0

    .line 1168
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f070396

    const/16 v3, 0x3f2

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0701df

    const/16 v3, 0x3f6

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    if-eqz p4, :cond_1

    .line 1171
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f070397

    const/16 v3, 0x3f4

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f07025a

    const/16 v3, 0x3f8

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    new-instance v9, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1174
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v0, Lcom/perm/kate/Helper$9;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/Helper$9;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v10, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    .line 1197
    .local v8, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 1198
    .local v7, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1199
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1200
    return-void
.end method

.method public static showWallPost(Ljava/lang/Long;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 8
    .param p0, "post_id"    # Ljava/lang/Long;
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1047
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;J)V

    .line 1048
    return-void
.end method

.method public static showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V
    .locals 8
    .param p0, "post_id"    # Ljava/lang/Long;
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "is_suggested"    # Z
    .param p3, "dont_refresh"    # Z
    .param p4, "activity"    # Landroid/content/Context;

    .prologue
    .line 1051
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;J)V

    .line 1052
    return-void
.end method

.method public static showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;J)V
    .locals 3
    .param p0, "post_id"    # Ljava/lang/Long;
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "is_suggested"    # Z
    .param p3, "dont_refresh"    # Z
    .param p4, "activity"    # Landroid/content/Context;
    .param p5, "_id"    # J

    .prologue
    .line 1055
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1056
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1057
    const-string v1, "post_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1058
    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1059
    const-string v1, "dont_refresh"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1060
    const-string v1, "is_suggested"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1061
    const-string v1, "com.perm.kate._id"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1062
    invoke-virtual {p4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1063
    return-void
.end method

.method static showWebActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/WebActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 440
    const-string v1, "com.perm.kate.url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "com.perm.kate.title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 444
    return-void
.end method

.method static thisYear(J)Z
    .locals 8
    .param p0, "date"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    sget-wide v4, Lcom/perm/kate/Helper;->year_start_long:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 207
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 208
    .local v0, "year":I
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v0, v2, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/perm/kate/Helper;->year_start_long:J

    .line 210
    .end local v0    # "year":I
    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p0

    sget-wide v6, Lcom/perm/kate/Helper;->year_start_long:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method
