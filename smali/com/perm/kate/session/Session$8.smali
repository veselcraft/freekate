.class Lcom/perm/kate/session/Session$8;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$domains:Ljava/util/ArrayList;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$name_case:Ljava/lang/String;

.field final synthetic val$uids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/perm/kate/session/Session$8;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$8;->val$uids:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/perm/kate/session/Session$8;->val$domains:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/perm/kate/session/Session$8;->val$fields:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$8;->val$name_case:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 329
    iget-object v0, p0, Lcom/perm/kate/session/Session$8;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$8;->val$uids:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/session/Session$8;->val$domains:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/session/Session$8;->val$fields:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/session/Session$8;->val$name_case:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->getProfiles(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
