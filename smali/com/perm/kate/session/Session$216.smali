.class Lcom/perm/kate/session/Session$216;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$group_id:J

.field final synthetic val$gs:Lcom/perm/kate/api/GroupSettings;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLcom/perm/kate/api/GroupSettings;)V
    .locals 0

    .line 2277
    iput-object p1, p0, Lcom/perm/kate/session/Session$216;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$216;->val$group_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$216;->val$gs:Lcom/perm/kate/api/GroupSettings;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2280
    iget-object v0, p0, Lcom/perm/kate/session/Session$216;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$216;->val$group_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$216;->val$gs:Lcom/perm/kate/api/GroupSettings;

    iget-object v5, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->editGroupSettings(JLcom/perm/kate/api/GroupSettings;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
