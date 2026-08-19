.class Lcom/perm/kate/session/Session$35;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:J

.field final synthetic val$end_time:Ljava/lang/Long;

.field final synthetic val$filters:Ljava/lang/String;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$max_photos:Ljava/lang/Integer;

.field final synthetic val$source_ids:Ljava/lang/String;

.field final synthetic val$start_time:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/perm/kate/session/Session$35;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$35;->val$start_time:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$35;->val$count:J

    iput-object p7, p0, Lcom/perm/kate/session/Session$35;->val$end_time:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$35;->val$from:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$35;->val$source_ids:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$35;->val$filters:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/session/Session$35;->val$max_photos:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 576
    sget-object v0, Lcom/perm/kate/session/Session;->device_info:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 577
    invoke-static {}, Lcom/perm/kate/Helper;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/session/Session;->device_info:Ljava/lang/String;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/session/Session$35;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$35;->val$start_time:Ljava/lang/Long;

    iget-wide v3, p0, Lcom/perm/kate/session/Session$35;->val$count:J

    iget-object v5, p0, Lcom/perm/kate/session/Session$35;->val$end_time:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$35;->val$from:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$35;->val$source_ids:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$35;->val$filters:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/session/Session$35;->val$max_photos:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v11, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    sget-object v12, Lcom/perm/kate/session/Session;->device_info:Ljava/lang/String;

    invoke-virtual/range {v1 .. v12}, Lcom/perm/kate/api/Api;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
