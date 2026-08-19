.class Lcom/perm/kate/session/Session$276;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$all_posts:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    .line 2821
    iput-object p1, p0, Lcom/perm/kate/session/Session$276;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$276;->val$ad_data:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$276;->val$all_posts:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2824
    iget-object v0, p0, Lcom/perm/kate/session/Session$276;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$276;->val$ad_data:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/perm/kate/session/Session$276;->val$all_posts:Z

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->ignoreAd(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
