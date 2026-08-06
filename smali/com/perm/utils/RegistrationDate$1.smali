.class final Lcom/perm/utils/RegistrationDate$1;
.super Ljava/lang/Thread;
.source "RegistrationDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/RegistrationDate;->getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$user_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/perm/utils/RegistrationDate$1;->val$user_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 31
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://vk.com/foaf.php?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/utils/RegistrationDate$1;->val$user_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/perm/utils/RegistrationDate;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "resp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    iget-object v6, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v6, v8}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 52
    .end local v3    # "resp":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 37
    .restart local v3    # "resp":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/perm/utils/RegistrationDate;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "date_parsed":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    iget-object v6, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v6, v8}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 41
    :cond_1
    :try_start_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 43
    .local v0, "date":Ljava/util/Date;
    sget-object v6, Lcom/perm/kate/Helper;->sdf:Ljava/text/DateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "date_formatted":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v6}, Lcom/perm/utils/RegistrationDate;->access$200(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    iget-object v6, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v6, v8}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 46
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "date_formatted":Ljava/lang/String;
    .end local v2    # "date_parsed":Ljava/lang/String;
    .end local v3    # "resp":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 47
    .local v4, "th":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    iget-object v6, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v6, v8}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    goto :goto_0

    .end local v4    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v7, v8}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    throw v6
.end method
