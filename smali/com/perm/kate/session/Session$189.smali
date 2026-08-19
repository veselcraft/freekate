.class Lcom/perm/kate/session/Session$189;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$extended:Z

.field final synthetic val$filters:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2023
    iput-object p1, p0, Lcom/perm/kate/session/Session$189;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$189;->val$filters:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$189;->val$type:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/perm/kate/session/Session$189;->val$extended:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2026
    iget-object v0, p0, Lcom/perm/kate/session/Session$189;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$189;->val$filters:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$189;->val$type:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/perm/kate/session/Session$189;->val$extended:Z

    iget-object v5, p0, Lcom/perm/kate/session/Command;->captcha_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Command;->captcha_sid:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getProducts(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
