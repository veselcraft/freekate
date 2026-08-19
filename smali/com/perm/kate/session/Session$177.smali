.class Lcom/perm/kate/session/Session$177;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:J

.field final synthetic val$end_time:Ljava/lang/Long;

.field final synthetic val$extended:I

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$q:Ljava/lang/String;

.field final synthetic val$start_time:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDD)V
    .locals 0

    .line 1914
    iput-object p1, p0, Lcom/perm/kate/session/Session$177;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$177;->val$q:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$177;->val$from:Ljava/lang/String;

    iput p6, p0, Lcom/perm/kate/session/Session$177;->val$extended:I

    iput-object p7, p0, Lcom/perm/kate/session/Session$177;->val$start_time:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$177;->val$end_time:Ljava/lang/Long;

    iput-wide p9, p0, Lcom/perm/kate/session/Session$177;->val$count:J

    iput-wide p11, p0, Lcom/perm/kate/session/Session$177;->val$latitude:D

    iput-wide p13, p0, Lcom/perm/kate/session/Session$177;->val$longitude:D

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1917
    iget-object v0, p0, Lcom/perm/kate/session/Session$177;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$177;->val$q:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$177;->val$from:Ljava/lang/String;

    iget v4, p0, Lcom/perm/kate/session/Session$177;->val$extended:I

    iget-object v5, p0, Lcom/perm/kate/session/Session$177;->val$start_time:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$177;->val$end_time:Ljava/lang/Long;

    iget-wide v7, p0, Lcom/perm/kate/session/Session$177;->val$count:J

    iget-wide v9, p0, Lcom/perm/kate/session/Session$177;->val$latitude:D

    iget-wide v11, p0, Lcom/perm/kate/session/Session$177;->val$longitude:D

    iget-object v13, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v14, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v14}, Lcom/perm/kate/api/Api;->searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
