.class Lcom/perm/utils/RegistrationDate$1;
.super Ljava/lang/Thread;
.source "RegistrationDate.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$user_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/perm/utils/RegistrationDate$1;->val$user_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 32
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://vk.com/foaf.php?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/utils/RegistrationDate$1;->val$user_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/perm/utils/RegistrationDate;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void

    .line 38
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/perm/utils/RegistrationDate;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 45
    sget-object v2, Lcom/perm/kate/Helper;->sdf:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v2}, Lcom/perm/utils/RegistrationDate;->access$200(Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/perm/utils/RegistrationDate$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 53
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
