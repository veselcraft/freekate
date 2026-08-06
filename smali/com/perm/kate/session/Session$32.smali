.class Lcom/perm/kate/session/Session$32;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/perm/kate/session/Session$32;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$32;->val$start_time:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$32;->val$count:J

    iput-object p7, p0, Lcom/perm/kate/session/Session$32;->val$end_time:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$32;->val$from:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$32;->val$source_ids:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/session/Session$32;->val$filters:Ljava/lang/String;

    iput-object p11, p0, Lcom/perm/kate/session/Session$32;->val$max_photos:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/perm/kate/session/Session$32;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$32;->val$start_time:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$32;->val$count:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$32;->val$end_time:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$32;->val$from:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$32;->val$source_ids:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$32;->val$filters:Ljava/lang/String;

    iget-object v8, p0, Lcom/perm/kate/session/Session$32;->val$max_photos:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/perm/kate/session/Session$32;->captcha_key:Ljava/lang/String;

    iget-object v10, p0, Lcom/perm/kate/session/Session$32;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/api/Api;->getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$32;->res:Ljava/lang/Object;

    .line 467
    return-void
.end method
