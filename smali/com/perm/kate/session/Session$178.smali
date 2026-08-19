.class Lcom/perm/kate/session/Session$178;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:J

.field final synthetic val$offset:J

.field final synthetic val$owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V
    .locals 0

    .line 1923
    iput-object p1, p0, Lcom/perm/kate/session/Session$178;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$178;->val$owner_id:Ljava/lang/String;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$178;->val$count:J

    iput-wide p7, p0, Lcom/perm/kate/session/Session$178;->val$offset:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1926
    iget-object v0, p0, Lcom/perm/kate/session/Session$178;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$178;->val$owner_id:Ljava/lang/String;

    iget-wide v3, p0, Lcom/perm/kate/session/Session$178;->val$count:J

    iget-wide v5, p0, Lcom/perm/kate/session/Session$178;->val$offset:J

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->newsfeedGetMentions(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
